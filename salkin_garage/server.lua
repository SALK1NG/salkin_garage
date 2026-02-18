local ESX = exports["es_extended"]:getSharedObject()

-- Besitzer-Check
ESX.RegisterServerCallback('salkin_garage:checkOwnership', function(source, cb, plate)
    local xPlayer = ESX.GetPlayerFromId(source)
    if not xPlayer then return cb(false) end
    
    MySQL.Async.fetchAll('SELECT owner FROM owned_vehicles WHERE owner = @owner AND plate = @plate', {
        ['@owner'] = xPlayer.identifier,
        ['@plate'] = plate
    }, function(result)
        cb(result[1] ~= nil)
    end)
end)

-- Fahrzeuge abrufen
ESX.RegisterServerCallback('salkin_garage:getVehicles', function(source, cb, type)
    local xPlayer = ESX.GetPlayerFromId(source)
    MySQL.Async.fetchAll('SELECT * FROM owned_vehicles WHERE owner = @owner AND type = @type AND stored = 1', {
        ['@owner'] = xPlayer.identifier,
        ['@type'] = type
    }, function(results) cb(results) end)
end)

-- Callback für Abschlepphof (stored = 0)
ESX.RegisterServerCallback('salkin_garage:getImpoundedVehicles', function(source, cb, type)
    local xPlayer = ESX.GetPlayerFromId(source)
    MySQL.Async.fetchAll('SELECT * FROM owned_vehicles WHERE owner = @owner AND type = @type AND stored = 0', {
        ['@owner'] = xPlayer.identifier,
        ['@type'] = type
    }, function(results) cb(results) end)
end)

-- Ausparken
ESX.RegisterServerCallback('salkin_garage:parkOut', function(source, cb, plate, price)
    local xPlayer = ESX.GetPlayerFromId(source)
    if not xPlayer then return cb(false) end

    if price > 0 then
        if xPlayer.getAccount('bank').money >= price then
            xPlayer.removeAccountMoney('bank', price)
        elseif xPlayer.getMoney() >= price then
            xPlayer.removeMoney(price)
        else
            cb(false)
            return
        end
    end
    
    MySQL.Async.execute('UPDATE owned_vehicles SET stored = 0 WHERE plate = @plate', {['@plate'] = plate}, function(rows)
        cb(rows > 0)
    end)
end)

RegisterServerEvent('salkin_garage:updateStoredState')
AddEventHandler('salkin_garage:updateStoredState', function(plate, state, vehicleProps)
    MySQL.Async.execute('UPDATE owned_vehicles SET stored = @state, vehicle = @vehicle WHERE plate = @plate', {
        ['@state'] = state,
        ['@vehicle'] = json.encode(vehicleProps),
        ['@plate'] = plate
    })
end)