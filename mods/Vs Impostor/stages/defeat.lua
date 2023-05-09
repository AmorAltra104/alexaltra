function onCreatePost()
makeAnimatedLuaSprite('defeat', 'bg/defeat/defeat',-900,-700)
scaleObject('defeat', 1.6,1.6)
setLuaSpriteScrollFactor('defeat', 1,1)
addLuaSprite('defeat', false)
addAnimationByPrefix('defeat', 'idle', 'defeat', 24, false)

makeLuaSprite('lol-thing', 'bg/defeat/lol thing',-960,-30)
scaleObject('lol-thing', 1.4,1.4)
setLuaSpriteScrollFactor('lol-thing', 1,1)
addLuaSprite('lol-thing', false)
setProperty('lol-thing.alpha', 0);

makeLuaSprite('deadBG', 'bg/defeat/deadBG',-1090,360)
scaleObject('deadBG', 0.5,0.5)
setLuaSpriteScrollFactor('deadBG', 1,1)
addLuaSprite('deadBG', false)
setProperty('deadBG.alpha', 0);

makeLuaSprite('deadFG', 'bg/defeat/deadFG',-1110,730)
scaleObject('deadFG', 0.5,0.5)
setLuaSpriteScrollFactor('deadFG', 0.8,0.8)
addLuaSprite('deadFG', true)
setProperty('deadFG.alpha', 0);

makeLuaSprite('iluminao-omaga', 'bg/defeat/iluminao omaga',-420,-90)
scaleObject('iluminao-omaga', 0.9,0.9)
setLuaSpriteScrollFactor('iluminao-omaga', 1,1)
addLuaSprite('iluminao-omaga', true)

makeLuaSprite('defeatfnf', 'bg/defeat/defeatfnf',-590,-360)
scaleObject('defeatfnf', 2.2,2.2)
setLuaSpriteScrollFactor('defeatfnf', 1,1)
addLuaSprite('defeatfnf', false)
setProperty('defeatfnf.alpha', 0);

setObjectOrder('defeat', getObjectOrder('lol thing') - 1)

setProperty('healthBar.visible', false)
setProperty('healthBarBG.visible', false)
end
function onBeatHit()
    if curBeat % 4 == 0 then
        objectPlayAnimation('defeat', 'idle', false)
    end
end
function onStepHit()
	if curStep == 272 then
	doTweenAlpha('deadFG', 'deadFG', 1, 1, "quartInOut")
	doTweenAlpha('lol-thing', 'lol-thing', 1, 1, "quartInOut")
	doTweenAlpha('deadBG', 'deadBG', 1, 1, "quartInOut")
end
	if curStep == 1168 then
	setProperty('defeatfnf.alpha', 1);
	setProperty('deadFG.alpha', 0);
	setProperty('iluminao-omaga.alpha', 0);
	setProperty('deadBG.alpha', 0);
	setProperty('iconP1.visible', false)
	setProperty('iconP2.visible', false)
end
	if curStep == 1440 then
	setProperty('deadFG.alpha', 1);
	setProperty('deadBG.alpha', 1);
	setProperty('iluminao-omaga.alpha', 1);
	removeLuaSprite('defeatfnf',true)
	setProperty('iconP1.visible', true)
	setProperty('iconP2.visible', true)
end
end
local xx = 750;
local yy = 500;
local xx2 = 750;
local yy2 = 500;
local ofs = 20;
local followchars = true;
function onUpdate()
	setProperty('gf.alpha', 0);
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
    if curBeat == 16 then
        setProperty('defaultCamZoom',0.6)
		followchars = true
        xx = 750
        yy = 500
        xx2 = 750
        yy2 = 500
    end
    if curBeat == 32 then
        setProperty('defaultCamZoom',0.7)
		followchars = true
        xx = 750
        yy = 500
        xx2 = 750
        yy2 = 500
    end
    if curBeat == 48 then
        setProperty('defaultCamZoom',0.8)
		followchars = true
        xx = 750
        yy = 500
        xx2 = 750
        yy2 = 500
    end
    if curBeat == 68 then
        setProperty('defaultCamZoom',0.5)
		followchars = true
        xx = 750
        yy = 500
        xx2 = 750
        yy2 = 500
    end
    if curBeat == 100 then
        setProperty('defaultCamZoom',0.6)
		followchars = true
        xx = 500
        yy = 500
        xx2 = 900
        yy2 = 500
    end
    if curBeat == 164 then
        setProperty('defaultCamZoom',0.5)
		followchars = true
        xx = 750
        yy = 500
        xx2 = 750
        yy2 = 500
    end
    if curBeat == 194 then
        setProperty('defaultCamZoom',0.6)
		followchars = true
        xx = 750
        yy = 500
        xx2 = 750
        yy2 = 500
    end
    if curBeat == 196 then
        setProperty('defaultCamZoom',0.6)
		followchars = true
        xx = 750
        yy = 500
        xx2 = 750
        yy2 = 500
    end
    if curBeat == 212 then
        setProperty('defaultCamZoom',0.7)
		followchars = true
        xx = 750
        yy = 500
        xx2 = 750
        yy2 = 500
    end
    if curBeat == 228 then
        setProperty('defaultCamZoom',0.8)
		followchars = true
        xx = 750
        yy = 500
        xx2 = 750
        yy2 = 500
    end
    if curBeat == 244 then
        setProperty('defaultCamZoom',0.85)
		followchars = true
        xx = 750
        yy = 500
        xx2 = 750
        yy2 = 500
    end
    if curBeat == 260 then
        setProperty('defaultCamZoom',0.6)
		followchars = true
        xx = 750
        yy = 500
        xx2 = 750
        yy2 = 500
    end
    if curBeat == 292 then
        setProperty('defaultCamZoom',0.75)
		followchars = true
        xx = 750
        yy = 500
        xx2 = 750
        yy2 = 500
    end
    if curBeat == 360 then
        setProperty('defaultCamZoom',0.6)
		followchars = true
        xx = 500
        yy = 500
        xx2 = 900
        yy2 = 500
    end
    if curBeat == 424 then
        setProperty('defaultCamZoom',0.7)
		followchars = true
        xx = 750
        yy = 500
        xx2 = 750
        yy2 = 500
    end
    if curBeat == 456 then
        setProperty('defaultCamZoom',0.8)
		followchars = true
        xx = 750
        yy = 500
        xx2 = 750
        yy2 = 500
    end
    if curBeat == 472 then
        setProperty('defaultCamZoom',0.9)
		followchars = true
        xx = 750
        yy = 500
        xx2 = 750
        yy2 = 500
    end
    if curBeat == 488 then
        setProperty('defaultCamZoom',50)
		followchars = true
        xx = 750
        yy = 500
        xx2 = 750
        yy2 = 500
    end
end

