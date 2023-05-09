local xx = 1725;
local yy = 1100;
local xx2 = 1725;
local yy2 = 1100;
local ofs = 10;
local followchars = true;
function onCreate()
makeLuaSprite('wallbgthing','bg/green/3/wallbgthing',0,0)
addLuaSprite('wallbgthing',false)

makeLuaSprite('floornew','bg/green/3/floornew',0,0)
addLuaSprite('floornew',false)

makeAnimatedLuaSprite('yellowcoti','bg/green/3/yellowcoti',875,915)
addAnimationByPrefix('yellowcoti','Pillars with crewmates','Pillars with crewmates',24,false)
addLuaSprite('yellowcoti',false)

makeLuaSprite('backbars','bg/green/3/backbars',0,0)
addLuaSprite('backbars',false)

makeAnimatedLuaSprite('browngeoff','bg/green/3/browngeoff',450,1000)
addAnimationByPrefix('browngeoff','Pillars with crewmates','Pillars with crewmates',24,false)
addLuaSprite('browngeoff',false)

makeLuaSprite('frontpillars','bg/green/3/frontpillars',0,0)
addLuaSprite('frontpillars',false)

makeAnimatedLuaSprite('ball lol','bg/green/3/ball lol',1200,0)
addAnimationByPrefix('ball lol','core','core',24,true)
addLuaSprite('ball lol',false)
end
function onBeatHit()
if getProperty('curBeat') % 4 == 0 then
objectPlayAnimation('yellowcoti','Pillars with crewmates',false)
objectPlayAnimation('browngeoff','Pillars with crewmates',false)
end
end
function onUpdate()
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
    if curBeat == 64 then
        setProperty('defaultCamZoom',0.8)
		followchars = true
        xx = 1450
        yy = 1150
        xx2 = 1950
        yy2 = 1150
    end
    if curBeat == 128 then
        setProperty('defaultCamZoom',0.7)
		followchars = true
        xx = 1725
        yy = 1100
        xx2 = 1725
        yy2 = 1100
    end
    if curBeat == 192 then
        setProperty('defaultCamZoom',0.8)
		followchars = true
        xx = 1450
        yy = 1150
        xx2 = 1950
        yy2 = 1150
    end
    if curBeat == 224 then
        setProperty('defaultCamZoom',0.8)
		followchars = true
        xx = 1725
        yy = 1100
        xx2 = 1725
        yy2 = 1100
    end
    if curBeat == 256 then
        setProperty('defaultCamZoom',0.8)
		followchars = true
        xx = 1450
        yy = 1150
        xx2 = 1950
        yy2 = 1150
    end
    if curBeat == 320 then
        setProperty('defaultCamZoom',0.7)
		followchars = true
        xx = 1725
        yy = 1100
        xx2 = 1725
        yy2 = 1100
    end
    if curBeat == 384 then
        setProperty('defaultCamZoom',0.8)
		followchars = true
        xx = 1450
        yy = 1150
        xx2 = 1950
        yy2 = 1150
    end
    if curBeat == 479 then
        setProperty('defaultCamZoom',0.9)
		followchars = true
        xx = 1725
        yy = 1200
        xx2 = 1725
        yy2 = 1200
    end
    if curBeat == 544 then
        setProperty('defaultCamZoom',0.8)
		followchars = true
        xx = 1725
        yy = 1100
        xx2 = 1725
        yy2 = 1100
    end
    if curBeat == 608 then
        setProperty('defaultCamZoom',0.9)
		followchars = true
        xx = 1725
        yy = 1200
        xx2 = 1725
        yy2 = 1200
    end
    if curBeat == 672 then
        setProperty('defaultCamZoom',0.7)
		followchars = true
        xx = 1725
        yy = 1100
        xx2 = 1725
        yy2 = 1100
    end

    
end

