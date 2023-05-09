function onCreate()
	makeLuaSprite('skiFinger', 'skiFinger', 1750, 620)
	scaleObject('skiFinger', 1.5, 1.5)
	setProperty('skiFinger.alpha', 0)
	addLuaSprite('skiFinger', true)
end

function onEvent(name, value1, value2)
   if name == 'Finger' then
		if value1 == 'false' then
			setProperty('skiFinger.alpha', 1)
			setProperty('boyfriendGroup.alpha', 0)
			runTimer('fingerTimer', 0.7, 1)
		else 
		    triggerEvent('Screen Shake', "0.7, 0.05", "0.7, 0.05")
			setProperty('skiFinger.alpha', 1)
			setProperty('boyfriendGroup.alpha', 0)
			runTimer('fingerTimer', 0.7, 1)
end
end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'fingerTimer' then
			setProperty('skiFinger.alpha', 0)
			setProperty('boyfriendGroup.alpha', 1)
			playAnim('boyfriend', 'idle', true)
end
end