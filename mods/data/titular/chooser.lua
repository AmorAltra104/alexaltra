local allowCountdown = false
local chooser = false
canChoose = false
dead = false
canPlay = false
inChoose = true

function onCreatePost()
    makeLuaSprite('back', 'bg/images/henry/inalframe', 0, 0)
    addLuaSprite('back', true)
    setScrollFactor('back', 1, 1)
    scaleObject('back', 1, 1);
    
    makeLuaSprite('front', 'bg/images/henry/hguiofuhjpsod', 0, 0)
    addLuaSprite('front', true)
    setScrollFactor('front', 1, 1)
    scaleObject('front', 1, 1);
    
    makeAnimatedLuaSprite('mic', 'bg/images/henry/Microphone_Option', 300, 200)
    addLuaSprite('mic', true)
    setScrollFactor('mic', 1, 1)
    scaleObject('mic', 0.5, 0.5);
    addAnimationByPrefix('mic', 'S', 'Microphone Select', 24, true)
    addAnimationByPrefix('mic', 'idle', 'Microphone0', 24, true)
    objectPlayAnimation('mic', 'idle', true);
    
    makeAnimatedLuaSprite('clow', 'bg/images/henry/Sock_Puppet_Option', 800, 150)
    addLuaSprite('clow', true)
    setScrollFactor('clow', 1, 1)
    scaleObject('clow', 0.5, 0.5);
    addAnimationByPrefix('clow', 'S', 'Sock Puppet Select', 24, true)
    addAnimationByPrefix('clow', 'idle', 'Sock Puppet0', 24, true)
    objectPlayAnimation('clow', 'idle', true);
    
    makeAnimatedLuaSprite('sd', 'bg/images/henry/Stare_Down_Option', 550, 450)
    addLuaSprite('sd', true)
    setScrollFactor('sd', 1, 1)
    scaleObject('sd', 0.5, 0.5);
    addAnimationByPrefix('sd', 'idle', 'Stare Down0', 24, true)
    addAnimationByPrefix('sd', 'S', 'Stare Down Select', 24, true)
    objectPlayAnimation('sd', 'idle', true);
    
    setObjectCamera('mic', 'hud')
    setObjectCamera('clow', 'hud')
    setObjectCamera('sd', 'hud')
    setObjectCamera('back', 'hud')
    setObjectCamera('front', 'hud')
    
    setProperty('clow.visible', false)
    setProperty('mic.visible', false)
    setProperty('sd.visible', false)
    setProperty('back.visible', false)
    setProperty('front.visible', false)
end

function onUpdate()
    if (getMouseX('camHUD') > 250 and getMouseX('camHUD') < 549.25) and (getMouseY('camHUD') > 150 and getMouseY('camHUD') < 393) and canChoose then
        objectPlayAnimation('mic', 'S', true);
        if mouseClicked('left') then
            canPlay = true
            inChoose = false
            chooser = false
            startVideo('henrymic')
        end
    else
        objectPlayAnimation('mic', 'idle', true);
    end
    
    if (getMouseX('camHUD') > 750 and getMouseX('camHUD') < 1089.75) and (getMouseY('camHUD') > 50 and getMouseY('camHUD') < 377.75) and canChoose then
        objectPlayAnimation('clow', 'S', true);
        if mouseClicked('left') then
            startVideo('henrysock')
        end
    else
        objectPlayAnimation('clow', 'idle', true);
    end
    
    if (getMouseX('camHUD') > 500 and getMouseX('camHUD') < 756.5) and (getMouseY('camHUD') > 450 and getMouseY('camHUD') < 681) and canChoose then
        objectPlayAnimation('sd', 'S', true);
        if mouseClicked('left') then
            startVideo('henrystare')
        end
    else
        objectPlayAnimation('sd', 'idle', true);
    end
end

function onStartCountdown()
    if not allowCountdown and not seenCutscene and inChoose then 
        startVideo('henry1');
        allowCountdown = true;
        chooser = true
        return Function_Stop;
    elseif chooser == true and inChoose == true then
        runTimer('FirstS', 1)
        setProperty('back.visible', true)
        setProperty('front.visible', true)
        return Function_Stop
    elseif canPlay and not inChoose then
        runTimer('start', 0.1)
        canChoose = false
        setProperty('clow.visible', false)
        setProperty('mic.visible', false)
        setProperty('sd.visible', false)
        setProperty('back.visible', false)
        setProperty('front.visible', false)
    end
return Function_Continue;
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'FirstS' then
        runTimer('SecondS', 1, 1)
        setProperty('mic.visible', true)
        playSound('mic', 1)
    end
    if tag == 'SecondS' then
        runTimer('ThirdS', 1, 1)
        setProperty('clow.visible', true)
        playSound('sock', 1)
    end
    if tag == 'ThirdS' then
        runTimer('canChoose', 1, 1)
        setProperty('sd.visible', true)
        playSound('stare', 1)
    end
    if tag == 'canChoose' then
        canChoose = true
    end
    if tag == 'start' then
        startCountdown()
    end
end
