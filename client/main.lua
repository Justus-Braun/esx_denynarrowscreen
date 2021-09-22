ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)


Citizen.CreateThread(function()
    while ESX == nil do
        Wait(100)
    end

    ESX.TriggerServerCallback('denyCloseFrame:isPlayerWhitelist', function(isWhitelisted)
        if isWhitelisted == false then
            while true do
                if not GetIsWidescreen() then
                    SetTextScale(2.0, 2.0)
                    SetTextOutline()
                    SetTextFont(4)
                    BeginTextCommandDisplayText("STRING")
                    AddTextComponentSubstringPlayerName(Config.Text)
                    EndTextCommandDisplayText(0.1, 0.1)
                    Wait(10)
                else
                    Wait(10000)
                end
            end
        end
        Wait(10)
    end)
end)