function onEvent(name, value1, value2)
    if name == 'Orbyy' then
    makeAnimatedLuaSprite('aaa#2', 'bg/images/attack/orbyy', 720, 650)
    addAnimationByPrefix('aaa#2', 'idle', 'shutup', 24, false)
    addLuaSprite('aaa#2', false)
    scaleObject('aaa#2', 1, 1)
    setObjectOrder('aaa#2', 5)

    setProperty('aaa.visible', false)
    runTimer('whyi', 1)
    end
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'whyi' then
        setProperty('aaa.visible', true)
        setProperty('aaa#2.visible', false)
    end
end