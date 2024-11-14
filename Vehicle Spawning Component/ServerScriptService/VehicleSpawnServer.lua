local replicatedStorage = game:GetService("ReplicatedStorage")
local spawnEvent = replicatedStorage.TriggerVehicleSpawnGUI.VehicleSpawnEvent
local deleteEvent = replicatedStorage.TriggerVehicleSpawnGUI.VehicleDeleteEvent


spawnEvent.OnServerEvent:Connect(function(player, spawnerName, vehicleManufacturer, vehiclePackage)
	if vehiclePackage == "None" then
		warn("DATA RECEIVED: "..spawnerName..", "..vehicleManufacturer..", "..vehiclePackage..".")
		local car = game.ReplicatedStorage.Vehicles[""..vehicleManufacturer..""]:FindFirstChildOfClass("Model"):Clone()
		car.Parent = workspace.Vehicles[""..player.Name..""]
		car:SetPrimaryPartCFrame(workspace[""..spawnerName..""].SpawnPosition.CFrame)
		wait(1)
		car.Misc.SpawningAnchor.Anchored = false
	else
		warn("DATA RECEIVED: "..spawnerName..", "..vehicleManufacturer..", "..vehiclePackage..".")
		local car = game.ReplicatedStorage.Vehicles[""..vehicleManufacturer..""][""..vehiclePackage..""]:FindFirstChildOfClass("Model"):Clone()
		warn("CAR NAME: "..car.Name.."")
		car.Parent = workspace.Vehicles[""..player.Name..""]
		car:SetPrimaryPartCFrame(workspace[""..spawnerName..""].SpawnPosition.CFrame)
		wait(1)
		car.Misc.SpawningAnchor.Anchored = false
	end
	
end)

deleteEvent.OnServerEvent:Connect(function(player)
	workspace.Vehicles[""..player.Name..""]:ClearAllChildren()
end)