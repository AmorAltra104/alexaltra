local xx = 1300;
local yy = 700;
local xx2 = 1800;
local yy2 = 700;
local ofs = 10;
local followchars = true;
function onCreate()
    makeLuaSprite('wall', 'bg/grey/graybg', 0, 0)
	addLuaSprite('wall', false)
	scaleObject('wall', 1, 1);

    makeLuaSprite('red', 'bg/grey/grayfg', 0, 0)
	addLuaSprite('red', true)
	scaleObject('red', 1, 1);

    makeAnimatedLuaSprite('b2lack', 'bg/grey/grayblack', 230, 350)
	addLuaSprite('b2lack', false)
    addAnimationByPrefix('b2lack', 'idle', 'whoisthismf', 24, false)
	scaleObject('b2lack', 1, 1);

    makeAnimatedLuaSprite('glowy', 'bg/grey/grayglowy', 1935, 450)
	addLuaSprite('glowy', false)
    addAnimationByPrefix('glowy', 'idle', 'jar??', 24, true)
	scaleObject('glowy', 1, 1);

    makeLuaSprite('light', 'bg/grey/grayoverlay', 0, 0)
	addLuaSprite('light', true)
	scaleObject('light', 1, 1);
    setProperty('light.alpha', 0.4);

    makeLuaSprite('?', nil, 500, 0)
    makeGraphic('?', 2500, 1500, '000000')
    addLuaSprite('?', true)
    setProperty('?.alpha', 0.6);
end
function onBeatHit()
    if curBeat % 2 == 0 then
    objectPlayAnimation('b2lack', 'idle')
    end
end
function onUpdate()
    if followchars == true then
        if mustHitSection == false then
            setProperty('defaultCamZoom',0.8)
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

            setProperty('defaultCamZoom',0.8)
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
    
end

