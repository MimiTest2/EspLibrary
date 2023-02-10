--lib is a loadstring of https://raw.githubusercontent.com/MimiTest2/EspLibrary/main/Esp%20Library.lua. shouldnt use this if u dont know what ur doing    

    lib.initmodule(false)
    local lol2 = lib.init("esp",false);
    task.spawn(function()
    	while true do
    		wait(0.5)
    		lol2.Enabled = false;
    		wait(0.5)
    		lol2.Enabled = true;
    	end
    end)
    while task.wait(1) do
        for i, v in pairs(game.Players:GetPlayers()) do
            if not lib.find(v.Character.Name) then
                local part = v.Character;
                lib.createesp({PrimaryPart = part.PrimaryPart, Name = v.Name,  Font = Enum.Font.Code, Size = UDim2.new(0, 100, 0, 100), TextSize = 14, Color = Color3.fromRGB(65, 255, 160), Transparency = 0.75, UseChams = true}, part, lol2)
            end
        end
    end
