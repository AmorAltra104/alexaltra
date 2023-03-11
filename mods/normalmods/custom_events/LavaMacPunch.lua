function onCreate() -- Add The Flicker

	makeAnimatedLuaSprite('LavaMacPunch', 'LavaMacPunch', -230, 300)
	
	-- Properties
	setScrollFactor('LavaMacPunch', 1.0, 1.0)
	scaleObject('LavaMacPunch', 1.0, 1.0)
	
	-- Animations
	addAnimationByPrefix('LavaMacPunch', 'flick', 'LavaMacPunch', 24, false)
	
end

function onEvent(name, value1, value2)
	if name == 'LavaMacPunch' then
--	runTimer('flicked', 1.5, 1)
	addLuaSprite('LavaMacPunch', true)
	--playSound('power up', 0.5)
	objectPlayAnimation('flick', true)
	end
end
	
function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'flicked' then
	setProperty('BendyFlicker.visible', false)
	end
end