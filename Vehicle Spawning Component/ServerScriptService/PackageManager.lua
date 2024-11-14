game.Players.PlayerAdded:Connect(function(plr)
	local name = plr.Name
	local folder = Instance.new("Folder", game.Workspace.Vehicles)
	folder.Name = ""..name..""
end)

game.Players.PlayerRemoving:Connect(function(plr)
	local name = plr.Name
	game.Workspace.Vehicles[""..name..""]:Destroy()
end)