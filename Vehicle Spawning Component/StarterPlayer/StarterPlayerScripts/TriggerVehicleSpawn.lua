local replicatedStorage = game.ReplicatedStorage
local event = replicatedStorage.TriggerVehicleSpawnGUI

event.OnClientEvent:Connect(function(spawnerName)
	local gui = replicatedStorage.Assets.CarSpawningGUI:Clone()
	gui.Parent = game.Players.LocalPlayer.PlayerGui
	gui.SpawnerName.Value = tostring(spawnerName)
end)