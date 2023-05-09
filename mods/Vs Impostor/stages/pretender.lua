function onCreate()
	setScrollFactor('gfGroup', 0.95, 0.95);
	setProperty('gfGroup.antialiasing', true);
	setObjectOrder('gfGroup', 0);

	makeLuaSprite('bg sky', 'bg/pretender/bg sky', -1400, -800);
	scaleObject('bg sky', 1, 1);
	setScrollFactor('bg sky', 1, 1);
	setProperty('bg sky.antialiasing', true);
	setObjectOrder('bg sky', 1);

	makeLuaSprite('cloud fathest', 'bg/pretender/cloud fathest', -1100, -100);
	scaleObject('cloud fathest', 1, 1);
	setScrollFactor('cloud fathest', 1, 1);
	setProperty('cloud fathest.antialiasing', true);
	setObjectOrder('cloud fathest', 2);

	makeLuaSprite('cloud front', 'bg/pretender/cloud front', -1100, 0);
	scaleObject('cloud front', 1, 1);
	setScrollFactor('cloud front', 1, 1);
	setProperty('cloud front.antialiasing', true);
	setObjectOrder('cloud front', 3);

	makeLuaSprite('cloud 1', 'bg/pretender/cloud 1', -2000, -1200);
	scaleObject('cloud 1', 1, 1);
	setScrollFactor('cloud 1', 1, 1);
	setProperty('cloud 1.antialiasing', true);
	setObjectOrder('cloud 1', 4);

	makeLuaSprite('cloud 2', 'bg/pretender/cloud 2', -1100, -1200);
	scaleObject('cloud 2', 1, 1);
	setScrollFactor('cloud 2', 1, 1);
	setProperty('cloud 2.antialiasing', true);
	setObjectOrder('cloud 2', 5);

	makeLuaSprite('cloud 3', 'bg/pretender/cloud 3', -1300, -1400);
	scaleObject('cloud 3', 1, 1);
	setScrollFactor('cloud 3', 1, 1);
	setProperty('cloud 3.antialiasing', true);
	setObjectOrder('cloud 3', 6);

	makeLuaSprite('cloud 4', 'bg/pretender/cloud 4', -800, -1600);
	scaleObject('cloud 4', 1, 1);
	setScrollFactor('cloud 4', 1, 1);
	setProperty('cloud 4.antialiasing', true);
	setObjectOrder('cloud 4', 7);

	makeLuaSprite('bigcloud', 'bg/pretender/bigcloud', -1100, -1200);
	scaleObject('bigcloud', 1, 1);
	setScrollFactor('bigcloud', 1, 1);
	setProperty('bigcloud.antialiasing', true);
	setObjectOrder('bigcloud', 8);

	makeLuaSprite('ground', 'bg/pretender/ground', -1200, -750);
	scaleObject('ground', 1, 1);
	setScrollFactor('ground', 1, 1);
	setProperty('ground.antialiasing', true);
	setObjectOrder('ground', 9);

	makeLuaSprite('front plant', 'bg/pretender/front plant', 0, -650);
	scaleObject('front plant', 1, 1);
	setScrollFactor('front plant', 1, 1);
	setProperty('front plant.antialiasing', true);
	setObjectOrder('front plant', 10);

	makeLuaSprite('knocked over plant', 'bg/pretender/knocked over plant', 1000, 230);
	scaleObject('knocked over plant', 1, 1);
	setScrollFactor('knocked over plant', 1, 1);
	setProperty('knocked over plant.antialiasing', true);
	setObjectOrder('knocked over plant', 11);

	makeLuaSprite('knocked over plant 2', 'bg/pretender/knocked over plant 2', -800, 260);
	scaleObject('knocked over plant 2', 1, 1);
	setScrollFactor('knocked over plant 2', 1, 1);
	setProperty('knocked over plant 2.antialiasing', true);
	setObjectOrder('knocked over plant 2', 12);

	makeLuaSprite('tomatodead', 'bg/pretender/tomatodead', 950, 250);
	scaleObject('tomatodead', 1, 1);
	setScrollFactor('tomatodead', 1, 1);
	setProperty('tomatodead.antialiasing', true);
	setObjectOrder('tomatodead', 13);

	makeAnimatedLuaSprite('gf_dead_p', 'bg/pretender/gf_dead_p', 0, 100);
	scaleObject('gf_dead_p', 1.1, 1.1);
	addAnimationByPrefix('gf_dead_p', '', '', 24, false);
	setScrollFactor('gf_dead_p', 1, 1);
	setProperty('gf_dead_p.antialiasing', true);
	setObjectOrder('gf_dead_p', 14);

	makeLuaSprite('ripbozo', 'bg/pretender/ripbozo', 700, 450);
	scaleObject('ripbozo', 0.7, 0.7);
	setScrollFactor('ripbozo', 1, 1);
	setProperty('ripbozo.antialiasing', true);
	setObjectOrder('ripbozo', 15);

	makeLuaSprite('rhm dead', 'bg/pretender/rhm dead', 1350, 450);
	scaleObject('rhm dead', 1, 1);
	setScrollFactor('rhm dead', 1, 1);
	setProperty('rhm dead.antialiasing', true);
	setObjectOrder('rhm dead', 16);

	makeAnimatedLuaSprite('blued', 'bg/pretender/blued', -1150, 400);
	scaleObject('blued', 1, 1);
	addAnimationByPrefix('blued', '', '', 24, false);
	setScrollFactor('blued', 1.2, 1);
	setProperty('blued.antialiasing', true);
	setObjectOrder('blued', 17);

	makeLuaSprite('front pot', 'bg/pretender/front pot', -1550, 650);
	scaleObject('front pot', 1, 1);
	setScrollFactor('front pot', 1.2, 1);
	setProperty('front pot.antialiasing', true);
	setObjectOrder('front pot', 18);

	setScrollFactor('dadGroup', 1, 1);
	setProperty('dadGroup.antialiasing', true);
	setObjectOrder('dadGroup', 19);

	setScrollFactor('boyfriendGroup', 1, 1);
	setProperty('boyfriendGroup.antialiasing', true);
	setObjectOrder('boyfriendGroup', 20);

	makeLuaSprite('green22', 'bg/pretender/green', -1450, -550);
	scaleObject('green22', 1, 1);
	setScrollFactor('green22', 1.2, 1);
	setProperty('green22.antialiasing', true);
	setObjectOrder('green22', 21);

	makeLuaSprite('lightingpretender', 'bg/pretender/lightingpretender', -100, -20);
	scaleObject('lightingpretender', 0.4, 0.4);
	setObjectCamera('lightingpretender','hud')
	setObjectOrder('lightingpretender', 22);
end
function onCountdownTick(counter)
    if counter % 2 == 0 then
        objectPlayAnimation('blued', '', false)
        objectPlayAnimation('gf_dead_p', '', false)
    end
end
function onBeatHit()
    if curBeat % 2 == 0 then
        objectPlayAnimation('blued', '', false)
        objectPlayAnimation('gf_dead_p', '', false)
    end
end
local xx =  100;
local yy =  200;
local xx2 = 380;
local yy2 = 200;
local ofs = 20;
local followchars = true;
function onUpdate()
    setProperty('gf.alpha', 0)
    if followchars == true then
        if mustHitSection == false then
            setProperty('defaultCamZoom',0.5)
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

            setProperty('defaultCamZoom',0.5)
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
function onEndSong()
    followchars = false;
    triggerEvent('Camera Follow Pos','400','150')
end
