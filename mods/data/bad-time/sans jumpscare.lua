function onCreate()
    if botPlay then
    setProperty('dad.visible', false)
    setProperty('boyfriend.visible', false)
    makeAnimatedLuaSprite('NightmareJumpscares02', 'NightmareJumpscares02', -150, -600);
	addAnimationByPrefix('NightmareJumpscares02','dance','Wussup Bitch instance',24,true)
	objectPlayAnimation('NightmareJumpscares02','dance', false)
	setObjectCamera('NightmareJumpscares02', 'other')
    addLuaSprite('NightmareJumpscares02', false)
    setProperty('NightmareJumpscares02.visible', false)
end
end

function onStepHit()
if botPlay then
    if curStep == 1 then
        setProperty('NightmareJumpscares02.visible', true)
	playSound('week_5')
        playSound('scare_sans')
        runTimer('jumpscare', 0.89, 0)
    end
end
end

    function onTimerCompleted()
        setProperty('health', 0)
    end