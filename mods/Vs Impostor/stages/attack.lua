
local u = false;
local r = 0;
local shot = false;
local agent = 1
local health = 0;
local xx =  1000;
local yy =  1050;
local xx2 = 1400;
local yy2 = 1050;
local ofs = 20;
local followchars = true;
local del = 0;
local del2 = 0;
local idle = true;

function onCreate()
    makeLuaSprite('stage', 'bg/images/attack/monotoneback', 0, 0)
    addLuaSprite('stage', false)
    scaleObject('stage', 1, 1)


    makeLuaSprite('wall', 'bg/images/attack/fg', 0, 0)
    addLuaSprite('wall', false)
    scaleObject('wall', 1, 1)

    makeAnimatedLuaSprite('a', 'bg/images/attack/crowd', 850, 850)
    addAnimationByPrefix('a', 'idle', 'tess n gus fring instance 1', 24, false)
    addLuaSprite('a', false)
    scaleObject('a', 1, 1)

    makeAnimatedLuaSprite('aa#', 'bg/images/attack/nick t', 600, 700)
    addAnimationByPrefix('aa#', 'idle', 'nick t idle', 24, false)
    addLuaSprite('aa#', false)
    scaleObject('aa#', 1, 1)

    makeAnimatedLuaSprite('aa', 'bg/images/attack/offbi', 1250, 625)
    addAnimationByPrefix('aa', 'idle', 'offbi', 24, false)
    addLuaSprite('aa', false)
    scaleObject('aa', 1, 1)

    makeAnimatedLuaSprite('aaa', 'bg/images/attack/orbyy', 850, 665)
    addAnimationByPrefix('aaa', 'idle', 'orbyy', 24, false)
    addLuaSprite('aaa', false)
    scaleObject('aaa', 1, 1)

    makeAnimatedLuaSprite('aaaa', 'bg/images/attack/loggoattack', 950, 775)
    addAnimationByPrefix('aaaa', 'idle', 'loggfriend', 24, false)
    addLuaSprite('aaaa', false)
    scaleObject('aaaa', 1, 1)

    makeAnimatedLuaSprite('aaaaa', 'bg/images/attack/cooper', 1950, 750)
    addAnimationByPrefix('aaaaa', 'idle', 'bg seat 1 instance 1', 24, false)
    addLuaSprite('aaaaa', false)
    scaleObject('aaaaa', 1, 1)
    setObjectOrder('aaaaa', 7)

    

    makeLuaSprite('bg', 'bg/images/attack/backlights', 0, 0)
    addLuaSprite('bg', false)
    scaleObject('bg', 1, 1)
    setObjectOrder('bg', 8)

    makeLuaSprite('bg1', 'bg/images/attack/lamp', 0, 0)
    addLuaSprite('bg1', false)
    scaleObject('bg1', 1, 1)
    setObjectOrder('bg1', 8)

    makeLuaSprite('light', 'bg/images/attack/frontlight', 0, 0)
    addLuaSprite('light', false)
    scaleObject('light', 1, 1)
    setObjectOrder('light', 8)

    makeLuaSprite('light#2', 'bg/images/attack/purple', 0, 0)
    addLuaSprite('light#2', false)
    scaleObject('light#2', 1, 1)
    setObjectOrder('light#2', 8)
end


function onCreatePost()
    makeAnimatedLuaSprite('biddle', 'characters/biddle', 1650, 640)
    addAnimationByPrefix('biddle', 'idle', 'biddle idle', 24, false)
    addLuaSprite('biddle', false)
    scaleObject('biddle', 1, 1)
end


function onBeatHit()
    if curBeat % 2 == 0 then
        objectPlayAnimation('aa', 'idle')
    
        objectPlayAnimation('aaa', 'idle')
    
        objectPlayAnimation('aaaa', 'idle')
    end    

    if idle == true then
    if curBeat % 2 == 0 then
        makeAnimatedLuaSprite('biddle', 'characters/biddle', 1650, 640)
        addAnimationByPrefix('biddle', 'idle', 'biddle idle', 24, false)
        addLuaSprite('biddle', false)
        scaleObject('biddle', 1, 1)
    end
    end

    if curBeat % 2 == 0 then

    objectPlayAnimation('aa#', 'idle')
    setObjectOrder('aa#', 5)

    objectPlayAnimation('aaaaa', 'idle')
    setObjectOrder('aaaaa', 7)
    end
end


function onUpdate(elapsed)

    for i = 0,getProperty('unspawnNotes.length')-1 do
        if getPropertyFromGroup('unspawnNotes',i,'noteType') == 'dad note' then
        setPropertyFromGroup('unspawnNotes',i,'texture','NOTE/NOTE_Tier 2') --Change texture  
        
        setPropertyFromGroup('unspawnNotes',i,'noAnimation',true) --Stops original animations
        
        if getPropertyFromGroup('unspawnNotes',i,'mustPress') then --Doesn't let Dad/Opponent notes get ignored
        setPropertyFromGroup('unspawnNotes',i,'hitByOpponent',true) --Miss has no penalties
        setPropertyFromGroup('unspawnNotes',i,'ignoreNote',true) --Miss has no penalties
        end
        end
        end

    for i=0,getProperty('unspawnNotes.length') do
        if getPropertyFromGroup('unspawnNotes',i,'mustPress') then
        if getPropertyFromGroup('unspawnNotes',i,'noteType') == 'dad note' then
        setPropertyFromGroup('unspawnNotes',i,'noteType','dad notes')
        setPropertyFromGroup('unspawnNotes',i,'noAnimation',true)
        end
        end
        end

    for i=0,getProperty('unspawnNotes.length') do
        if not getPropertyFromGroup('unspawnNotes',i,'mustPress') then
        if getPropertyFromGroup('unspawnNotes',i,'noteType') == 'dad note' then
        setPropertyFromGroup('unspawnNotes',i,'noteType','bf notes')
        setPropertyFromGroup('unspawnNotes',i,'noAnimation',true)
        end
        end
        end

    for i=0, getProperty('notes.length') -1 do
        if getSongPosition() > getPropertyFromGroup('notes',i,'strumTime') and getPropertyFromGroup('notes',i,'noteType') == 'bf notes' then
        pnoteData = getPropertyFromGroup('notes',i,'noteData')
        anim = ''
        if pnoteData == 0 then
        anim = 'singLEFT'
    
        elseif pnoteData == 1 then
        anim = 'singDOWN'
    
        elseif pnoteData == 2 then
        anim = 'singUP'
    
        elseif pnoteData == 3 then
        anim = 'singRIGHT'
    
        end
        triggerEvent('Play Animation',anim,'gf')
        end
    end

    for i=0, getProperty('notes.length') -1 do
        if getSongPosition() > getPropertyFromGroup('notes',i,'strumTime') and getPropertyFromGroup('notes',i,'noteType') == 'dad notes' then
        pnoteData = getPropertyFromGroup('notes',i,'noteData')

        if pnoteData == 0 then
    
        makeAnimatedLuaSprite('biddle', 'characters/biddle', 1610, 700)
        addAnimationByPrefix('biddle', 'left', 'biddle left', 24, false)
        addLuaSprite('biddle', false)
        scaleObject('biddle', 1, 1)
    
        idle = false
        runTimer('114514', crochet/1000)

    elseif pnoteData == 1 then
    
        makeAnimatedLuaSprite('biddle', 'characters/biddle', 1610, 800)
        addAnimationByPrefix('biddle', 'down', 'biddle down', 24, false)
        addLuaSprite('biddle', false)
        scaleObject('biddle', 1, 1)
    
        idle = false
        runTimer('114514', crochet/1000)

    elseif pnoteData == 2 then
    
        makeAnimatedLuaSprite('biddle', 'characters/biddle', 1580, 650)
        addAnimationByPrefix('biddle', 'up', 'biddle up', 24, false)
        addLuaSprite('biddle', false)
        scaleObject('biddle', 1, 1)
        
        idle = false
        runTimer('114514', crochet/1000)

    elseif pnoteData == 3 then
    
        makeAnimatedLuaSprite('biddle', 'characters/biddle', 1630, 640)
        addAnimationByPrefix('biddle', 'right', 'biddle right', 24, false)
        addLuaSprite('biddle', false)
        scaleObject('biddle', 1, 1)
        
        idle = false
        runTimer('114514', crochet/1000)
        end
        removeFromGroup('notes',i)
        end
        end
end


function onUpdatePost()
    for i = 0, getProperty('notes.length') - 1 do
        if getPropertyFromGroup('notes',i,'noteType') == 'dad notes' then
    end
end

for i = 0, getProperty('notes.length') - 1 do
    if getPropertyFromGroup('notes',i,'noteType') == 'bf notes' then
end
end

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
    if curBeat == 64 then
        setProperty('defaultCamZoom',0.6)
		followchars = true
        xx = 1225
        yy = 1000
        xx2 = 1225
        yy2 = 1000
    end
    if curBeat == 80 then
        setProperty('defaultCamZoom',0.7)
		followchars = true
        xx = 1225
        yy = 1000
        xx2 = 1225
        yy2 = 1000
    end
    if curBeat == 95 then
        setProperty('defaultCamZoom',0.9)
		followchars = true
        xx = 1000
        yy = 900
        xx2 = 1000
        yy2 = 900
    end
    if curBeat == 99 then
        setProperty('defaultCamZoom',0.75)
		followchars = true
        xx = 1000
        yy = 1050
        xx2 = 1400  
        yy2 = 1050
    end
    if curBeat == 196 then
        setProperty('defaultCamZoom',0.6)
		followchars = true
        xx = 1225
        yy = 1000
        xx2 = 1225
        yy2 = 1000
    end
    if curBeat == 229 then
        setProperty('defaultCamZoom',0.7)
		followchars = true
        xx = 1225
        yy = 1000
        xx2 = 1225
        yy2 = 1000
    end
    if curBeat == 276 then
        setProperty('defaultCamZoom',0.6)
		followchars = true
        xx = 1225
        yy = 1000
        xx2 = 1225
        yy2 = 1000
    end
    if curBeat == 292 then
        setProperty('defaultCamZoom',0.75)
		followchars = true
        xx = 1000
        yy = 1050
        xx2 = 1400  
        yy2 = 1050
    end
    if curBeat == 324 then
        setProperty('defaultCamZoom',0.7)
		followchars = true
        xx = 1225
        yy = 1000
        xx2 = 1225
        yy2 = 1000
    end
    if curBeat == 355 then
        setProperty('defaultCamZoom',0.9)
		followchars = true
        xx = 1000
        yy = 900
        xx2 = 1000
        yy2 = 900
    end
    if curBeat == 360 then
        setProperty('defaultCamZoom',0.6)
		followchars = true
        xx = 1225
        yy = 1000
        xx2 = 1225
        yy2 = 1000
    end
    
    
end


function onTimerCompleted(tag, loops, loopsLeft)
    if tag == '114514' then
    idle = true
    end
end