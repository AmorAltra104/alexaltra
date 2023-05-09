
local u = false;
local r = 0;
local shot = false;
local agent = 1
local health = 0;
local xx = 950;
local yy = 700;
local xx2 = 950;
local yy2 = 700;
local ofs = 20;
local followchars = true;
local del = 0;
local del2 = 0;


function onCreate()
    setProperty('camHUD.alpha', 0);
    precacheImage('bg/images/skeld/Reactor')
    precacheImage('bg/images/skeld/Reactorlight')
    precacheImage('bg/images/skeld/SkeldBack')
    precacheImage('bg/images/skeld/backthingsred')
    precacheImage('bg/images/skeld/ReactorRed')
    precacheImage('bg/images/skeld/ReactorLightRed')
    precacheImage('bg/images/skeld/brombom')
    precacheImage('bg/images/skeld/evilejected')
    addCharacterToList('blackdk', 'dad');
    addCharacterToList('monotone', 'dad');
    addCharacterToList('parasite', 'dad');
    addCharacterToList('impostor', 'dad');
    addCharacterToList('bf-fall', 'bf');
    
    makeLuaSprite('SkeldBack', 'bg/images/skeld/SkeldBack', -1029, -520)
    scaleObject("SkeldBack", 2, 2)
    addLuaSprite('SkeldBack', false)
    
    makeLuaSprite('BackThings', 'bg/images/skeld/BackThings', -1051, -546)
    scaleObject("BackThings", 1, 1)
    addLuaSprite('BackThings', false)
    
    makeLuaSprite('Floor', 'bg/images/skeld/Floor', -1000, -550)
    scaleObject("Floor", 2, 2)
    addLuaSprite('Floor', false)
    
    makeLuaSprite('Reactor', 'bg/images/skeld/Reactor', -974, -539)
    scaleObject("Reactor", 2, 2)
    addLuaSprite('Reactor', false)
    
    makeLuaSprite('Reactorlight', 'bg/images/skeld/Reactorlight', -974, -539)
    scaleObject("Reactorlight", 2, 2)
    addLuaSprite('Reactorlight', false)
    
    makeLuaSprite('wires1', 'bg/images/skeld/wires1', -1051, -546)
    scaleObject("wires1", 2, 2)
    addLuaSprite('wires1', false)
    
    makeLuaSprite('wires2', 'bg/images/skeld/wires2', -1051, -546)
    scaleObject("wires2", 2, 2)
    addLuaSprite('wires2', false)
    
    makeLuaSprite('wires3', 'bg/images/skeld/wires3', -1051, -546)
    scaleObject("wires3", 2, 2)
    addLuaSprite('wires3', false)
    
    makeLuaSprite('overlay', 'bg/images/skeld/overlay', -974, -539)
    scaleObject("overlay", 2, 2)
    addLuaSprite('overlay', true)
    
    makeAnimatedLuaSprite('defeat','bg/defeat/defeat',-700, -600)addAnimationByPrefix('defeat', 'bop','defeat',24,false)
    scaleObject("defeat", 2, 2)
	objectPlayAnimation('defeat','bop',false)
	setProperty('defeat.alpha',0)
    addLuaSprite('defeat', false)

    makeLuaSprite('black3', '', 0, 0);
    makeGraphic('black3',1300,100,'000000')
    addLuaSprite('black3', true);
	setObjectCamera('black3', 'hud')
	setObjectOrder('black3', 1)
	setProperty('black3.scale.x',1)
	setProperty('black3.scale.y',1)
	setProperty('black3.alpha',1)
	
	makeLuaSprite('black4', '', 0, 620);
    makeGraphic('black4',1300,100,'000000')
    addLuaSprite('black4', true);
	setObjectCamera('black4', 'hud')
	setObjectOrder('black4', 1)
	setProperty('black4.scale.x',1)
	setProperty('black4.scale.y',1)
	setProperty('black4.alpha',1)
	
	setObjectOrder('wires1', 5)
	setObjectOrder('wires2', 5)
	setObjectOrder('Floor', 1)
	setObjectOrder('wires3', 5)

end

function onEvent(n,v1,v2)
    if n == "Change Character" and v1 == "1" and v2 == "impostor" then
    removeLuaSprite('bggreen', false)
    setProperty('defeat.alpha',0)
        removeLuaSprite('bggreen2', false)
        removeLuaSprite('Reactor', false)
        removeLuaSprite('BackThings', false)
        removeLuaSprite('Reactorlight', false)
        
    makeLuaSprite('BackThings', 'bg/images/skeld/backthingsred', -1051, -546)
    scaleObject("BackThings", 1, 1)
    addLuaSprite('BackThings', false)
        
        makeLuaSprite('Reactor', 'bg/images/skeld/ReactorRed', -974, -539)
    scaleObject("Reactor", 2, 2)
    addLuaSprite('Reactor', false)
    
    makeLuaSprite('Reactorlight', 'bg/images/skeld/ReactorLightRed', -974, -539)
    scaleObject("Reactorlight", 2, 2)
    addLuaSprite('Reactorlight', false)
    
    setObjectOrder('BackThings', 2)
	setObjectOrder('Reactor', 4)
	setObjectOrder('Reactorlight', 5)

    end
    if n == "Change Character" and v1 == "1" and v2 == "monotone" then
        removeLuaSprite('bggreen', false)
        removeLuaSprite('bggreen2', false)
        setProperty('defeat.alpha',0)
        removeLuaSprite('Reactor', false)
        removeLuaSprite('BackThings', false)
        removeLuaSprite('Reactorlight', false)
        
    makeLuaSprite('BackThings', 'bg/images/skeld/BackThings', -1051, -546)
    scaleObject("BackThings", 1, 1)
    addLuaSprite('BackThings', false)
        
    makeLuaSprite('Reactor', 'bg/images/skeld/Reactor', -974, -539)
    scaleObject("Reactor", 2, 2)
    addLuaSprite('Reactor', false)
    
    makeLuaSprite('Reactorlight', 'bg/images/skeld/Reactorlight', -974, -539)
    scaleObject("Reactorlight", 2, 2)
    addLuaSprite('Reactorlight', false)
    
    setObjectOrder('BackThings', 2)
	setObjectOrder('Reactor', 3)
	setObjectOrder('Reactorlight', 4)

    end
    if n == "Change Character" and v1 == "1" and v2 == "parasite" then
    setProperty('defeat.alpha',0)
    
    makeLuaSprite('bggreen','bg/images/skeld/evilejected',-900, -1500);
    scaleObject("bggreen", 2, 2)
    setLuaSpriteScrollFactor('bggreen', 0.7, 0.7);
    addLuaSprite('bggreen',false);
    
    makeLuaSprite('bggreen2','bg/images/skeld/brombom',-900, -1500);
    scaleObject("bggreen2", 2, 2)
    setLuaSpriteScrollFactor('bggreen2', 0.7, 0.7);
    addLuaSprite('bggreen2',false);

    end
    if n == "Change Character" and v1 == "1" and v2 == "blackdk" then
        removeLuaSprite('bggreen', false)
        removeLuaSprite('bggreen2', false)
        setProperty('defeat.alpha',1)
    end

end
function onBeatHit()
    if curBeat % 2 == 0 then
    objectPlayAnimation('defeat','bop',false)
    end
end

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
    if curBeat == 6 then
        doTweenZoom('defeated', 'camGame', 0.4, 20, 'linear')
    end
    if curBeat == 32 then
        setProperty('defaultCamZoom',0.4)
		followchars = true
        xx = 950
        yy = 700
        xx2 = 950
        yy2 = 700
    end
    if curBeat == 81 then
        setProperty('defaultCamZoom',0.45)
		followchars = true
        xx = 850
        yy = 750
        xx2 = 1050
        yy2 = 750
    end
    if curBeat == 88 then
        setProperty('defaultCamZoom',0.8)
		followchars = true
        xx = 700
        yy = 800
        xx2 = 700
        yy2 = 800
    end
    if curBeat == 95 then
        setProperty('defaultCamZoom',0.5)
		followchars = true
        xx = 850
        yy = 750
        xx2 = 1050
        yy2 = 750
    end
    if curBeat == 112 then
        setProperty('defaultCamZoom',0.5)
		followchars = true
        xx = 950
        yy = 700
        xx2 = 950
        yy2 = 700
    end
    if curBeat == 128 then
     makeLuaSprite('black5', '', 0, 0);
    makeGraphic('black5',1300,800,'000000')
    addLuaSprite('black5', true);
	setObjectCamera('black5', 'other')
	setObjectOrder('black5', 1)
	setProperty('black5.scale.x',1)
	setProperty('black5.scale.y',1)
	setProperty('black5.alpha',1)
        setProperty('defaultCamZoom',0.6)
		followchars = true
        xx = 850
        yy = 750
        xx2 = 1050
        yy2 = 750
    end
    if curBeat == 143 then
    makeAnimatedLuaSprite('dialogue','bg/images/skeld/dialogue',150, 0)addAnimationByPrefix('dialogue', 'bop','dialogue',24,false)
	objectPlayAnimation('dialogue','bop',false)
	setObjectCamera('dialogue', 'other')
    addLuaSprite('dialogue', false)
    end
    if curBeat >= 160 and curBeat < 180 then
    removeLuaSprite('dialogue', false)
    removeLuaSprite('black5', false)
    end
    if curBeat == 192 then
        setProperty('defaultCamZoom',0.5)
		followchars = true
        xx = 950
        yy = 700
        xx2 = 950
        yy2 = 700
    end
    if curBeat == 208 then
        setProperty('defaultCamZoom',0.6)
		followchars = true
        xx = 850
        yy = 750
        xx2 = 1050
        yy2 = 750
    end
    if curBeat == 224 then
        setProperty('defaultCamZoom',0.5)
		followchars = true
        xx = 950
        yy = 700
        xx2 = 950
        yy2 = 700
    end
    if curBeat == 254 then
        setProperty('defaultCamZoom',0.6)
		followchars = true
        xx = 1300
        yy = 800
        xx2 = 1300
        yy2 = 800
    end
    if curBeat == 262 then
        setProperty('defaultCamZoom',0.7)
		followchars = true
        xx = 1400
        yy = 800
        xx2 = 1400
        yy2 = 800
    end
    if curBeat == 270 then
        setProperty('defaultCamZoom',0.8)
		followchars = true
        xx = 1450
        yy = 800
        xx2 = 1450
        yy2 = 800
    end
    if curBeat == 278 then
        setProperty('defaultCamZoom',0.9)
		followchars = true
        xx = 1500
        yy = 800
        xx2 = 1500
        yy2 = 800
    end
    if curBeat == 294 then
        setProperty('defaultCamZoom',0.4)
		followchars = true
        xx = 850
        yy = 700
        xx2 = 850
        yy2 = 700
    end
    if curBeat == 312 then
        setProperty('defaultCamZoom',0.45)
		followchars = true
        xx = 850
        yy = 750
        xx2 = 1050
        yy2 = 750
    end
    if curBeat == 328 then
        setProperty('defaultCamZoom',0.55)
		followchars = true
        xx = 650
        yy = 750
        xx2 = 650
        yy2 = 750
    end
    if curBeat == 334 then
        setProperty('defaultCamZoom',0.45)
		followchars = true
        xx = 650
        yy = 750
        xx2 = 650
        yy2 = 750
    end
    if curBeat == 344 then
        setProperty('defaultCamZoom',0.7)
		followchars = true
        xx = 1400
        yy = 800
        xx2 = 1300
        yy2 = 800
    end
    if curBeat == 360 then
        setProperty('defaultCamZoom',0.5)
		followchars = true
        xx = 950
        yy = 700
        xx2 = 950
        yy2 = 700
    end
    if curBeat == 362 then
    makeLuaSprite('black5', '', 0, 0);
    makeGraphic('black5',1300,800,'000000')
    addLuaSprite('black5', true);
	setObjectCamera('black5', 'other')
	setObjectOrder('black5', 1)
	setProperty('black5.scale.x',1)
	setProperty('black5.scale.y',1)
	setProperty('black5.alpha',1)
	end
	if curBeat == 423 then
	removeLuaSprite('black5', false)
	end
    if curBeat == 456 then
        setProperty('defaultCamZoom',0.6)
		followchars = true
        xx = 850
        yy = 750
        xx2 = 1050
        yy2 = 750
    end
    
    
    
end

