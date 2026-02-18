local ESX = nil
local currentGarage = nil
local previewVehicle = nil
local isNUIOpen = false
local previewCam = nil
local oldPlayerCoords = nil
local spawnedNPCs = {}
local helpTextShown = false

Citizen.CreateThread(function()
    while ESX == nil do
        if exports['es_extended'] and exports['es_extended'].getSharedObject then
            ESX = exports['es_extended']:getSharedObject()
        else
            TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        end
        Citizen.Wait(10)
    end
end)

local previewCoords = vector4(-1655.2598, -3148.2551, 13.9920, 330.6868)
local camCoords = vector3(-1650.6113, -3139.9429, 15.9922) 
local camRotation = vector3(-14.0, 0.0, 150.3)

function ManageCamera(status)
    if status then
        if not previewCam then
            previewCam = CreateCam("DEFAULT_SCRIPTED_CAMERA", true)
            SetCamCoord(previewCam, camCoords.x, camCoords.y, camCoords.z)
            SetCamRot(previewCam, camRotation.x, camRotation.y, camRotation.z, 2)
            SetCamFov(previewCam, 40.0)
            SetCamActive(previewCam, true)
            RenderScriptCams(true, false, 0, true, true)
        end
    else
        RenderScriptCams(false, false, 0, true, true)
        if previewCam then
            DestroyCam(previewCam, false)
            previewCam = nil
        end
    end
end

-- Blips mit Config-Namen
Citizen.CreateThread(function()
    local lang = Config.Languages[Config.Language]
    for k, v in pairs(Config.Garage) do
        if v.showBlip then
            local blip = AddBlipForCoord(v.Location)
            SetBlipSprite(blip, v.blip.type)
            SetBlipScale(blip, v.blip.size)
            SetBlipColour(blip, v.blip.color)
            SetBlipAsShortRange(blip, true)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString(lang['blip_garage'])
            EndTextCommandSetBlipName(blip)
        end
    end
    for k, v in pairs(Config.CarPounds) do
        if v.showBlip then
            local blip = AddBlipForCoord(v.Location)
            SetBlipSprite(blip, v.blip.type)
            SetBlipScale(blip, v.blip.size)
            SetBlipColour(blip, v.blip.color)
            SetBlipAsShortRange(blip, true)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString(lang['blip_impound'])
            EndTextCommandSetBlipName(blip)
        end
    end
end)

function openGarageMenu(id, garageType)
    local playerPed = PlayerPedId()
    oldPlayerCoords = GetEntityCoords(playerPed)
    currentGarage = id
    local gData = (garageType == "garage") and Config.Garage[id] or Config.CarPounds[id]
    local cbName = (garageType == "garage") and 'salkin_garage:getVehicles' or 'salkin_garage:getImpoundedVehicles'

    ESX.TriggerServerCallback(cbName, function(vehicles)
        local displayVehicles = {}
        if vehicles then
            for i=1, #vehicles, 1 do
                local props = json.decode(vehicles[i].vehicle)
                local modelName = GetDisplayNameFromVehicleModel(props.model)
                local labelName = GetLabelText(modelName)
                if labelName == "NULL" then labelName = modelName end
                table.insert(displayVehicles, { plate = vehicles[i].plate, vehicleProps = props, name = labelName })
            end
        end

        DoScreenFadeOut(400)
        while not IsScreenFadedOut() do Wait(10) end
        
        DisplayRadar(false) -- HUD/Radar ausblenden
        SetEntityCoords(playerPed, previewCoords.x, previewCoords.y, previewCoords.z)
        RequestCollisionAtCoord(previewCoords.x, previewCoords.y, previewCoords.z)
        Wait(500)
        SetEntityVisible(playerPed, false, false)
        FreezeEntityPosition(playerPed, true)
        ManageCamera(true)
        
        isNUIOpen = true
        SetNuiFocus(true, true)
        SetNuiFocusKeepInput(true)
        
        SendNUIMessage({ 
            type = "open", 
            vehicles = displayVehicles,
            isImpound = (garageType == "impound"),
            price = gData.price or 0,
            translations = Config.Languages[Config.Language]
        })
        DoScreenFadeIn(400)
    end, gData.type)
end

function closeMenu()
    local playerPed = PlayerPedId()
    isNUIOpen = false
    SetNuiFocus(false, false)
    SetNuiFocusKeepInput(false)
    DoScreenFadeOut(400)
    while not IsScreenFadedOut() do Wait(10) end
    if previewVehicle then DeleteEntity(previewVehicle) end
    ManageCamera(false)
    DisplayRadar(true) -- HUD/Radar einblenden
    SetEntityVisible(playerPed, true, true)
    FreezeEntityPosition(playerPed, false)
    SetEntityCoords(playerPed, oldPlayerCoords.x, oldPlayerCoords.y, oldPlayerCoords.z)
    Wait(200)
    DoScreenFadeIn(400)
end

RegisterNUICallback('close', function() closeMenu() end)

RegisterNUICallback('previewVehicle', function(data, cb)
    if previewVehicle then DeleteEntity(previewVehicle) end
    local props = data.props
    RequestModel(props.model)
    while not HasModelLoaded(props.model) do Wait(10) end
    previewVehicle = CreateVehicle(props.model, previewCoords.x, previewCoords.y, previewCoords.z, previewCoords.w, false, false)
    SetEntityCollision(previewVehicle, false, false)
    FreezeEntityPosition(previewVehicle, true)
    ESX.Game.SetVehicleProperties(previewVehicle, props)
    SetVehicleDirtLevel(previewVehicle, 0.0)
    cb({})
end)

RegisterNUICallback('parkOut', function(data)
    local lang = Config.Languages[Config.Language]
    local vehicleData = data.vehicle
    local spawnPoints = Config.Garage[currentGarage] and Config.Garage[currentGarage].VehicleSpawns or Config.CarPounds[currentGarage].VehicleSpawns
    local price = Config.CarPounds[currentGarage] and Config.CarPounds[currentGarage].price or 0

    closeMenu()
    ESX.ShowNotification(lang['progress_out'])
    Wait(2000)

    ESX.TriggerServerCallback('salkin_garage:parkOut', function(success)
        if success then
            local spawnPoint = spawnPoints[1]
            ESX.Game.SpawnVehicle(vehicleData.vehicleProps.model, vector3(spawnPoint.coords.x, spawnPoint.coords.y, spawnPoint.coords.z), spawnPoint.coords.w, function(veh)
                ESX.Game.SetVehicleProperties(veh, vehicleData.vehicleProps)
                TaskWarpPedIntoVehicle(PlayerPedId(), veh, -1)
                SetVehicleEngineOn(veh, true, true, false)
                ESX.ShowNotification(lang['success_out'])
            end)
        else
            ESX.ShowNotification(lang['enough_money'])
        end
    end, vehicleData.plate, price)
end)

Citizen.CreateThread(function()
    local lang = Config.Languages[Config.Language]
    while true do
        local sleep = 500
        local playerPed = PlayerPedId()
        local coords = GetEntityCoords(playerPed)
        local inVehicle = IsPedInAnyVehicle(playerPed, false)
        local nearSomething = false

        for k, v in pairs(Config.Garage) do
            local dist = #(coords - v.Location)
            -- NPC Spawning
            if v.npc and dist < 50.0 and not spawnedNPCs[k] then
                local model = GetHashKey(v.NpcModel)
                RequestModel(model)
                while not HasModelLoaded(model) do Wait(10) end
                local npc = CreatePed(4, model, v.Location.x, v.Location.y, v.Location.z, v.LocationHead, false, false)
                SetBlockingOfNonTemporaryEvents(npc, true)
                FreezeEntityPosition(npc, true)
                SetEntityInvincible(npc, true)
                spawnedNPCs[k] = npc
            elseif spawnedNPCs[k] and dist > 50.0 then
                DeleteEntity(spawnedNPCs[k])
                spawnedNPCs[k] = nil
            end

            if dist < 2.5 and not inVehicle then
                sleep = 0
                nearSomething = true
                if not helpTextShown then
                    ESX.ShowHelpNotification(lang['open'])
                    helpTextShown = true
                end
                if IsControlJustReleased(0, 38) then openGarageMenu(k, "garage") end
            end

            if v.ParkInLocation and inVehicle then
                local pDist = #(coords - v.ParkInLocation)
                if pDist < 10.0 then
                    sleep = 0
                    nearSomething = true
                    DrawMarker(1, v.ParkInLocation.x, v.ParkInLocation.y, v.ParkInLocation.z + 0.5, 0,0,0,0,0,0, 3.0, 3.0, 1.0, 255, 0, 0, 100, false, false, 2, false)
                    if pDist < 3.0 then
                        if not helpTextShown then
                            ESX.ShowHelpNotification(lang['press_to_delete'])
                            helpTextShown = true
                        end
                        if IsControlJustReleased(0, 38) then
                            local vehicle = GetVehiclePedIsIn(playerPed, false)
                            local props = ESX.Game.GetVehicleProperties(vehicle)
                            ESX.TriggerServerCallback('salkin_garage:checkOwnership', function(owner)
                                if owner then
                                    ESX.ShowNotification(lang['progress_in'])
                                    Wait(1500)
                                    TriggerServerEvent('salkin_garage:updateStoredState', props.plate, 1, props)
                                    ESX.Game.DeleteVehicle(vehicle)
                                    ESX.ShowNotification(lang['success'])
                                else
                                    ESX.ShowNotification(lang['notyourcar'])
                                end
                            end, props.plate)
                        end
                    end
                end
            end
        end

        for k, v in pairs(Config.CarPounds) do
            local dist = #(coords - v.Location)
            local id = "impound_" .. k

            if v.npc and dist < 50.0 and not spawnedNPCs[id] then
                local model = GetHashKey(v.NpcModel)
                RequestModel(model)
                while not HasModelLoaded(model) do Wait(10) end
                local npc = CreatePed(4, model, v.Location.x, v.Location.y, v.Location.z, v.LocationHead, false, false)
                SetBlockingOfNonTemporaryEvents(npc, true)
                FreezeEntityPosition(npc, true)
                SetEntityInvincible(npc, true)
                spawnedNPCs[id] = npc
            elseif spawnedNPCs[id] and dist > 50.0 then
                DeleteEntity(spawnedNPCs[id])
                spawnedNPCs[id] = nil
            end

            if dist < 2.5 then
                sleep = 0
                nearSomething = true
                if not helpTextShown then ESX.ShowHelpNotification(lang['openimpound']) helpTextShown = true end
                if IsControlJustReleased(0, 38) then openGarageMenu(k, "impound") end
            end
        end

        if not nearSomething and helpTextShown then
            helpTextShown = false
        end
        Wait(sleep)
    end
end)

Citizen.CreateThread(function()
    while true do
        if isNUIOpen and previewVehicle then
            DisableControlAction(0, 30, true) DisableControlAction(0, 31, true)
            DisableControlAction(0, 32, true) DisableControlAction(0, 33, true)
            local h = GetEntityHeading(previewVehicle)
            if IsDisabledControlPressed(0, 34) then SetEntityHeading(previewVehicle, h + 1.2)
            elseif IsDisabledControlPressed(0, 35) then SetEntityHeading(previewVehicle, h - 1.2) end
            Wait(0)
        else Wait(500) end
    end
end)