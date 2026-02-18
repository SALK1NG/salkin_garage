
Config = {}
Config.Language = 'de'

Config.GarageAfterResart = false -- NEW

Config.Languages = {
    ['de'] = {
        -- UI Texte
        ['menu_badge'] = 'MENÜ',
        ['garage_title'] = 'GARAGE',
        ['impound_title'] = 'ABSCHLEPPHOF',
        ['search_placeholder'] = 'SUCHEN',
        ['close_btn'] = 'SCHLIESSEN',
        ['parkout_btn'] = 'AUSPARKEN',
        ['parkout_impound_btn'] = '$ AUSPARKEN', -- Preis wird davor gesetzt
        ['rotate_help'] = 'NUTZE A UND D UM DAS FAHRZEUG ZU DREHEN',
        
        -- Blips
        ['blip_garage'] = 'Garage',
        ['blip_impound'] = 'Abschlepphof',

        -- HUD Help Texte
        ['open'] = 'E Garage öffnen',
        ['openimpound'] = 'E Abschlepphof öffnen',
        ['press_to_delete'] = 'E Fahrzeug einparken',

        -- Progress Bar Texte
        ['progress_out'] = 'Fahrzeug wird bereitgestellt...',
        ['progress_in'] = 'Fahrzeug wird eingeparkt...',

        -- Benachrichtigungen
        ['enough_money'] = 'Du hast nicht genug Geld!',
        ['notyourcar'] = 'Das ist nicht dein Fahrzeug!',
        ['success'] = 'Erfolgreich!',
        ['success_out'] = 'Gute Fahrt!',
        ['no_vehicles'] = 'Keine Fahrzeuge gefunden',
    }
}

Config.ParkInMarkerOnlyInVehicle = true -- Show the Park in Marker only if you are in a Vehicle.

-- Save complete vehicle damage model
Config.SaveHealth = true 

-- types 
--     car(cars, bike, bicycle)
--     aircraft(helicopter, planes)
--     boat(boats)

Config.CarPounds = {
    ['Abschlepper_LosSantos1'] = {
        ['Label'] = "Abschlepphof LST",
        ['isJob'] = false,  --- true or false
        ['JobName'] = "police",  --- Job name something like police or mechanic
        ['showBlip'] = true,  --- true or false
        ['npc'] = true,
        ['NpcModel'] = "ig_benny",
        ['blip'] = {
            type = 357,
            color = 0,
            size = 0.7
        },
        ['type'] = "car",
        ['price'] = 5000,
        ['Location'] = vector3(862.2742, -2336.2971, 29.3419),        
        ['LocationHead'] = 139.4356,
        ['VehicleSpawns'] = {
            {coords = vector4(856.2814, -2333.2988, 30.3459, 197.2772), radius = 1},
        },
    },
    ['Abschlepper_LosSantos3'] = {
        ['Label'] = "Abschlepphof Stadt",
        ['isJob'] = false,  --- true or false
        ['JobName'] = "police",  --- Job name something like police or mechanic
        ['showBlip'] = true,  --- true or false
        ['npc'] = true,
        ['NpcModel'] = "ig_benny",
        ['blip'] = {
            type = 357,
            color = 0,
            size = 0.7
        },
        ['type'] = "car",
        ['price'] = 5000,
        ['Location'] = vector3(408.9284, -1622.8062, 28.2919),        
        ['LocationHead'] = 226.2243,
        ['VehicleSpawns'] = {
            {coords = vector4(402.8058, -1641.7893, 29.2920, 232.0140), radius = 1},
        },
    },
    ['Abschlepper_sandy'] = {
        ['Label'] = "Abschlepphof Stadt",
        ['isJob'] = false,  --- true or false
        ['JobName'] = "police",  --- Job name something like police or mechanic
        ['showBlip'] = true,  --- true or false
        ['npc'] = true,
        ['NpcModel'] = "ig_benny",
        ['blip'] = {
            type = 357,
            color = 0,
            size = 0.7
        },
        ['type'] = "car",
        ['price'] = 5000,
        ['Location'] = vector3(1569.2325, 3521.1519, 34.9419),        
        ['LocationHead'] = 28.4503,
        ['VehicleSpawns'] = {
            {coords = vector4(1571.9602, 3527.7170, 35.6972, 199.7808), radius = 1},
        },
    },
    ['Abschlepper_Lcn'] = {
        ['Label'] = "Lcn",
        ['isJob'] = true,  --- true or false
        ['JobName'] = "lcn",  --- Job name something like police or mechanic
        ['showBlip'] = false,  --- true or false
        ['npc'] = true,
        ['NpcModel'] = "ig_benny",
        ['blip'] = {
            type = 357,
            color = 0,
            size = 0.7
        },
        ['type'] = "car",
        ['price'] = 5000,
        ['Location'] = vector3(-1927.5686, 2039.2234, 139.8327),        
        ['LocationHead'] = 255.0367,
        ['VehicleSpawns'] = {
            {coords = vector4(-1924.5762, 2036.8988, 140.7345, 262.3802), radius = 1},
        },
    },
    ['Abschlepper_Crips'] = {
        ['Label'] = "crips",
        ['isJob'] = true,  --- true or false
        ['JobName'] = "crips",  --- Job name something like police or mechanic
        ['showBlip'] = false,  --- true or false
        ['npc'] = true,
        ['NpcModel'] = "ig_benny",
        ['blip'] = {
            type = 357,
            color = 0,
            size = 0.7
        },
        ['type'] = "car",
        ['price'] = 5000,
        ['Location'] = vector3(410.0766, -1810.0337, 27.8940),        
        ['LocationHead'] = 42.1194,
        ['VehicleSpawns'] = {
            {coords = vector4(411.7657, -1804.7004, 28.9444, 119.2439), radius = 1},
        },
    },
    ['Abschlepper_108'] = {
        ['Label'] = "108",
        ['isJob'] = true,  --- true or false
        ['JobName'] = "108",  --- Job name something like police or mechanic
        ['showBlip'] = false,  --- true or false
        ['npc'] = true,
        ['NpcModel'] = "ig_benny",
        ['blip'] = {
            type = 357,
            color = 0,
            size = 0.7
        },
        ['type'] = "car",
        ['price'] = 5000,
        ['Location'] = vector3(1408.1752, 1122.8896, 113.8390),        
        ['LocationHead'] = 181.9390,
        ['VehicleSpawns'] = {
            {coords = vector4(451.3280, -975.9576, 25.6998, 87.8069), radius = 1},
        },
    },
    ['Abschlepper_bloods'] = {
        ['Label'] = "bloods",
        ['isJob'] = true,  --- true or false
        ['JobName'] = "bloods",  --- Job name something like police or mechanic
        ['showBlip'] = false,  --- true or false
        ['npc'] = true,
        ['NpcModel'] = "ig_benny",
        ['blip'] = {
            type = 357,
            color = 0,
            size = 0.7
        },
        ['type'] = "car",
        ['price'] = 5000,
        ['Location'] = vector3(-1553.0175, -397.1221, 40.9813),        
        ['LocationHead'] = 55.8439,
        ['VehicleSpawns'] = {
            {coords = vector4(-1545.1372, -399.4603, 41.9877, 226.5231), radius = 1},
        },
    },
    ['Abschlepper_peaky'] = {
        ['Label'] = "peaky",
        ['isJob'] = true,  --- true or false
        ['JobName'] = "peaky",  --- Job name something like police or mechanic
        ['showBlip'] = false,  --- true or false
        ['npc'] = true,
        ['NpcModel'] = "ig_benny",
        ['blip'] = {
            type = 357,
            color = 0,
            size = 0.7
        },
        ['type'] = "car",
        ['price'] = 5000,
        ['Location'] = vector3(-3220.7271, 826.9182, 7.9271),        
        ['LocationHead'] = 55.8439,
        ['VehicleSpawns'] = {
            {coords = vector4(-3216.1057, 834.7125, 8.9271, 230.7350), radius = 1},
        },
    },
    ['Abschlepper_Santos'] = {
        ['Label'] = "Santos",
        ['isJob'] = true,  --- true or false
        ['JobName'] = "santos",  --- Job name something like police or mechanic
        ['showBlip'] = false,  --- true or false
        ['npc'] = true,
        ['NpcModel'] = "ig_benny",
        ['blip'] = {
            type = 357,
            color = 0,
            size = 0.7
        },
        ['type'] = "car",
        ['price'] = 5000,
        ['Location'] = vector3(99.3914, -1966.2367, 19.8444),        
        ['LocationHead'] = 285.2635,
        ['VehicleSpawns'] = {
            {coords = vector4(98.0339, -1949.1195, 20.6408, 33.9932), radius = 2},
            {coords = vector4(109.7309, -1930.8934, 20.6763, 71.7819), radius = 2},
            {coords = vector4(95.0979, -1925.8717, 20.6714, 62.4930), radius = 2},
            {coords = vector4(89.6539, -1934.5408, 20.6556, 41.0454), radius = 2},
        },
    },
    ['Abschlepper_Colective'] = {
        ['Label'] = "Colective",
        ['isJob'] = true,  --- true or false
        ['JobName'] = "colective",  --- Job name something like police or mechanic
        ['showBlip'] = false,  --- true or false
        ['npc'] = true,
        ['NpcModel'] = "ig_benny",
        ['blip'] = {
            type = 357,
            color = 0,
            size = 0.7
        },
        ['type'] = "car",
        ['price'] = 5000,
        ['Location'] = vector3(-1097.9139, 353.8030, 67.5023),        
        ['LocationHead'] = 352.7825,
        ['VehicleSpawns'] = {
            {coords = vector4(-1101.0339, 358.4209, 68.4851, 2.3199), radius = 2},
            {coords = vector4(-1096.2474, 360.3858, 68.5449, 359.4939), radius = 2},
        },
    },
    ['Abschlepper_Cayo'] = {
        ['Label'] = "Cayo",
        ['isJob'] = false,  --- true or false
        ['JobName'] = "fbi",  --- Job name something like police or mechanic
        ['showBlip'] = true,  --- true or false
        ['npc'] = true,
        ['NpcModel'] = "CSB_IslDJ_00",
        ['blip'] = {
            type = 357,
            color = 0,
            size = 0.7
        },
        ['type'] = "car",
        ['price'] = 4000,
        ['Location'] = vector3(4466.0522, -4456.4897, 3.0378),        
        ['LocationHead'] = 218.2125,
        ['VehicleSpawns'] = {
            {coords = vector4(4471.4829, -4465.7720, 3.2436, 203.8036), radius = 2},
            {coords = vector4(4478.3979, -4462.1450, 3.2449, 197.9191), radius = 2},
        },
    },
    ['Abschlepper_Cayo_Plane'] = {
        ['Label'] = "Cayo Plane",
        ['isJob'] = false,  --- true or false
        ['JobName'] = "fbi",  --- Job name something like police or mechanic
        ['showBlip'] = true,  --- true or false
        ['npc'] = true,
        ['NpcModel'] = "S_M_M_Pilot_01",
        ['blip'] = {
            type = 357,
            color = 0,
            size = 0.7
        },
        ['type'] = "aircraft",
        ['price'] = 4000,
        ['Location'] = vector3(4413.2817, -4498.1475, 3.2097),        
        ['LocationHead'] = 190.6980,
        ['VehicleSpawns'] = {
            {coords = vector4(4400.1235, -4515.6479, 4.1988, 99.8964), radius = 2},
        },
    },
    ['Abschlepper_Ambulance'] = {
        ['Label'] = "Ambulance",
        ['isJob'] = true,  --- true or false
        ['JobName'] = "ambulance",  --- Job name something like police or mechanic
        ['showBlip'] = false,  --- true or false
        ['npc'] = true,
        ['NpcModel'] = "ig_benny",
        ['blip'] = {
            type = 357,
            color = 0,
            size = 0.7
        },
        ['type'] = "car",
        ['price'] = 5000,
        ['Location'] = vector3(340.5707, -576.2092, 27.7969),        
        ['LocationHead'] = 66.1161,
        ['VehicleSpawns'] = {
            {coords = vector4(316.1930, -578.1481, 28.7969, 247.0882), radius = 2},
            {coords = vector4(317.2853, -573.7570, 28.7969, 247.9677), radius = 2},
            {coords = vector4(319.0149, -569.5129, 28.7969, 243.5294), radius = 2},
            {coords = vector4(321.1203, -565.2028, 28.7969, 238.7160), radius = 2},
        },
    },
    ['Abschlepper_Fbi'] = {
        ['Label'] = "Fbi",
        ['isJob'] = true,  --- true or false
        ['JobName'] = "fbi",  --- Job name something like police or mechanic
        ['showBlip'] = false,  --- true or false
        ['npc'] = true,
        ['NpcModel'] = "S_M_M_FIBOffice_01",
        ['blip'] = {
            type = 357,
            color = 0,
            size = 0.7
        },
        ['type'] = "car",
        ['price'] = 400,
        ['Location'] = vector3(145.2710, -741.9392, 32.1333),        
        ['LocationHead'] = 2.4072,
        ['VehicleSpawns'] = {
            {coords = vector4(137.4575, -743.1710, 32.1333, 349.9304), radius = 2},
            {coords = vector4(141.2963, -743.6342, 32.1332, 349.8334), radius = 2},
        },
    }
}

Config.Garage = {
    ['LST'] = {
        ['Label'] = 'LST Garage', -- Blip name
        ['isJob'] = false,  --- true or false
        ['JobName'] = "fbi",  --- Job name something like police or mechanic
        ['showBlip'] = true,  --- true or false
        ['npc'] = true,
        ['NpcModel'] = "S_M_M_Autoshop_03",
        ['blip'] = {
            type = 50,
            color = 0,
            size = 0.7
        },
        ['type'] = "car",
        ['Location'] = vector3(849.1495, -2359.0369, 29.3437), -- Blip and Marker Location
        ['LocationHead'] = 24.5091,    
		['ParkInLocation'] = vector3(844.0376, -2357.5818, 29.3356), -- ParkIn Location
		['VehicleSpawns'] = {--Spawn location when vehicle is parked out
            {coords = vector4(850.7715, -2353.8428, 30.3371, 350.6084), radius = 2},
        },
		['Marker'] = {
            Distance = 15,
            Delete = {type = 1, r = 255, g = 0, b = 0, x = 5.0, y = 5.0, z = 1.0} -- Red Color / Big Size Circle.
        },
    },
    ['Cayo'] = {
        ['Label'] = 'Cayo', -- Blip name
        ['isJob'] = false,  --- true or false
        ['JobName'] = "fbi",  --- Job name something like police or mechanic
        ['showBlip'] = true,  --- true or false
        ['npc'] = true,
        ['NpcModel'] = "CSB_IslDJ_00",
        ['blip'] = {
            type = 50,
            color = 0,
            size = 0.7
        },
        ['type'] = "car",
        ['Location'] = vector3(4501.7700, -4457.7769, 3.2110), -- Blip and Marker Location
        ['LocationHead'] = 119.4754,    
		['ParkInLocation'] = vector3(4487.2178, -4452.5249, 3.1627), -- ParkIn Location
		['VehicleSpawns'] = {--Spawn location when vehicle is parked out
            {coords = vector4(4496.6685, -4466.6348, 3.2126, 248.1119), radius = 2},
        },
		['Marker'] = {
            Distance = 15,
            Delete = {type = 1, r = 255, g = 0, b = 0, x = 5.0, y = 5.0, z = 1.0} -- Red Color / Big Size Circle.
        },
    },
    ['Cayo_Plane'] = {
        ['Label'] = 'Cayo Plane', -- Blip name
        ['isJob'] = false,  --- true or false
        ['JobName'] = "fbi",  --- Job name something like police or mechanic
        ['showBlip'] = true,  --- true or false
        ['npc'] = true,
        ['NpcModel'] = "S_M_M_Pilot_01",
        ['blip'] = {
            type = 50,
            color = 0,
            size = 0.7
        },
        ['type'] = "aircraft",
        ['Location'] = vector3(4454.3750, -4476.6968, 3.3009), -- Blip and Marker Location
        ['LocationHead'] = 206.2257,    
		['ParkInLocation'] = vector3(4440.9033, -4489.4312, 3.2268), -- ParkIn Location
		['VehicleSpawns'] = {--Spawn location when vehicle is parked out
            {coords = vector4(4452.7441, -4498.2886, 3.1948, 109.5153), radius = 2},
        },
		['Marker'] = {
            Distance = 15,
            Delete = {type = 1, r = 255, g = 0, b = 0, x = 5.0, y = 5.0, z = 1.0} -- Red Color / Big Size Circle.
        },
    },
    ['Fbi'] = {
        ['Label'] = 'Fbi', -- Blip name
        ['isJob'] = true,  --- true or false
        ['JobName'] = "fbi",  --- Job name something like police or mechanic
        ['showBlip'] = false,  --- true or false
        ['npc'] = true,
        ['NpcModel'] = "U_M_M_FIBArchitect",
        ['blip'] = {
            type = 50,
            color = 0,
            size = 0.7
        },
        ['type'] = "car",
        ['Location'] = vector3(150.7072, -724.3999, 32.1333), -- Blip and Marker Location
        ['LocationHead'] = 69.1402,    
		['ParkInLocation'] = vector3(151.6286, -729.7411, 32.1333), -- ParkIn Location
		['VehicleSpawns'] = {--Spawn location when vehicle is parked out
            {coords = vector4(144.4731, -725.9144, 32.1333, 159.3664), radius = 2},
            {coords = vector4(148.0557, -728.2208, 32.1333, 153.0419), radius = 2},
        },
		['Marker'] = {
            Distance = 15,
            Delete = {type = 1, r = 255, g = 0, b = 0, x = 5.0, y = 5.0, z = 1.0} -- Red Color / Big Size Circle.
        },
    },
    ['Colective'] = {
        ['Label'] = 'Colective', -- Blip name
        ['isJob'] = true,  --- true or false
        ['JobName'] = "colective",  --- Job name something like police or mechanic
        ['showBlip'] = false,  --- true or false
        ['npc'] = true,
        ['NpcModel'] = "ig_benny",
        ['blip'] = {
            type = 50,
            color = 0,
            size = 0.7
        },
        ['type'] = "car",
        ['Location'] = vector3(-1094.8604, 353.9401, 67.5070), -- Blip and Marker Location
        ['LocationHead'] = 1.1538,    
		['ParkInLocation'] = vector3(-1098.5997, 361.8330, 67.5782), -- ParkIn Location
		['VehicleSpawns'] = {--Spawn location when vehicle is parked out
            {coords = vector4(-1101.0339, 358.4209, 68.4851, 2.3199), radius = 2},
            {coords = vector4(-1096.2474, 360.3858, 68.5449, 359.4939), radius = 2},
        },
		['Marker'] = {
            Distance = 15,
            Delete = {type = 1, r = 255, g = 0, b = 0, x = 5.0, y = 5.0, z = 1.0} -- Red Color / Big Size Circle.
        },
    },
    ['Santos'] = {
        ['Label'] = 'Santos', -- Blip name
        ['isJob'] = true,  --- true or false
        ['JobName'] = "santos",  --- Job name something like police or mechanic
        ['showBlip'] = false,  --- true or false
        ['npc'] = true,
        ['NpcModel'] = "ig_benny",
        ['blip'] = {
            type = 50,
            color = 0,
            size = 0.7
        },
        ['type'] = "car",
        ['Location'] = vector3(116.4478, -1953.6936, 19.7513), -- Blip and Marker Location
        ['LocationHead'] = 43.4841,    
		['ParkInLocation'] = vector3(114.1182, -1942.5228, 19.7183), -- ParkIn Location
		['VehicleSpawns'] = {--Spawn location when vehicle is parked out
            {coords = vector4(98.0339, -1949.1195, 20.6408, 33.9932), radius = 2},
            {coords = vector4(109.7309, -1930.8934, 20.6763, 71.7819), radius = 2},
            {coords = vector4(95.0979, -1925.8717, 20.6714, 62.4930), radius = 2},
            {coords = vector4(89.6539, -1934.5408, 20.6556, 41.0454), radius = 2},
        },
		['Marker'] = {
            Distance = 15,
            Delete = {type = 1, r = 255, g = 0, b = 0, x = 5.0, y = 5.0, z = 1.0} -- Red Color / Big Size Circle.
        },
    },
    ['Ambulance'] = {
        ['Label'] = 'Ambulance', -- Blip name
        ['isJob'] = true,  --- true or false
        ['JobName'] = "ambulance",  --- Job name something like police or mechanic
        ['showBlip'] = false,  --- true or false
        ['npc'] = true,
        ['NpcModel'] = "ig_benny",
        ['blip'] = {
            type = 50,
            color = 0,
            size = 0.7
        },
        ['type'] = "car",
        ['Location'] = vector3(340.7896, -578.4158, 27.7968), -- Blip and Marker Location
        ['LocationHead'] = 139.5314,    
		['ParkInLocation'] = vector3(331.3474, -583.8329, 27.7969), -- ParkIn Location
		['VehicleSpawns'] = {--Spawn location when vehicle is parked out
            {coords = vector4(316.1930, -578.1481, 28.7969, 247.0882), radius = 2},
            {coords = vector4(317.2853, -573.7570, 28.7969, 247.9677), radius = 2},
            {coords = vector4(319.0149, -569.5129, 28.7969, 243.5294), radius = 2},
            {coords = vector4(321.1203, -565.2028, 28.7969, 238.7160), radius = 2},
        },
		['Marker'] = {
            Distance = 15,
            Delete = {type = 1, r = 255, g = 0, b = 0, x = 5.0, y = 5.0, z = 1.0} -- Red Color / Big Size Circle.
        },
    },
	['Golfplatz'] = {
        ['Label'] = 'Golfplatz', -- Blip name
        ['isJob'] = false,  --- true or false
        ['JobName'] = "police",  --- Job name something like police or mechanic
        ['showBlip'] = true,  --- true or false
        ['npc'] = true,
        ['NpcModel'] = "ig_benny",
        ['blip'] = {
            type = 50,
            color = 0,
            size = 0.7
        },
        ['type'] = "car",
        ['Location'] = vector3(-1366, 56.89, 53.1), -- Blip and Marker Location
        ['LocationHead'] = 93.0,    
		['ParkInLocation'] = vector3(-1398.4603, 32.4117, 52.5183), -- ParkIn Location
		['VehicleSpawns'] = {--Spawn location when vehicle is parked out
            {coords = vector4(-1387.8252, 39.7034, 53.1911, 135.2726), radius = 2},
            {coords = vector4(-1389.2788, 49.3915, 53.1911, 131.3645), radius = 2},
            {coords = vector4(-1401.6606, 45.7359, 52.7212, 65.5929), radius = 2},
            {coords = vector4(-1389.7086, 54.5166, 53.1884, 134.4829), radius = 2},
        },
		['Marker'] = {
            Distance = 15,
            Delete = {type = 1, r = 255, g = 0, b = 0, x = 5.0, y = 5.0, z = 1.0} -- Red Color / Big Size Circle.
        },
    },
    ['Thunder Drive'] = {
        ['Label'] = 'Thunder Drive', -- Blip name
        ['isJob'] = false,  --- true or false
        ['JobName'] = "police",  --- Job name something like police or mechanic
        ['showBlip'] = true,  --- true or false
        ['npc'] = false,
        ['NpcModel'] = "ig_benny",
        ['blip'] = {
            type = 50,
            color = 0,
            size = 0.7
        },
        ['type'] = "car",
        ['Location'] = vector3(-899.275, -153.0, 41.88), -- Blip and Marker Location
        ['LocationHead'] = 93.0,    
		['ParkInLocation'] = vector3(-904.0593, -161.3584, 40.8797), -- ParkIn Location
		['VehicleSpawns'] = {--Spawn location when vehicle is parked out
            {coords = vector4(-901.9395, -160.0503, 41.8810, 20.1544), radius = 2},
            {coords = vector4(-904.8559, -161.9259, 41.8790, 27.5646), radius = 2},
            {coords = vector4(-908.1405, -163.5162, 41.8770, 26.9907), radius = 2},
            {coords = vector4(-911.4747, -165.3404, 41.8760, 26.0444), radius = 2},
        },
		['Marker'] = {
            Distance = 15,
            Delete = {type = 1, r = 255, g = 0, b = 0, x = 5.0, y = 5.0, z = 1.0} -- Red Color / Big Size Circle.
        },
    },
    ['Lcn'] = {
        ['Label'] = 'Lcn', -- Blip name
        ['isJob'] = true,  --- true or false
        ['JobName'] = "lcn",  --- Job name something like police or mechanic
        ['showBlip'] = false,  --- true or false
        ['npc'] = true,
        ['NpcModel'] = "ig_benny",
        ['blip'] = {
            type = 50,
            color = 0,
            size = 0.7
        },
        ['type'] = "car",
        ['Location'] = vector3(-1924.1454, 2051.5107, 139.8314), -- Blip and Marker Location
        ['LocationHead'] = 261.3544,    
		['ParkInLocation'] = vector3(-1920.7123, 2044.5460, 139.7353), -- ParkIn Location
		['VehicleSpawns'] = {--Spawn location when vehicle is parked out
            {coords = vector4(-1919.6152, 2057.0059, 140.7349, 256.1823), radius = 2},
            {coords = vector4(-1920.6055, 2053.0051, 140.7349, 258.3690), radius = 2},
            {coords = vector4(-1921.5518, 2049.0376, 140.7348, 257.8935), radius = 2},
            {coords = vector4(-1923.9119, 2036.7162, 140.7346, 257.3297), radius = 2},
        },
		['Marker'] = {
            Distance = 15,
            Delete = {type = 1, r = 166, g = 117, b = 94, x = 3.0, y = 3.0, z = 1.0} -- Red Color / Big Size Circle.
        },
    },
    ['bloods'] = {
        ['Label'] = 'bloods', -- Blip name
        ['isJob'] = true,  --- true or false
        ['JobName'] = "bloods",  --- Job name something like police or mechanic
        ['showBlip'] = false,  --- true or false
        ['npc'] = true,
        ['NpcModel'] = "ig_benny",
        ['blip'] = {
            type = 50,
            color = 0,
            size = 0.7
        },
        ['type'] = "car",
        ['Location'] = vector3(-1566.5244, -396.4941, 40.9813), -- Blip and Marker Location
        ['LocationHead'] = 325.1478,    
		['ParkInLocation'] = vector3(-1567.4941, -390.9288, 40.9813), -- ParkIn Location
		['VehicleSpawns'] = {--Spawn location when vehicle is parked out
            {coords = vector4(-1531.1984, -406.6061, 41.9916, 49.5241), radius = 2},
            {coords = vector4(-1533.5510, -409.0795, 41.9916, 50.0216), radius = 2},
            {coords = vector4(-1535.8223, -411.7710, 41.9914, 51.6370), radius = 2},
            {coords = vector4(-1538.0026, -414.3025, 41.9922, 51.1794), radius = 2},
        },
		['Marker'] = {
            Distance = 15,
            Delete = {type = 1, r = 166, g = 117, b = 94, x = 3.0, y = 3.0, z = 1.0} -- Red Color / Big Size Circle.
        },
    },
    ['MD'] = {
        ['Label'] = 'MD', -- Blip name
        ['isJob'] = false,  --- true or false
        ['JobName'] = "police",  --- Job name something like police or mechanic
        ['showBlip'] = false,  --- true or false
        ['npc'] = false,
        ['NpcModel'] = "ig_benny",
        ['blip'] = {
            type = 50,
            color = 0,
            size = 0.7
        },
        ['type'] = "car",
        ['Location'] = vector3(-421.4073, -349.5274, 24.2293), -- Blip and Marker Location
        ['LocationHead'] = 93.0,    
		['ParkInLocation'] = vector3(-419.9185, -359.1336, 23.2303), -- ParkIn Location
		['VehicleSpawns'] = {--Spawn location when vehicle is parked out
            {coords = vector4(-432.0389, -349.1845, 24.2304, 198.5277), radius = 2},
            {coords = vector4(-435.9034, -350.4500, 24.2304, 199.7591), radius = 2},
            {coords = vector4(-439.6049, -351.5899, 24.2304, 199.0868), radius = 2},
            {coords = vector4(-443.3831, -352.9072, 24.2304, 197.3552), radius = 2},
        },
		['Marker'] = {
            Distance = 15,
            Delete = {type = 1, r = 255, g = 0, b = 0, x = 3.0, y = 3.0, z = 1.0} -- Red Color / Big Size Circle.
        },
    },
    ['108'] = {
        ['Label'] = '108', -- Blip name
        ['isJob'] = true,  --- true or false
        ['JobName'] = "108",  --- Job name something like police or mechanic
        ['showBlip'] = false,  --- true or false
        ['npc'] = true,
        ['NpcModel'] = "ig_benny",
        ['blip'] = {
            type = 50,
            color = 0,
            size = 0.7
        },
        ['type'] = "car",
        ['Location'] = vector3(1409.7657, 1114.7570, 113.8357), -- Blip and Marker Location
        ['LocationHead'] = 357.2437,    
		['ParkInLocation'] = vector3(1415.7437, 1121.1233, 113.8399), -- ParkIn Location
		['VehicleSpawns'] = {--Spawn location when vehicle is parked out
            {coords = vector4(1412.9900, 1119.9105, 114.8399, 94.1280), radius = 2},
            {coords = vector4(1413.0529, 1116.7867, 114.8399, 92.4002), radius = 2},
            {coords = vector4(1406.0868, 1119.9022, 114.8357, 89.1984), radius = 2},
            {coords = vector4(1405.9406, 1116.8949, 114.8357, 85.9465), radius = 2},
        },
		['Marker'] = {
            Distance = 15,
            Delete = {type = 1, r = 0, g = 0, b = 0, x = 3.0, y = 3.0, z = 1.0} -- Red Color / Big Size Circle.
        },
    },
    ['West Highway Garage'] = {
        ['Label'] = 'West Highway Garage', -- Blip name
        ['isJob'] = false,  --- true or false
        ['JobName'] = "108",  --- Job name something like police or mechanic
        ['showBlip'] = true,  --- true or false
        ['npc'] = false,
        ['NpcModel'] = "ig_benny",
        ['blip'] = {
            type = 50,
            color = 0,
            size = 0.7
        },
        ['type'] = "car",
        ['Location'] = vector3(-2186.6692, 4264.8970, 48.9030), -- Blip and Marker Location
        ['LocationHead'] = 93.0,    
		['ParkInLocation'] = vector3(-2195.3652, 4246.6401, 46.8098), -- ParkIn Location
		['VehicleSpawns'] = {--Spawn location when vehicle is parked out
            {coords = vector4(-2205.3503, 4247.5596, 47.6308, 35.8535), radius = 2},
            {coords = vector4(-2208.1350, 4245.9438, 47.6202, 35.0022), radius = 2},
            {coords = vector4(-2210.3047, 4243.9580, 47.6216, 38.9034), radius = 2},
            {coords = vector4(-2212.7141, 4241.4541, 47.5336, 41.8128), radius = 2},
        },
		['Marker'] = {
            Distance = 15,
            Delete = {type = 1, r = 255, g = 0, b = 0, x = 3.0, y = 3.0, z = 1.0} -- Red Color / Big Size Circle.
        },
    },
    ['Sandy Shores Garage'] = {
        ['Label'] = 'Sandy Shores Garage', -- Blip name
        ['isJob'] = false,  --- true or false
        ['JobName'] = "108",  --- Job name something like police or mechanic
        ['showBlip'] = true,  --- true or false
        ['npc'] = false,
        ['NpcModel'] = "ig_benny",
        ['blip'] = {
            type = 50,
            color = 0,
            size = 0.7
        },
        ['type'] = "car",
        ['Location'] = vector3(1533.6840, 3773.2559, 34.5115), -- Blip and Marker Location
        ['LocationHead'] = 93.0,    
		['ParkInLocation'] = vector3(1536.2133, 3769.7527, 33.0501), -- ParkIn Location
		['VehicleSpawns'] = {--Spawn location when vehicle is parked out
            {coords = vector4(1522.9816, 3768.0593, 34.0499, 228.0835), radius = 2},
            {coords = vector4(1516.9535, 3763.6868, 34.0297, 195.9703), radius = 2},
            {coords = vector4(1511.3540, 3761.8813, 34.0076, 193.9555), radius = 2},
            {coords = vector4(1497.8010, 3760.5225, 33.9258, 217.4514), radius = 2},
        },
		['Marker'] = {
            Distance = 15,
            Delete = {type = 1, r = 255, g = 0, b = 0, x = 3.0, y = 3.0, z = 1.0} -- Red Color / Big Size Circle.
        },
    },
    ['Paleto Bay Garage'] = {
        ['Label'] = 'Paleto Bay Garage', -- Blip name
        ['isJob'] = false,  --- true or false
        ['JobName'] = "108",  --- Job name something like police or mechanic
        ['showBlip'] = true,  --- true or false
        ['npc'] = false,
        ['NpcModel'] = "ig_benny",
        ['blip'] = {
            type = 50,
            color = 0,
            size = 0.7
        },
        ['type'] = "car",
        ['Location'] = vector3(141.6834, 6616.8594, 32.0711), -- Blip and Marker Location
        ['LocationHead'] = 93.0,    
		['ParkInLocation'] = vector3(130.0563, 6627.2847, 30.7210), -- ParkIn Location
		['VehicleSpawns'] = {--Spawn location when vehicle is parked out
            {coords = vector4(140.8134, 6608.7852, 31.8393, 177.7982), radius = 2},
            {coords = vector4(145.6889, 6603.1880, 31.8528, 178.7258), radius = 2},
            {coords = vector4(150.7852, 6598.6587, 31.8449, 178.8543), radius = 2},
            {coords = vector4(155.8460, 6593.5879, 31.8449, 173.0455), radius = 2},
        },
		['Marker'] = {
            Distance = 15,
            Delete = {type = 1, r = 255, g = 0, b = 0, x = 3.0, y = 3.0, z = 1.0} -- Red Color / Big Size Circle.
        },
    },
    ['Sandy Wonderama'] = {
        ['Label'] = 'Sandy Wonderama', -- Blip name
        ['isJob'] = false,  --- true or false
        ['JobName'] = "108",  --- Job name something like police or mechanic
        ['showBlip'] = true,  --- true or false
        ['npc'] = false,
        ['NpcModel'] = "ig_benny",
        ['blip'] = {
            type = 50,
            color = 0,
            size = 0.7
        },
        ['type'] = "car",
        ['Location'] = vector3(1697.4971, 4790.8105, 41.9214), -- Blip and Marker Location
        ['LocationHead'] = 93.0,    
		['ParkInLocation'] = vector3(1711.5007, 4804.6104, 40.7860), -- ParkIn Location
		['VehicleSpawns'] = {--Spawn location when vehicle is parked out
            {coords = vector4(1692.4368, 4781.9849, 41.9215, 84.5307), radius = 2},
            {coords = vector4(1692.0096, 4778.3384, 41.9215, 91.3945), radius = 2},
            {coords = vector4(1691.7803, 4774.3311, 41.9215, 87.9067), radius = 2},
            {coords = vector4(1691.9069, 4770.5259, 41.9215, 88.4750), radius = 2},
        },
		['Marker'] = {
            Distance = 15,
            Delete = {type = 1, r = 255, g = 0, b = 0, x = 3.0, y = 3.0, z = 1.0} -- Red Color / Big Size Circle.
        },
    },
    ['Abschlepper Garage'] = {
        ['Label'] = 'Abschlepper Garage', -- Blip name
        ['isJob'] = false,  --- true or false
        ['JobName'] = "108",  --- Job name something like police or mechanic
        ['showBlip'] = true,  --- true or false
        ['npc'] = true,
        ['NpcModel'] = "ig_benny",
        ['blip'] = {
            type = 50,
            color = 0,
            size = 0.7
        },
        ['type'] = "car",
        ['Location'] = vector3(399.2352, -1651.3197, 28.2941), -- Blip and Marker Location
        ['LocationHead'] = 317.0388,    
		['ParkInLocation'] = vector3(419.3692, -1638.9435, 27.9187), -- ParkIn Location
		['VehicleSpawns'] = {--Spawn location when vehicle is parked out
            {coords = vector4(403.5230, -1650.3516, 28.9205, 322.0283), radius = 2},
        },
		['Marker'] = {
            Distance = 15,
            Delete = {type = 1, r = 255, g = 0, b = 0, x = 3.0, y = 3.0, z = 1.0} -- Red Color / Big Size Circle.
        },
    },
    ['crips'] = {
        ['Label'] = 'crips', -- Blip name
        ['isJob'] = true,  --- true or false
        ['JobName'] = "crips",  --- Job name something like police or mechanic
        ['showBlip'] = false,  --- true or false
        ['npc'] = true,
        ['NpcModel'] = "ig_benny",
        ['blip'] = {
            type = 50,
            color = 0,
            size = 0.7
        },
        ['type'] = "car",
        ['Location'] = vector3(402.1059, -1804.3016, 28.0696), -- Blip and Marker Location
        ['LocationHead'] = 224.9010,    
		['ParkInLocation'] = vector3(408.6327, -1801.1688, 27.9642), -- ParkIn Location
		['VehicleSpawns'] = {--Spawn location when vehicle is parked out
            {coords = vector4(408.7191, -1806.7601, 28.9794, 131.6633), radius = 2},
            {coords = vector4(406.6672, -1804.1698, 29.0225, 134.5964), radius = 2},
            {coords = vector4(404.3501, -1811.0912, 28.8948, 132.1702), radius = 2},
            {coords = vector4(392.8583, -1818.8636, 28.8852, 307.2924), radius = 2},
        },
		['Marker'] = {
            Distance = 15,
            Delete = {type = 1, r = 123, g = 196, b = 255, x = 3.0, y = 3.0, z = 1.0} -- Red Color / Big Size Circle.
        },
    },
    ['LSCustoms'] = {
        ['Label'] = 'LSCustoms', -- Blip name
        ['isJob'] = false,  --- true or false
        ['JobName'] = "police",  --- Job name something like police or mechanic
        ['showBlip'] = true,  --- true or false
        ['npc'] = true,
        ['NpcModel'] = "ig_benny",
        ['blip'] = {
            type = 50,
            color = 0,
            size = 0.7
        },
        ['type'] = "car",
        ['Location'] = vector3(46.7048, -1749.6857, 28.633), -- Blip and Marker Location
        ['LocationHead'] = 41.9971,    
		['ParkInLocation'] = vector3(37.0010, -1755.8107, 29.3025), -- ParkIn Location
		['VehicleSpawns'] = {--Spawn location when vehicle is parked out
            {coords = vector4(39.9608, -1743.7910, 29.3035, 53.9505), radius = 3},
        },
		['Marker'] = {
            Distance = 15,
            Delete = {type = 1, r = 255, g = 0, b = 0, x = 3.0, y = 3.0, z = 1.0} -- Red Color / Big Size Circle.
        },
    },
    ['MP'] = {
        ['Label'] = 'Hauptplatz', -- Blip name
        ['isJob'] = false,  --- true or false
        ['JobName'] = "police",  --- Job name something like police or mechanic
        ['showBlip'] = true,  --- true or false
        ['npc'] = true,
        ['NpcModel'] = "ig_benny",
        ['blip'] = {
            type = 50,
            color = 0,
            size = 0.7
        },
        ['type'] = "car",
        ['Location'] = vector3(213.9037, -809.2515, 30.0149), -- Blip and Marker Location
        ['LocationHead'] = 93.0,    
		['ParkInLocation'] = vector3(211.9326, -797.3575, 29.8853), -- ParkIn Location
		['VehicleSpawns'] = {--Spawn location when vehicle is parked out
            {coords = vector4(224.8273, -799.6064, 30.2697, 248.2918), radius = 2},
            {coords = vector4(223.2486, -801.9031, 30.2843, 249.7878), radius = 2},
            {coords = vector4(235.7135, -794.7174, 30.1490, 69.5697), radius = 2},
        },
		['Marker'] = {
            Distance = 15,
            Delete = {type = 1, r = 255, g = 0, b = 0, x = 3.0, y = 3.0, z = 1.0} -- Red Color / Big Size Circle.
        },
    },
    ['Sandy Shores Airport'] = {
        ['Label'] = 'Sandy Shores Airport', -- Blip name
        ['isJob'] = false,  --- true or false
        ['JobName'] = "police",  --- Job name something like police or mechanic
        ['showBlip'] = true,  --- true or false
        ['npc'] = true,
        ['NpcModel'] = "ig_benny",
        ['blip'] = {
            type = 50,
            color = 0,
            size = 0.7
        },
        ['type'] = "car",
        ['Location'] = vector3(1746.3490, 3296.9087, 41.1549), -- Blip and Marker Location
        ['LocationHead'] = 93.0,    
		['ParkInLocation'] = vector3(1753.2813, 3289.3552, 40.1143), -- ParkIn Location
		['VehicleSpawns'] = {--Spawn location when vehicle is parked out
            {coords = vector4(1745.0192, 3234.6289, 41.9449, 4.7224), radius = 2},
            {coords = vector4(1755.3495, 3236.6826, 42.0240, 19.5604), radius = 2},
            {coords = vector4(1769.7551, 3239.7292, 42.1185, 317.8939), radius = 2},
            {coords = vector4(1789.1062, 3241.1680, 42.4590, 330.9623), radius = 2},
        },
		['Marker'] = {
            Distance = 15,
            Delete = {type = 1, r = 255, g = 0, b = 0, x = 3.0, y = 3.0, z = 1.0} -- Red Color / Big Size Circle.
        },
    },
    ['Air Port'] = {
        ['Label'] = 'Air Port', -- Blip name
        ['isJob'] = false,  --- true or false
        ['JobName'] = "police",  --- Job name something like police or mechanic
        ['showBlip'] = true,  --- true or false
        ['npc'] = true,
        ['NpcModel'] = "ig_benny",
        ['blip'] = {
            type = 50,
            color = 0,
            size = 0.7
        },
        ['type'] = "aircraft",
        ['Location'] = vector3(-941.0239, -2953.9905, 12.9451), -- Blip and Marker Location
        ['LocationHead'] = 145.4083,    
		['ParkInLocation'] = vector3(-979.9326, -2993.2749, 14.9451), -- ParkIn Location
		['VehicleSpawns'] = {--Spawn location when vehicle is parked out
            {coords = vector4(-979.05, -2998.03, 15.17, 60.89), radius = 2},
        },
		['Marker'] = {
            Distance = 35,
            Delete = {type = 1, r = 255, g = 0, b = 0, x = 15.0, y = 15.0, z = 1.0} -- Red Color / Big Size Circle.
        },
    },
--BOATS
    ['Shank St'] = {
        ['Label'] = 'Boatgarage', -- Blip name
        ['isJob'] = false,  --- true or false
        ['JobName'] = "",  --- Job name something like police or mechanic
        ['showBlip'] = true,  --- true or false
        ['npc'] = true,
        ['NpcModel'] = "A_M_Y_Beach_01",
        ['blip'] = {
            type = 410,
            color = 0,
            size = 0.7
        },
        ['type'] = "boat",
        ['Location'] = vector3(-777.8047, -1439.4648, 0.5952), -- Blip and Marker Location
        ['LocationHead'] = 129.8586,    
		['ParkInLocation'] = vector3(-769.5571, -1422.2155, -0.4745), -- ParkIn Location
		['VehicleSpawns'] = {--Spawn location when vehicle is parked out
            {coords = vector4(-793.2838, -1415.5942, 0.2047, 233.2634), radius = 2},
        },
		['Marker'] = {
            Distance = 35,
            Delete = {type = 1, r = 255, g = 0, b = 0, x = 10.0, y = 10.0, z = 1.0} -- Red Color / Big Size Circle.
        },
    },
    ['Elysian Fields'] = {
        ['Label'] = 'Boatgarage', -- Blip name
        ['isJob'] = false,  --- true or false
        ['JobName'] = "",  --- Job name something like police or mechanic
        ['showBlip'] = true,  --- true or false
        ['npc'] = true,
        ['NpcModel'] = "A_M_Y_Beach_01",
        ['blip'] = {
            type = 410,
            color = 0,
            size = 0.7
        },
        ['type'] = "boat",
        ['Location'] = vector3(22.7766, -2799.4304, 4.7018), -- Blip and Marker Location
        ['LocationHead'] = 350.5011,    
		['ParkInLocation'] = vector3(16.5881, -2817.1655, 1.1387), -- ParkIn Location
		['VehicleSpawns'] = {--Spawn location when vehicle is parked out
            {coords = vector4(35.4203, -2787.8477, 0.5697, 179.2550), radius = 2},
        },
		['Marker'] = {
            Distance = 35,
            Delete = {type = 1, r = 255, g = 0, b = 0, x = 10.0, y = 10.0, z = 1.0} -- Red Color / Big Size Circle.
        },
    },
    ['Catfish View'] = {
        ['Label'] = 'Boatgarage', -- Blip name
        ['isJob'] = false,  --- true or false
        ['JobName'] = "",  --- Job name something like police or mechanic
        ['showBlip'] = true,  --- true or false
        ['npc'] = true,
        ['NpcModel'] = "A_M_Y_Beach_01",
        ['blip'] = {
            type = 410,
            color = 0,
            size = 0.7
        },
        ['type'] = "boat",
        ['Location'] = vector3(3855.5200, 4465.1611, 1.7162), -- Blip and Marker Location
        ['LocationHead'] = 115.3097,    
		['ParkInLocation'] = vector3(3874.3171, 4459.3247, 0.1486), -- ParkIn Location
		['VehicleSpawns'] = {--Spawn location when vehicle is parked out
            {coords = vector4(3858.3599, 4471.9023, 0.0165, 261.2394), radius = 2},
        },
		['Marker'] = {
            Distance = 35,
            Delete = {type = 1, r = 255, g = 0, b = 0, x = 10.0, y = 10.0, z = 1.0} -- Red Color / Big Size Circle.
        },
    },
    ['Great Ocean Highway'] = {
        ['Label'] = 'Boatgarage', -- Blip name
        ['isJob'] = false,  --- true or false
        ['JobName'] = "",  --- Job name something like police or mechanic
        ['showBlip'] = true,  --- true or false
        ['npc'] = true,
        ['NpcModel'] = "A_M_Y_Beach_01",
        ['blip'] = {
            type = 410,
            color = 0,
            size = 0.7
        },
        ['type'] = "boat",
        ['Location'] = vector3(-1610.1317, 5263.8335, 2.9741), -- Blip and Marker Location
        ['LocationHead'] = 198.1193,    
		['ParkInLocation'] = vector3(-1600.3, 5261.9, 0.0), -- ParkIn Location
		['VehicleSpawns'] = {--Spawn location when vehicle is parked out
            {coords = vector4(-1622.5, 5247.1, 0.0, 21.0), radius = 2},
        },
		['Marker'] = {
            Distance = 35,
            Delete = {type = 1, r = 255, g = 0, b = 0, x = 10.0, y = 10.0, z = 1.0} -- Red Color / Big Size Circle.
        },
    },
    ['North Calafia Way'] = {
        ['Label'] = 'Boatgarage', -- Blip name
        ['isJob'] = false,  --- true or false
        ['JobName'] = "",  --- Job name something like police or mechanic
        ['showBlip'] = true,  --- true or false
        ['npc'] = true,
        ['NpcModel'] = "A_M_Y_Beach_01",
        ['blip'] = {
            type = 410,
            color = 0,
            size = 0.7
        },
        ['type'] = "boat",
        ['Location'] = vector3(711.9790, 4093.3257, 33.7278), -- Blip and Marker Location
        ['LocationHead'] =  342.1043,    
		['ParkInLocation'] = vector3(705.1, 4110.1, 30.2), -- ParkIn Location
		['VehicleSpawns'] = {--Spawn location when vehicle is parked out
            {coords = vector4(712.8, 4080.2, 29.3, 181.0), radius = 2},
        },
		['Marker'] = {
            Distance = 35,
            Delete = {type = 1, r = 255, g = 0, b = 0, x = 10.0, y = 10.0, z = 1.0} -- Red Color / Big Size Circle.
        },
    },
    ['Barbareno Rd'] = {
        ['Label'] = 'Boatgarage', -- Blip name
        ['isJob'] = false,  --- true or false
        ['JobName'] = "",  --- Job name something like police or mechanic
        ['showBlip'] = true,  --- true or false
        ['npc'] = true,
        ['NpcModel'] = "A_M_Y_Beach_01",
        ['blip'] = {
            type = 410,
            color = 0,
            size = 0.7
        },
        ['type'] = "boat",
        ['Location'] = vector3(-3427.7795, 956.1787, 7.3467), -- Blip and Marker Location
        ['LocationHead'] =  276.9861,    
		['ParkInLocation'] = vector3(-3436.5, 946.6, 0.3), -- ParkIn Location
		['VehicleSpawns'] = {--Spawn location when vehicle is parked out
            {coords = vector4(-3448.9, 953.8, 0.0, 75.0), radius = 2},
        },
		['Marker'] = {
            Distance = 35,
            Delete = {type = 1, r = 255, g = 0, b = 0, x = 10.0, y = 10.0, z = 1.0} -- Red Color / Big Size Circle.
        },
    },
}
