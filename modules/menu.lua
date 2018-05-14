RegisterNetEvent("menu:exists")
RegisterNetEvent("menu:getVersion")
RegisterNetEvent("menu:blockInput")
RegisterNetEvent("menu:hideMenu")

AddEventHandler("menu:exists", function(cb)
	if cb then
		cb()
	end
end)

AddEventHandler("menu:getVersion", function(cb)
	if cb then
		cb(GetResourceMetadata(GetCurrentResourceName(), "resource_version", 0))
	end
end)

AddEventHandler("menu:blockInput", function(state)
	if state == false or state == true then
		blockinput = state
	end
end)

AddEventHandler("menu:hideMenu", function()
	if menuopen then
		SendNUIMessage({
			hidemenu = true
		})
	end
end)