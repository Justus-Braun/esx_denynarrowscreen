ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterServerCallback('denyCloseFrame:isPlayerWhitelist', function(src, cb)
    local xPlayer = ESX.GetPlayerFromId(src)
    local xlincense = xPlayer.getIdentifier()
    for k, v in ipairs(Config.WhitelistLicence) do
        if v == xlincense then
            cb(true)
        end
    end
    cb(false)
end)