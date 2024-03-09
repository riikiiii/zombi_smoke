ESX = exports["es_extended"]:getSharedObject()

RegisterServerEvent('creajoint')
AddEventHandler('creajoint', function()
    local xPlayer = ESX.GetPlayerFromId(source)

    exports.ox_inventory:RemoveItem(xPlayer.source, ConfigSmoke.rollingpaper, 1)
    exports.ox_inventory:RemoveItem(xPlayer.source, ConfigSmoke.weedillegal, 1)
    exports.ox_inventory:AddItem(xPlayer.source, ConfigSmoke.jointillegal, 1)
end)

RegisterServerEvent('creajointlegale')
AddEventHandler('creajointlegale', function()
    local xPlayer = ESX.GetPlayerFromId(source)

    exports.ox_inventory:RemoveItem(xPlayer.source, ConfigSmoke.rollingpaper, 1)
    exports.ox_inventory:RemoveItem(xPlayer.source, ConfigSmoke.weedlegal, 1)
    exports.ox_inventory:AddItem(xPlayer.source, ConfigSmoke.jointlegal, 1)
end)

RegisterServerEvent('fumajoint')
AddEventHandler('fumajoint', function()
    local xPlayer = ESX.GetPlayerFromId(source)

    exports.ox_inventory:RemoveItem(xPlayer.source, ConfigSmoke.jointillegal, 1)
end)

RegisterServerEvent('fumajointlegale')
AddEventHandler('fumajointlegale', function()
    local xPlayer = ESX.GetPlayerFromId(source)

    exports.ox_inventory:RemoveItem(xPlayer.source, ConfigSmoke.jointlegal, 1)
end)

RegisterServerEvent('pippacoca')
AddEventHandler('pippacoca', function()
    local xPlayer = ESX.GetPlayerFromId(source)

    exports.ox_inventory:RemoveItem(xPlayer.source, ConfigSmoke.coke, 1)
end)

RegisterServerEvent('sigaretteitem')
AddEventHandler('sigaretteitem', function()
    local xPlayer = ESX.GetPlayerFromId(source)

    exports.ox_inventory:RemoveItem(xPlayer.source, ConfigSmoke.packofcigarette, 1)
    exports.ox_inventory:AddItem(xPlayer.source, ConfigSmoke.cigarette, 20)
end)

RegisterServerEvent('rimuovisigaretta')
AddEventHandler('rimuovisigaretta', function()
    local xPlayer = ESX.GetPlayerFromId(source)

    exports.ox_inventory:RemoveItem(xPlayer.source, ConfigSmoke.cigarette, 1)
end)