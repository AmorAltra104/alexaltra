
local u = false;
local r = 0;
local shot = false;
local agent = 1
local health = 0;
local xx = 1200;
local yy = 800;
local xx2 = 1400;
local yy2 = 800;
local ofs = 10;
local followchars = true;
local del = 0;
local del2 = 0;
function onCreate()
    makeLuaSprite('wall','bg/images/chef/Back Wall Kitchen',0, -20);
    scaleObject("wall", 0.8, 0.8)
    addLuaSprite('wall',false);
    
    makeLuaSprite('floor','bg/images/chef/Chef Floor',-850, 970);
    addLuaSprite('floor',false);
    
    makeLuaSprite('backshit','bg/images/chef/Back Table Kitchen',-50, 250);
    scaleObject("backshit", 0.8, 0.8)
    addLuaSprite('backshit',false);
    
    makeLuaSprite('oven','bg/images/chef/oven', 1600, 400);
    scaleObject("oven", 0.8, 0.8)
    addLuaSprite('oven',false);
    
    makeAnimatedLuaSprite('gray','bg/images/chef/Boppers',1000, 525)addAnimationByPrefix('gray', 'bop','grey',24,false)
    objectPlayAnimation('gray','bop',false)
    scaleObject("gray", 0.8, 0.8)
    addLuaSprite('gray',false);
    
    makeAnimatedLuaSprite('saster','bg/images/chef/Boppers',1300, 400)addAnimationByPrefix('saster', 'bop','saster',24,false)
    objectPlayAnimation('saster','bop',false)
    scaleObject("saster", 1.2, 1.2)
    addLuaSprite('saster',false);
    
    makeLuaSprite('frontable','bg/images/chef/Kitchen Counter',800, 700);
    addLuaSprite('frontable',false);
    
    makeLuaSprite('chefBluelight','bg/images/chef/bluelight',0, -300);
    setBlendMode('chefBluelight','add')
    addLuaSprite('chefBluelight',true);
    
    makeLuaSprite('chefBlacklight','bg/images/chef/black_overhead_shadow',0, -300);
    addLuaSprite('chefBlacklight',true);
end
function onBeatHit()
    if curBeat % 2 == 0 then
    objectPlayAnimation('gray','bop',false)
    objectPlayAnimation('saster','bop',false)
    end
end
--chefBluelight.blend = ADD;

function onUpdate()
	setProperty('gf.alpha', 0);
	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
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

	if curStep >= 171 and curStep < 176 then
		setProperty('defaultCamZoom',1)
	end

    if curBeat == 44 then
        setProperty('defaultCamZoom', 0.8)
    end

    if curBeat == 112 then
		setProperty('defaultCamZoom',0.9)
		xx = 1180;
		yy = 820;
	end

	if curBeat == 113 then
		setProperty('defaultCamZoom',1)
		xx = 1160;
		yy = 840;
	end

	if curBeat == 114 then
		setProperty('defaultCamZoom',1.1)
		xx = 1140;
		yy = 860;
	end

	if curBeat == 115 then
		setProperty('defaultCamZoom',1.2)
		xx = 1120;
		yy = 880;
	end

	if curBeat == 116 then
		setProperty('defaultCamZoom',0.8)
		xx = 1200;
		yy = 800;
	end

	if curStep == 206 or curStep == 207 then
		setProperty('defaultCamZoom',1)
	end

	if curStep >= 399 and curStep < 404 then
		setProperty('defaultCamZoom',1)
	end

	if curStep == 404 then
		setProperty('defaultCamZoom',0.8)
	end

	if curStep == 1172 then
		setProperty('defaultCamZoom', 0.8)
	end

	if curStep >= 1164 and curStep < 1172 then
		setProperty('defaultCamZoom',1)
	end

	if curStep == 1172 then
		setProperty('defaultCamZoom',0.8)
	end

	if curBeat == 304 then
		setProperty('defaultCamZoom',0.9)
		xx = 1180;
		yy = 820;
	end

	if curBeat == 305 then
		setProperty('defaultCamZoom',1)
		xx = 1160;
		yy = 840;
	end

	if curBeat == 306 then
		setProperty('defaultCamZoom',1.1)
		xx = 1140;
		yy = 860;
	end

	if curBeat == 307 then
		setProperty('defaultCamZoom',1.2)
		xx = 1120;
		yy = 880;
	end

	if curBeat == 308 then
		setProperty('defaultCamZoom',0.8)
		xx = 1200;
		yy = 800;
	end

	if curBeat == 320 then
		setProperty('defaultCamZoom',0.9)
		xx = 1180;
		yy = 820;
	end

	if curBeat == 321 then
		setProperty('defaultCamZoom',1)
		xx = 1160;
		yy = 840;
	end

	if curBeat == 322 then
		setProperty('defaultCamZoom',1.1)
		xx = 1140;
		yy = 860;
	end

	if curBeat == 323 then
		setProperty('defaultCamZoom',1.2)
		xx = 1120;
		yy = 880;
	end

	if curBeat >= 324 then
		setProperty('defaultCamZoom',0.7)
		followchars = false
		triggerEvent('Camera Follow Pos', 1300, 700)
	end
    
end

