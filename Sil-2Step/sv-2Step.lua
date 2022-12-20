ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent("eff_flames")
AddEventHandler("eff_flames", function(entity)
	TriggerClientEvent("c_eff_flames", -1, entity)
end)

--[[

	Eğerki kod ile çalıştırmak isterseniz bunu aktif edersiniz

RegisterCommand("antilag", function(source, args, rawCommand)
	TriggerClientEvent("2step:Anti-lag", source, 0)
end)  ]]--

-- Burası İtem kullanarak aktif edilen kısım
ESX.RegisterUsableItem("egzozkumandasi" , function(source)
	TriggerClientEvent("2step:Anti-lag", source)
end)