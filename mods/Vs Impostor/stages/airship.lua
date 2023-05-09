
local u = false;
local r = 0;
local shot = false;
local agent = 1
local health = 0;
local xx = 700;
local yy = -2000;
local xx2 = 1634.05;
local yy2 = -54.3;
local ofs = 50;
local followchars = true;
local del = 0;
local del2 = 0;
function onCreate()
    
    makeLuaSprite('sky','bg/airship/sky',-1504, -897.55);
    scaleObject("sky", 1.5, 1.5)
    setLuaSpriteScrollFactor('sky', 0, 0);
    addLuaSprite('sky', false)
    
    makeLuaSprite('farthestClouds','bg/airship/farthestClouds',-1448.05, -142.2);
    setLuaSpriteScrollFactor('farthestClouds', 0.1, 0.1);
    addLuaSprite('farthestClouds', false)
    
    makeLuaSprite('farthestClouds2','bg/airship/farthestClouds',3075.95, -142.2);
    setLuaSpriteScrollFactor('farthestClouds2', 0.1, 0.1);
    addLuaSprite('farthestClouds2', false)
    
    makeLuaSprite('backClouds','bg/airship/backClouds',-1462.4, 76.55);
    setLuaSpriteScrollFactor('backClouds', 0.2, 0.2);
    addLuaSprite('backClouds', false)
    
    makeLuaSprite('backClouds2','bg/airship/backClouds',3052.4, 76.55);
    setLuaSpriteScrollFactor('backClouds2', 0.2, 0.2);
    addLuaSprite('backClouds2', false)
    
    makeLuaSprite('airship','bg/airship/airship',1800, -1300);
    scaleObject("airship", 1, 1)
    addLuaSprite('airship', false)
    
    makeAnimatedLuaSprite('airshipFan','bg/airship/airshipFan',3001, -345)addAnimationByPrefix('airshipFan', 'idle','ala avion instance 1',24,true)
	objectPlayAnimation('airshipFan','idle',false)
    scaleObject("airshipFan", 1, 1)
    addLuaSprite('airshipFan', false)
    
    makeLuaSprite('bigCloud','bg/airship/bigCloud',3507.15, -744.2);
    setLuaSpriteScrollFactor('bigCloud', 0.4, 0.4);
    addLuaSprite('bigCloud', false)
    
    makeLuaSprite('frontClouds','bg/airship/frontClouds',-1903.9, 422.15);
    setLuaSpriteScrollFactor('frontClouds', 0.3, 0.3);
    addLuaSprite('frontClouds', false)
    
    makeLuaSprite('frontClouds2','bg/airship/frontClouds',6092.2, 422.15);
    setLuaSpriteScrollFactor('frontClouds2', 0.3, 0.3);
    addLuaSprite('frontClouds2', false)
    
    makeLuaSprite('fgPlatform','bg/airship/fgPlatform',-1454.2, 282.25);
    addLuaSprite('fgPlatform', false)
    
    makeLuaSprite('fgPlatform2','bg/airship/fgPlatform',4275.15, 282.25);
    addLuaSprite('fgPlatform2', false)
    
    makeAnimatedLuaSprite('leg','characters/blacklegs',196, 345)addAnimationByPrefix('leg', 'idle','legs',24,true)
	objectPlayAnimation('leg','idle',false)
    scaleObject("leg", 1.27, 1.27)
    addLuaSprite('leg', false)
    
    makeAnimatedLuaSprite('leg2','characters/bf_legs',1508, 401)addAnimationByPrefix('leg2', 'idle','run legs',24,true)
	objectPlayAnimation('leg2','idle',false)
    scaleObject("leg2", 1.2, 1.2)
    addLuaSprite('leg2', false)
    
    doTweenX('fgPlatform', 'fgPlatform', -7384.8, 2, "linear")
    doTweenX('fgPlatform2', 'fgPlatform2', -1455.05, 2, "linear")
    
    doTweenX('farthestClouds', 'farthestClouds', -5978.95, 15, "linear")
    doTweenX('farthestClouds2', 'farthestClouds2', -1460.05, 15, "linear")
    
    doTweenX('backClouds', 'backClouds', -5951.4, 10, "linear")
    doTweenX('backClouds2', 'backClouds2', -1462.4, 10, "linear")
    
    doTweenX('bigCloud', 'bigCloud', -3000, 30, "linear")
    doTweenX('frontClouds', 'frontClouds', -9900.2, 15, "linear")
    doTweenX('frontClouds2', 'frontClouds2', -1903.9, 15, "linear")
    
    setObjectOrder('farthestClouds', '1')
    setObjectOrder('farthestClouds2', '1')
    setObjectOrder('backClouds', '5')
    setObjectOrder('backClouds2', '5')
    setObjectOrder('airship', '15')
    setObjectOrder('airshipFan', '18')
    setObjectOrder('bigCloud', '20')
    setObjectOrder('frontClouds', '20')
    setObjectOrder('frontClouds2', '20')
    setObjectOrder('fgPlatform', '27')
    setObjectOrder('fgPlatform2', '30')
    setObjectOrder('gfGroup', '35')
    setObjectOrder('leg', '38')
    setObjectOrder('leg2', '38')
    setObjectOrder('dadGroup', '40')
    setObjectOrder('boyfriendGroup', '40')
    
    
    runTimer('fgPlatform', 2)
    runTimer('fgPlatform2', 2)
    runTimer('bigCloud', 30)
    runTimer('frontClouds', 10)
    runTimer('backClouds', 10)
    runTimer('farthestClouds', 15)
end

function onTimerCompleted(tag, loops, loopsleft)
    if tag == 'fgPlatform' then
    setProperty('fgPlatform.x',-1454.2)
    doTweenX('fgPlatform', 'fgPlatform', -7184.8, 2, "linear")
    
    runTimer('fgPlatform', 2)
    end
    if tag == 'fgPlatform2' then
    setProperty('fgPlatform2.x',4275.15)
    doTweenX('fgPlatform2', 'fgPlatform2', -1454.2, 2, "linear")
    
    runTimer('fgPlatform2', 2)
    end
    if tag == 'bigCloud' then
    setProperty('bigCloud.x',3507.15)
    doTweenX('bigCloud', 'bigCloud', -3000, 30, "linear")
    
    runTimer('bigCloud', 30)
    end
    if tag == 'frontClouds' then
    setProperty('frontClouds.x',-1903.9)
   setProperty('frontClouds2.x',6092.2)
   
    doTweenX('frontClouds', 'frontClouds', -9900.2, 10, "linear")
    doTweenX('frontClouds2', 'frontClouds2', -1903.9, 10, "linear")
    
    runTimer('frontClouds', 10)
    end
    if tag == 'farthestClouds' then
    setProperty('farthestClouds.x',-1448.05)
    setProperty('farthestClouds2.x',3075.95)
    
    doTweenX('farthestClouds', 'farthestClouds', -5978.95, 15, "linear")
    doTweenX('farthestClouds2', 'farthestClouds2', -1460.05, 15, "linear")
    
    runTimer('farthestClouds', 15)
    end
    if tag == 'backClouds' then
    setProperty('backClouds.x',-1462.4)
    setProperty('backClouds2.x',3052.4)

    
    doTweenX('backClouds', 'backClouds', -5951.4, 10, "linear")
    doTweenX('backClouds2', 'backClouds2', -1462.4, 10, "linear")
    
    runTimer('backClouds', 10)
    end
end

function onEvent(n,v1,v2)
    if n == "Change Character" and v1 == "1" and v2 == "blackalt" then
    setProperty('dad.y', -225)
    setProperty('dad.x', 315)
    end
    if n == "bye gf" then
    doTweenX('6djd', 'gf', -2500, 2, "quadin")
    end
end

function onUpdate()
	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
    if followchars == true then
        if mustHitSection == false then
           
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
        else

            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
    if curStep == 1 then
        setProperty('defaultCamZoom',0.3)
		followchars = true
        xx = 1634.05
        yy = -54.3
        xx2 = 1634.05
        yy2 = -54.3
    end
    if curBeat == 64 then
        setProperty('defaultCamZoom', 0.4)
        followchars = true
        xx = 800
        yy = 150
        xx2 = 1200
        yy2 = 150
    end
    if curBeat == 96 then
        setProperty('defaultCamZoom', 0.6)
        followchars = true
        xx = 700
        yy = 150
        xx2 = 1200
        yy2 = 150
    end
    if curBeat == 128 then
        setProperty('defaultCamZoom', 0.4)
        xx = 800
        yy = 150
        xx2 = 1200
        yy2 = 150
    end
    if curBeat == 155 then
        setProperty('defaultCamZoom', 0.8)
        followchars = true
        xx = 450
        yy = 150
        xx2 = 450
        yy2 = 150
    end
    if curBeat == 160 then
        setProperty('defaultCamZoom', 0.4)
        followchars = true
        xx = 800
        yy = 150
        xx2 = 1200
        yy2 = 150
    end
    if curBeat == 192 then
        setProperty('defaultCamZoom',0.6)
		followchars = true
        xx = 700
        yy = 150
        xx2 = 1200
        yy2 = 150
    end
    if curBeat == 256 then
        setProperty('defaultCamZoom', 0.4)
        followchars = true
        xx = 800
        yy = 150
        xx2 = 1200
        yy2 = 150
    end
    if curBeat == 288 then
        setProperty('defaultCamZoom',0.6)
		followchars = true
        xx = 700
        yy = 150
        xx2 = 1200
        yy2 = 150
    end
    if curBeat == 320 then
        setProperty('defaultCamZoom', 0.3)
        followchars = true
        xx = 1634.05
        yy = -54.3
        xx2 = 1634.05
        yy2 = -54.3
    end
    if curBeat == 384 then
        setProperty('defaultCamZoom',0.6)
		followchars = true
        xx = 700
        yy = 150
        xx2 = 1200
        yy2 = 150
    end

    songPos = getSongPosition()
local currentBeat = (songPos/1000)*(curBpm/60)
doTweenAngle('sus2', 'camHUD', 1*math.cos((currentBeat+0.1*2)*math.pi), 0.00001)
end

