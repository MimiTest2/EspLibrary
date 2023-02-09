
--made by marshadow#2336. if you cant contact that mist.#4452 is my friends tag.

local module = {}
local espindex = {}
local esps = {
	
}
holder = game.CoreGui
function init(foldername)
	local fold = Instance.new("Folder",holder)
	esps[foldername] = {Folder = fold, ScreenGui = Instance.new('ScreenGui', fold)};
	esps[foldername].Folder.Name = foldername;
	esps[foldername].ScreenGui.IgnoreGuiInset = true
	return esps[foldername]
end
function find(v)
	return espindex[v]
end
--[[
	local lol = require(game.ReplicatedStorage.ModuleScript);
	local lol2 = lol.init("esptest");
	local part = workspace.Trinkets.Part;
	lol.createesp({PrimaryPart = part, Name = "trinket", Color = Color3.fromRGB(65, 255, 160), Transparency = 0.75, UseChams = true}, part, lol2)
]]
function createesp(options, char, esp)
	if not options then
		options = {}
		options.PrimaryPart = char.PrimaryPart;
		options.Name = char.Name
		options.Color = Color3.fromRGB(65, 255, 160);
		options.Transparency = 0.75;
		options.UseChams = true;
	end
	local BillboardGui = Instance.new("BillboardGui")
	local TextLabel = Instance.new("TextLabel")
	BillboardGui.Adornee = options.PrimaryPart
	BillboardGui.Name = options.Name
	BillboardGui.Parent = esp.ScreenGui
	BillboardGui.Size = UDim2.new(0, 100, 0, 150)
	BillboardGui.StudsOffset = Vector3.new(0, 1, 0)
	BillboardGui.AlwaysOnTop = true
	if options.UseChams then
		local highlight = Instance.new("Highlight")
		highlight.FillTransparency = options.Transparency
		highlight.FillColor = options.Color
		highlight.OutlineColor = Color3.fromRGB(0,0,0)
		highlight.OutlineTransparency = options.Transparency
		highlight.Adornee = char;
		highlight.Parent = esp.ScreenGui
	end
	TextLabel.Parent = BillboardGui
	TextLabel.BackgroundTransparency = 1
	TextLabel.Position = UDim2.new(0, 0, 0, -50)
	TextLabel.Size = UDim2.new(0, 100, 0, 100)
	TextLabel.Font = Enum.Font.Ubuntu
	TextLabel.TextSize = 15
	TextLabel.TextColor3 = Color3.new(1, 1, 1)
	TextLabel.TextStrokeTransparency = 0
	TextLabel.TextYAlignment = Enum.TextYAlignment.Bottom
	TextLabel.Text = "Name: " .. options.Name
	TextLabel.ZIndex = 10
	table.insert(espindex,{Part = options.PrimaryPart, Name = options.Name, Highlight = highlight, BillboardGui = BillboardGui, TextLabel = TextLabel})
end

module.init = init
module.createesp = createesp
module.find = find
module.espindex = espindex;
module.esps = esps;
return module
