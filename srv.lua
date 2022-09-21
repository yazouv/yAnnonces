ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1000)
        local today = os.date("%A")
        local hour = os.date("%H:%M:%S")
        if annonces ~= nil then
            for k, v in pairs(annonces) do
                if v.jour == today and v.horaire == hour then
                    local xPlayers = ESX.GetPlayers()
                    for i = 1, #xPlayers, 1 do
                        local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
                        if xPlayer ~= nil then
                            if notificationtype == "Shownotification" then
                                TriggerClientEvent('esx:showAdvancedNotification', xPlayer.source, 'Annonce', nomserveur
                                    , v.message, 'CHAR_CHAT_CALL', 1)
                            elseif notificationtype == "top" then
                                TriggerClientEvent('yAnnonces:TopNotification', xPlayer.source, v.message)
                            end
                            if playSound == true then
                                TriggerClientEvent('yAnnonces:playsound', xPlayer.source)
                            end
                        end
                    end
                end
            end
        end
    end
end)
