function onEvent(name, value1, value2)
    if name == 'Forehead' then
    makeAnimatedLuaSprite('aa#2', 'bg/images/attack/nick t', 600, 700)
    addAnimationByPrefix('aa#2', 'idle', 'nick t animation', 24, false)
    addLuaSprite('aa#2', false)
    scaleObject('aa#2', 1, 1)
    setObjectOrder('aa#2', 5)

    setProperty('aa#.visible', false)
    runTimer('whyii', 1)
    end
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'whyii' then
        setProperty('aa#.visible', true)
        setProperty('aa#2.visible', false)
    end
end