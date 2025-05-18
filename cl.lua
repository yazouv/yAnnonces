RegisterNetEvent('yAnnonces:playsound')
AddEventHandler('yAnnonces:playsound', function()
    PlaySoundFrontend(-1, "Event_Start_Text", "GTAO_FM_Events_Soundset", 1)
end)

RegisterNetEvent('yAnnonces:TopNotification')
AddEventHandler('yAnnonces:TopNotification', function(msg)
    ESX.Scaleform.ShowFreemodeMessage("Annonce", msg, 5)
end)
