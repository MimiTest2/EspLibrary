  local lol = require(game.ReplicatedStorage.ModuleScript); --replace the require modulescript wtih a loadstring to esp library.lua
	lol.initmodule(false)
	local lol2 = lol.init("esptest",false);
	local part = workspace.Trinkets.Part;
	lol.createesp({PrimaryPart = part, Name = "trinket", Color = Color3.fromRGB(65, 255, 160), Transparency = 0.75, UseChams = true}, part, lol2)
