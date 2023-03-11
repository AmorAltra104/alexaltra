function onCreate()
    if botPlay then
    setProperty('dad.visible', false)
    setProperty('boyfriend.visible', false)
    makeAnimatedLuaSprite('NightmareJumpscares01', 'NightmareJumpscares01', -700, -900);
	addAnimationByPrefix('NightmareJumpscares01','dance','CupScare instance',24,true)
	objectPlayAnimation('NightmareJumpscares01','dance', false)
	setObjectCamera('NightmareJumpscares01', 'other')
    addLuaSprite('NightmareJumpscares01', false)
    setProperty('NightmareJumpscares01.visible', false)
end
end

function onStepHit()
if botPlay then
    if curStep == 1 then
        setProperty('NightmareJumpscares01.visible', true)
	playSound('week_5')
        playSound('scare_cuphead')
        runTimer('jumpscare', 0.92, 0)
    end
end
end

    function onTimerCompleted()
        setProperty('health', 0)
    end