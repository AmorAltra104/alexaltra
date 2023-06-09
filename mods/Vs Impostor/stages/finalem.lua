local u = false;
local r = 0;
local shot = false;
local agent = 1
local health = 0;
local xx = 500;
local yy = 600;
local xx2 = 700;
local yy2 = 700;
local ofs = 100;
local followchars = true;
local del = 0;
local del2 = 0;
function onCreatePost()
    makeLuaSprite('bg1', 'bg/finale/defeatfnf', -1495, -690)
    addLuaSprite('bg1', true)
    setScrollFactor('bg1', 1, 1)
    scaleObject('bg1', 4, 4)
    setProperty('bg1.alpha', 0.55)
    
    makeLuaSprite('bg2', 'bg/finale/bgg', -1600, -400)
    addLuaSprite('bg2', false)
    setScrollFactor('bg2', 1, 1)
    scaleObject('bg2', 1.1, 1.1)
    
    makeLuaSprite('bg3', 'bg/finale/bg', -790, -530)
    addLuaSprite('bg3', false)
    setScrollFactor('bg3', 1, 1)
    scaleObject('bg3', 1.1, 1.1)
    
    makeLuaSprite('bg4', 'bg/finale/dead', 800, -270)
    addLuaSprite('bg4', false)
    setScrollFactor('bg4', 1, 1)
    scaleObject('bg4', 1.1, 1.1)
    
    makeLuaSprite('bg5', 'bg/finale/splat', 370, 1200);
    addLuaSprite('bg5', true)
    setScrollFactor('bg5', 1, 1)
    scaleObject('bg5', 1.1, 1.1)
    
    makeLuaSprite('bg6', 'bg/finale/fore', -750, 160);
    addLuaSprite('bg6', true)
    setScrollFactor('bg3', 1, 1)
    scaleObject('bg6', 1.1, 1.1)
    
    makeLuaSprite('lamp', 'bg/finale/lamp', 1190, -280);
    addLuaSprite('lamp', true)
    setScrollFactor('lamp', 1, 1)
    scaleObject('lamp', 1.1, 1.1)
    
    makeAnimatedLuaSprite('light', 'bg/finale/light', -230, -100)
    addLuaSprite('light', true)
    setScrollFactor('light', 1, 1)
    scaleObject('light', 1.1, 1.1)
    addAnimationByPrefix('light', 'idle', 'light', 24, true)
    setProperty('light.alpha', 0.7)
    
    makeLuaSprite('dark', 'bg/finale/dark', -1550, -608);
    addLuaSprite('dark', true)
    setScrollFactor('dark', 1, 1)
    scaleObject('dark', 1.5, 1.5)
    setProperty('dark.alpha', 0.85)
    
    makeAnimatedLuaSprite('flash', 'bg/finale/finaleFlashback', -970, -150)
    addLuaSprite('flash', false)
    setScrollFactor('flash', 1, 1)
    scaleObject('flash', 1.7, 1.7)
    addAnimationByPrefix('flash', 'moog', 'finaleFlashback moog', 24, true)
    addAnimationByPrefix('flash', 'doog', 'finaleFlashback doog', 24, true)
    addAnimationByPrefix('flash', 'toog', 'finaleFlashback toog', 24, true)
    setProperty('flash.visible', false)
    
    setProperty('healthBar.visible', false)
    setProperty('healthBarBG.visible', false)
    setProperty('iconP1.visible', false)
    setProperty('iconP2.visible', false)
    
    if downscroll then
        makeLuaSprite('healthBarFinaleBlue', 'healthBarFinaleBlue', 200, -50);
        makeAnimatedLuaSprite('healthBarFinale', 'healthBarFinale', 235, 58)
        setProperty('healthBarFinaleBlue.flipY', true)
        setProperty('healthBarFinale.flipY', true)
        
        makeAnimatedLuaSprite('blackIcon', 'icons/icon-blackFinale', getProperty('iconP2.x')+100, getProperty('iconP2.y')-75)
    else
        makeAnimatedLuaSprite('healthBarFinale', 'healthBarFinale', 235, 558)
        makeLuaSprite('healthBarFinaleBlue', 'healthBarFinaleBlue', 200, 530);
        
        makeAnimatedLuaSprite('blackIcon', 'icons/icon-blackFinale', getProperty('iconP2.x')+100, getProperty('iconP2.y')-125)
    end
    
    setObjectCamera('healthBarFinaleBlue', 'hud')
    scaleObject("healthBarFinaleBlue", 0.6, 0.6)
    addLuaSprite('healthBarFinaleBlue', false)
   
    setObjectCamera('healthBarFinale', 'hud')
    scaleObject("healthBarFinale", 0.6, 0.6)
    addLuaSprite('healthBarFinale', false)
    
    setProperty('healthBarFinaleBlue.visible', false)
    setProperty('healthBarFinale.visible', false)
    
    addLuaSprite('blackIcon', true)
    setScrollFactor('blackIcon', 1, 1)
    scaleObject('blackIcon', 0.7, 0.7)
    setObjectCamera('blackIcon', 'hud')
    addAnimationByPrefix('blackIcon', 'normal', 'black icon calm', 24, true)
    addAnimationByPrefix('blackIcon', 'dead', 'black icon mad', 24, true)
    setProperty('blackIcon.visible', false)
    
    makeLuaSprite('black', nil, 0, 0)
    makeGraphic('black', 1280, 720, '000000')
	addLuaSprite('black', false)
	setObjectCamera('black', 'other')
	
	setProperty('camHUD.alpha', 0)
    
    for i = 0, 101 do
        addAnimationByPrefix('healthBarFinale', 'health'..i, i..'health', 24, false)
    end
    
    setObjectOrder('dadGroup', getObjectOrder('boyfriendGroup') + 1)  
end

function onSongStart()
    setProperty('bgg.visible', false)
    setProperty('lamp.visible', false)
    setProperty('light.visible', false)
    setProperty('bg2.visible', false)
    setProperty('bg3.visible', false)
    setProperty('bg4.visible', false)
    setProperty('bg5.visible', false)
    setProperty('bg6.visible', false)
    setProperty('dark.visible', false)
end

function onStepHit()
    if curStep == 1 then
        doTweenAlpha('flTw1', 'black', 0, 1.5, 'linear')
    end
    if curStep == 64 then
        setProperty('flash.visible', true)
        doTweenZoom('Game', 'camGame', 0.45, 5)
        setProperty('dad.alpha', 0.5)
        setProperty('boyfriend.alpha', 0.5)
    end
    if curStep == 80 then
        objectPlayAnimation('flash', 'toog', false)
    end
    if curStep == 96 then
        objectPlayAnimation('flash', 'doog', false)
    end
    if curStep == 112 then
        makeLuaSprite('flashwhite', nil, 0, 0);
        makeGraphic('flashwhite', 1280, 720, 'FFFFFF')
	    addLuaSprite('flashwhite', true)
	    setObjectCamera('flashwhite', 'other')
		setProperty('flashwhite.alpha', 0)
		doTweenAlpha('flTw2', 'flashwhite', 1, 1, 'linear')
    end
    if curStep == 128 then
        setProperty('flash.visible', false)
        setProperty('flashwhite.visible', false)
        
        makeLuaSprite('flashred', nil, 0, 0);
        makeGraphic('flashred', 1280, 720, 'FF0000')
	    addLuaSprite('flashred', true)
	    setObjectCamera('flashred', 'hud')
		doTweenAlpha('flTw3', 'flashred', 0, 0.2, 'linear')
		
		setProperty('camHUD.alpha', 1)
		
		makeLuaSprite('bartop', nil, 0, -30)
        makeGraphic('bartop', 1281, 100, '000000')
        addLuaSprite('bartop', false)
        setObjectCamera('bartop', 'hud')
        setScrollFactor('bartop', 0, 0)

        makeLuaSprite('barbot', nil, 0, 650)
        makeGraphic('barbot', 1281, 100, '000000')
        addLuaSprite('barbot', false)
        setScrollFactor('barbot', 0, 0)
        setObjectCamera('barbot', 'hud')
        
        setObjectOrder('bartop', getObjectOrder('healthBarFinaleBlue') - 1)
        setObjectOrder('barbot', getObjectOrder('healthBarFinaleBlue') - 2)
        
        doTweenZoom('Game', 'camGame', 1, 0.00001)
        
        setProperty('dad.alpha', 1)
        setProperty('boyfriend.alpha', 1)
    end
    if curStep == 272 then
	    makeLuaSprite('flashred2', nil, 0, 0);
        makeGraphic('flashred2', 1280, 720, 'FF0099')
	    addLuaSprite('flashred2', true)
	    setObjectCamera('flashred2', 'hud')
		doTweenAlpha('flTw4', 'flashred2', 0, 0.2, 'linear')
		
		setProperty('healthBarFinaleBlue.visible', true)
		setProperty('healthBarFinale.visible', true)
		
		setProperty('blackIcon.visible', true)
		setProperty('iconP1.visible', true)
		
		setProperty('health', 0.1)
		
		setProperty('bgg.visible', true)
        setProperty('lamp.visible', true)
        setProperty('light.visible', true)
        setProperty('bg2.visible', true)
        setProperty('bg3.visible', true)
        setProperty('bg4.visible', true)
        setProperty('bg5.visible', true)
        setProperty('bg6.visible', true)
        setProperty('dark.visible', true)
        setProperty('bg1.visible', false)
	end
	if curStep == 1984 then
	    makeLuaSprite('black2', nil, 0, 0);
        makeGraphic('black2', 1280, 720, '000000')
	    addLuaSprite('black2', true)
	    setObjectCamera('black2', 'hud')
	    
	    makeLuaSprite('flashred3', nil, 0, 0);
        makeGraphic('flashred3', 1280, 720, 'FF0099')
	    addLuaSprite('flashred3', true)
	    setObjectCamera('flashred3', 'hud')
	    doTweenAlpha('flTw5', 'flashred3', 0, 5, 'linear') 
	end
end

function onUpdatePost()
    setProperty('iconP1.x', 760)
end

function onBeatHit()
    objectPlayAnimation('light', 'idle', true);
    if (curBeat % 1000 == 0) then
		setProperty("upperBoppersLEFT.animation.curAnim.curFrame", 15);
	end
	
	if getProperty('health') >= 1.725 then
        objectPlayAnimation('blackIcon', 'dead', true);
    else
        objectPlayAnimation('blackIcon', 'normal', true);
    end

    if curBeat == 32 then
        setProperty('defaultCamZoom',0.8)
    end

    if curBeat < 32 then --start
        triggerEvent('Camera Follow Pos', 750, 800)
    end

    if curBeat >= 32 and curBeat < 48 then --first to black
        triggerEvent('Camera Follow Pos', 450, 1000)
    end
    if curBeat >= 48 and curBeat < 64 then --to bf
        triggerEvent('Camera Follow Pos', 1250, 1000)
    end
    if curBeat >= 64 and curBeat < 68 then --bf zoom in
        triggerEvent('Camera Follow Pos', 1400, 1050)
        setProperty('defaultCamZoom',1.2)
    end
    if curBeat == 67 then
        setProperty('defaultCamZoom',2.4)
    end
end

function onUpdate()
    setProperty('gf.alpha', 0);
    if followchars == true and curBeat >= 68 then
        if mustHitSection == false then
            setProperty('defaultCamZoom',0.4)
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
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
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
    if curBeat == 492 then
        doTweenZoom('defeated', 'camGame', 2.4, 1.2, 'circIn')
    end
    health = getProperty('health')
    animHealth = (health/2)*100
    idk = math.ceil(animHealth)
	objectPlayAnimation('healthBarFinale', 'health'..idk, false)
end