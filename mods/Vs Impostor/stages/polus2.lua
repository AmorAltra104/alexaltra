function onCreate()
	makeLuaSprite('newsky', 'bg/images/polus/newsky', 0,0);
	scaleObject('newsky', 0.75, 0.75);
	setScrollFactor('newsky', 1, 1);
	setProperty('newsky.antialiasing', true);
	setObjectOrder('newsky', 0);

	makeLuaSprite('newcloud', 'bg/images/polus/newcloud', 0, 0);
	scaleObject('newcloud', 0.75, 0.75);
	setScrollFactor('newcloud', 1, 1);
	setProperty('newcloud.antialiasing', true);
	setObjectOrder('newcloud', 1);
	setProperty('newcloud.alpha', 0.59)

	makeLuaSprite('newrocks', 'bg/images/polus/newrocks', 0, 0);
	scaleObject('newrocks', 0.75, 0.75);
	setScrollFactor('newrocks', 1, 1);
	setProperty('newrocks.antialiasing', true);
	setObjectOrder('newrocks', 2);
	setProperty('newrocks.alpha', 0.49)

	makeLuaSprite('backwall', 'bg/images/polus/backwall', 0, 0);
	scaleObject('backwall', 0.75, 0.75);
	setScrollFactor('backwall', 1, 1);
	setProperty('backwall.antialiasing', true);
	setObjectOrder('backwall', 3);

	makeLuaSprite('newstage', 'bg/images/polus/newstage', 0,0);
	scaleObject('newstage', 0.75, 0.75);
	setScrollFactor('newstage', 1, 1);
	setProperty('newstage.antialiasing', true);
	setObjectOrder('newstage', 4);

	makeLuaSprite('newlava', 'bg/images/polus/newlava',0,0);
	scaleObject('newlava', 0.75, 0.75);
	setScrollFactor('newlava', 1, 1);
	setProperty('newlava.antialiasing', true);
	setObjectOrder('newlava', 5);

	setScrollFactor('gfGroup', 1, 1);
	setProperty('gfGroup.antialiasing', true);
	setObjectOrder('gfGroup', 6);

	setScrollFactor('boyfriendGroup', 1, 1);
	setProperty('boyfriendGroup.antialiasing', true);
	setObjectOrder('boyfriendGroup', 7);

	setScrollFactor('dadGroup', 1, 1);
	setProperty('dadGroup.antialiasing', true);
	setObjectOrder('dadGroup', 8);

	makeLuaSprite('newoverlay', 'bg/images/polus/newoverlay',0,0);
	scaleObject('newoverlay', 0.75, 0.75);
	setScrollFactor('newoverlay', 1, 1);
	setProperty('newoverlay.antialiasing', true);
	setObjectOrder('newoverlay', 9);
	setProperty('newoverlay.alpha', 0.7)

    makeAnimatedLuaSprite('snow', 'bg/images/polus/snowfront',0,100)
    addAnimationByPrefix('snow', 'idle', 'snow fall front instance', 24, true)
	scaleObject('snow',2, 2);
    setProperty('snow.alpha', 0.3)
	setObjectOrder('snow', 10);
end
local xx =  1200;
local yy =  1000;
local xx2 = 1400;
local yy2 = 1000;
local ofs = 10;
local followchars = true;
function onUpdate()
    if followchars == true then
        if mustHitSection == false then
            setProperty('defaultCamZoom',0.7)
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