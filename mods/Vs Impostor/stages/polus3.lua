function onCreate()
	makeAnimatedLuaSprite('wallBP0', 'bg/images/polus/wallBP', -400, -650);
	scaleObject('wallBP0', 1, 1);
	addAnimationByPrefix('wallBP0', '', '', 24, true);
	setScrollFactor('wallBP0', 1, 1);
	setProperty('wallBP0.antialiasing', true);
	addLuaSprite('wallBP0', false)

	makeLuaSprite('platform', 'bg/images/polus/platform', 1050, 650);
	scaleObject('platform', 1, 1);
	setScrollFactor('platform', 1, 1);
	setProperty('platform.antialiasing', true);
	addLuaSprite('platform', false)

	makeAnimatedLuaSprite('bubbles', 'bg/images/polus/bubbles', 800, 850);
	scaleObject('bubbles', 1, 1);
	addAnimationByPrefix('bubbles', '', '', 24, true);
	setScrollFactor('bubbles', 1, 1);
	setProperty('bubbles.antialiasing', true);
	addLuaSprite('bubbles', false)

	makeLuaSprite('overlaythjing', 'bg/images/polus/overlaythjing', 635, -290);
	scaleObject('overlaythjing', 1.5, 1.5);
	setScrollFactor('overlaythjing', 1, 1);
	setProperty('overlaythjing.antialiasing', true);
	addLuaSprite('overlaythjing', true)

	makeLuaSprite('newlava', 'bg/images/polus/newlava', -1838, -2222);
	scaleObject('newlava', 2, 2);
	setScrollFactor('newlava', 1, 1);
	setProperty('newlava.antialiasing', true);
	addLuaSprite('newlava', true)
	setProperty('newlava.alpha', 0.4);
end

local xx = 1760;
local yy = 380;
local xx2 = 1900;
local yy2 = 435;
local ofs = 20;
local followchars = true;
function onUpdate()
    setProperty("gf.alpha", 0)
    if followchars == true then
        if mustHitSection == false then
            setProperty('defaultCamZoom',0.6)
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

            setProperty('defaultCamZoom',0.7)
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
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
    
end
