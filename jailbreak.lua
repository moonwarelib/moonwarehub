local Config = {
    WindowName = "Moonware",
        Color = Color3.fromRGB(150, 108, 255),
        Keybind = Enum.KeyCode.RightControl
}
game:GetService("Players").LocalPlayer.Idled:connect(function()
game:GetService("VirtualUser"):ClickButton2(Vector2.new())
end)

for i,v in pairs(getconnections(game:GetService("ScriptContext").Error)) do
   v:Disable()
end

local startedTime = tick();
for i,v in pairs(getgc(true)) do -- credits to bye..#0001 this was before i knew how to make anticheat bypasses
    if not KickFunc and type(v) == 'function' and getfenv(v).script and getfenv(v).script == game:GetService('Players').LocalPlayer.PlayerScripts.LocalScript then
        if debug.getconstants(v) and table.find(debug.getconstants(v),'FailedPcall') then
            KickFunc = v
        end
    end
end

x = debug.getupvalues(KickFunc)[1]
OldFire = getupvalue(x,1)
local FireServerHook = newcclosure(function(TEvent, Key, ...)
    if Key then
        Args = {...}
        if tostring(Key) == 'JumpPower' then
            return
        end
        if string.match(tostring(Key),'NoClip') then
            return
        end
        if string.match(tostring(Key),'Flying') then
            return
        end
        if tostring(Key) == 'Getupvalues' then
            return
        end
    end
    return OldFire(TEvent, Key, ...)
end)
setupvalue(x,1,FireServerHook)

if not KickFunc then
    return nil 
end


pcall(function()
game:GetService("Players").LocalPlayer.PlayerScripts.GameAnalytics.Postie:remove()--???
end)
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/1201for/V.G-Hub/main/im-retarded-3"))()
local Window = Library:CreateWindow(Config, game:GetService("CoreGui"))

local Tab1 = Window:CreateTab("Jailbreak")
local Tab2 = Window:CreateTab("UI Settings")

local Section1 = Tab1:CreateSection("")
local Section2 = Tab1:CreateSection("")
local Section3 = Tab2:CreateSection("Menu")
local Section4 = Tab2:CreateSection("Background")
 
local Slider2 = Section1:CreateSlider("WalkSpeed", 0,140,nil,false, function(Value)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed  = Value
end)
local Slider2 = Section1:CreateSlider("JumpPower", 0,500,nil,false, function(Value)
game.Players.LocalPlayer.Character.Humanoid.JumpPower  = Value
end)

local Toggle1 = Section1:CreateToggle("Anti Ragdoll", nil, function(State)
sex2 = State
local Falling
for i,v in next, getgc(true) do
	if type(v) == "table" and rawget(v, 'Ragdoll') and rawget(v, 'Unragdoll') then
		Falling = v
	end
end 
local oldRagdoll = AlexRagdoll
Falling.Ragdoll = function(...)
	if _G.ARt and sex2 then
		return wait(9e9)
	else
		return oldRagdoll(...)
	end
end end)

local Toggle1 = Section1:CreateToggle("AirDrop Esp", nil, function(State)
kat2 = State
function steam()
pcall(function()
    
for i,v in pairs(game.Workspace.Drop:GetChildren()) do
if v.Name == 'Briefcase' then
if v.Transparency == 0 then
local tracer = Instance.new("Beam", game:GetService('Players').LocalPlayer.Character.UpperTorso)
local A0 = Instance.new("Attachment", game:GetService('Players').LocalPlayer.Character.UpperTorso)
local A1 = Instance.new("Attachment", v)
tracer.Attachment0 = A0
tracer.Attachment1 = A1
tracer.Color = ColorSequence.new(Color3.fromRGB(255,0,0))
tracer.Width0 = .15
tracer.Width1 = .15
tracer.FaceCamera = true
local box = Instance.new("BoxHandleAdornment")
box.Parent = v
box.Adornee = v
box.Size = v.Size
box.Transparency = 0.5
box.AlwaysOnTop = true
box.Color3 = Color3.fromRGB(255,0,0)
box.ZIndex = 5
end
end            
end 
end)
end 


Workspace.ChildAdded:Connect(function()
if Workspace:FindFirstChild("Drop") then 
if kat2 then
steam()
end end end) end)
local Toggle1 = Section1:CreateToggle("GunMods", nil, function(State)
kat= State
while wait() do
if kat then
for i,v in pairs(game:GetService("ReplicatedStorage").Game.ItemConfig:GetChildren()) do
local g = require(v)
g.MagSize = math.huge
g.CamShakeMagnitude = 0
g.FireAuto = true
g.FireFreq = 1000
g.BulletsSpread = -10
g.BulletsPerShot = 15
end end end 
end)

local Toggle1 = Section2:CreateToggle("Infinite Jump", nil, function(State)
Infinite = State
game:GetService("UserInputService").JumpRequest:connect(function()
	if Infinite then
		game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
	end
end) end)



local Toggle1 = Section2:CreateToggle("B Fly", nil, function(State)
sex2 = State
local gogo1000 = 0
local LP = game:service('Players').LocalPlayer
local MOUSE = LP:GetMouse()
MOUSE.KeyDown:connect(function(KEY)
if KEY:lower() == 'b' then
if sex2 then
local LP = game:service('Players').LocalPlayer
local MOUSE = LP:GetMouse()
gogo1000 = gogo1000 + 1
_G.FLYING = false
local T = LP.Character.UpperTorso
local CONTROL = {F = 0, B = 0, L = 0, R = 0}
local lCONTROL = {F = 0, B = 0, L = 0, R = 0}
local SPEED = 5
local function FLY()
_G.FLYING = true
local BG = Instance.new('BodyGyro', T)
local BV = Instance.new('BodyVelocity', T)
BG.P = 9e4
BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
BG.cframe = T.CFrame
BV.velocity = Vector3.new(0, 0.1, 0)
BV.maxForce = Vector3.new(9e9, 9e9, 9e9)
spawn(function()
repeat wait()
LP.Character.Humanoid.PlatformStand = true
if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 then
SPEED = 50
elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0) and SPEED ~= 0 then
SPEED = 0
end
if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 then
BV.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R, (CONTROL.F + CONTROL.B) * 0.2, 0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
lCONTROL = {F = CONTROL.F, B = CONTROL.B, L = CONTROL.L, R = CONTROL.R}
elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and SPEED ~= 0 then
BV.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lCONTROL.F + lCONTROL.B)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lCONTROL.L + lCONTROL.R, (lCONTROL.F + lCONTROL.B) * 0.2, 0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
else
BV.velocity = Vector3.new(0, 0.1, 0)
end
BG.cframe = game.Workspace.CurrentCamera.CoordinateFrame
until not _G.FLYING
CONTROL = {F = 0, B = 0, L = 0, R = 0}
lCONTROL = {F = 0, B = 0, L = 0, R = 0}
SPEED = 0
BG:destroy()
BV:destroy()
LP.Character.Humanoid.PlatformStand = false
end)
end
MOUSE.KeyDown:connect(function(KEY)
if KEY:lower() == 'w' then
CONTROL.F = 1
elseif KEY:lower() == 's' then
CONTROL.B = -1
elseif KEY:lower() == 'a' then
CONTROL.L = -1 
elseif KEY:lower() == 'd' then 
CONTROL.R = 1
end
end)
MOUSE.KeyUp:connect(function(KEY)
if KEY:lower() == 'w' then
CONTROL.F = 0
elseif KEY:lower() == 's' then
CONTROL.B = 0
elseif KEY:lower() == 'a' then
CONTROL.L = 0
elseif KEY:lower() == 'd' then
CONTROL.R = 0
end
end)
FLY()
if gogo1000 == 2 then
_G.FLYING = false
gogo1000 = 0
end
end
end
end) end)
local Button1 = Section2:CreateButton("Anti Lag", function()
for _,v in pairs(game:GetService("Workspace"):GetDescendants()) do
if v:IsA("BasePart") and not v.Parent:FindFirstChild("Humanoid") then --- i stole this from the actual game LOL >-<
v.Material = Enum.Material.SmoothPlastic;
if v:IsA("Texture") then
v:Destroy();
end end;		
end;
end)

local Button1 = Section2:CreateButton("Teleport to RandomPlayer", function()
local randomPlayer = game.Players:GetPlayers()
[math.random(1,#game.Players:GetPlayers())]

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(randomPlayer.Character.Head.Position.X, randomPlayer.Character.Head.Position.Y, randomPlayer.Character.Head.Position.Z)) end)
local Button1 = Section2:CreateButton("Lag Switch F3", function()
local a = false
local b = settings()

game:service'UserInputService'.InputEnded:connect(function(i)
if i.KeyCode == Enum.KeyCode.F3 then
a = not a
b.Network.IncomingReplicationLag = a and 10 or 0
end
end) end) 
local Button1 = Section2:CreateButton("ServerHop", function()
local PlaceID = game.PlaceId
local AllIDs = {}
local foundAnything = ""
local actualHour = os.date("!*t").hour
local Deleted = false
local File = pcall(function()
    AllIDs = game:GetService('HttpService'):JSONDecode(readfile("NotSameServers.json"))
end)
if not File then
    table.insert(AllIDs, actualHour)
    writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
end
function TPReturner()
    local Site;
    if foundAnything == "" then
        Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
    else
        Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
    end
    local ID = ""
    if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
        foundAnything = Site.nextPageCursor
    end
    local num = 0;
    for i,v in pairs(Site.data) do
        local Possible = true
        ID = tostring(v.id)
        if tonumber(v.maxPlayers) > tonumber(v.playing) then
            for _,Existing in pairs(AllIDs) do
                if num ~= 0 then
                    if ID == tostring(Existing) then
                        Possible = false
                    end
                else
                    if tonumber(actualHour) ~= tonumber(Existing) then
                        local delFile = pcall(function()
                            delfile("NotSameServers.json")
                            AllIDs = {}
                            table.insert(AllIDs, actualHour)
                        end)
                    end
                end
                num = num + 1
            end
            if Possible == true then
                table.insert(AllIDs, ID)
                wait()
                pcall(function()
                    writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
                    wait()
                    game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                end)
                wait(4)
            end
        end
    end
end

function Teleport()
    while wait() do
        pcall(function()
            TPReturner()
            if foundAnything ~= "" then
                TPReturner()
            end
        end)
    end
end

-- If you'd like to use a script before server hopping (Like a Automatic Chest collector you can put the Teleport() after it collected everything.
Teleport() 
end)
local Button1 = Section2:CreateButton("Rejoin", function()
game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer) end)

local Toggle3 = Section3:CreateToggle("UI Toggle", nil, function(State)
	Window:Toggle(State)
end)
Toggle3:CreateKeybind(tostring(Config.Keybind):gsub("Enum.KeyCode.", ""), function(Key)
	Config.Keybind = Enum.KeyCode[Key]
end)
Toggle3:SetState(true)
Section3:CreateLabel("Credits zex#7397")
Section3:CreateLabel("Credits Scriptz#5456")
local Colorpicker3 = Section3:CreateColorpicker("UI Color", function(Color)
	Window:ChangeColor(Color)
end)
Colorpicker3:UpdateColor(Config.Color)
-- credits to jan for patterns
local Dropdown3 = Section4:CreateDropdown("Image")
local Option7 = Dropdown3:AddOption("Default", function(String)
	Window:SetBackground("2151741365")
end)
local Option8 = Dropdown3:AddOption("Hearts", function(String)
	Window:SetBackground("6073763717")
end)
local Option9 = Dropdown3:AddOption("Abstract", function(String)
	Window:SetBackground("6073743871")
end)
local Option10 = Dropdown3:AddOption("Hexagon", function(String)
	Window:SetBackground("6073628839")
end)
local Option11 = Dropdown3:AddOption("Circles", function(String)
	Window:SetBackground("6071579801")
end)
local Option12 = Dropdown3:AddOption("Lace With Flowers", function(String)
	Window:SetBackground("6071575925")
end)
local Option13 = Dropdown3:AddOption("Floral", function(String)
	Window:SetBackground("5553946656")
end)
Option7:SetOption()

local Colorpicker4 = Section4:CreateColorpicker("Color", function(Color)
	Window:SetBackgroundColor(Color)
end)
Colorpicker4:UpdateColor(Color3.new(1,1,1))

local Slider3 = Section4:CreateSlider("Transparency",0,1,nil,false, function(Value)
	Window:SetBackgroundTransparency(Value)
end)
Slider3:SetValue(0)

local Slider4 = Section4:CreateSlider("Tile Scale",0,1,nil,false, function(Value)
	Window:SetTileScale(Value)
end)
Slider4:SetValue(0.5)
local Meta = getrawmetatable(game)
local NewIndex = Meta.__newindex
setreadonly(Meta, false)

Meta.__newindex = newcclosure(function(t, k, ...)
   if not checkcaller() and (k == "WalkSpeed" or k == "JumpPower") then
       return
   end
   NewIndex(t, k, ...)
end)

setreadonly(Meta, true)

