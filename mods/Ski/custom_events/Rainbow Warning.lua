function onCreatePost()
		makeLuaSprite('warningRed1', 'warning1', getProperty('boyfriend.x'), getProperty('boyfriend.y'))
		setProperty('warningRed1.antialiasing', false)
		scaleObject('warningRed1', 15, 15)
		setProperty('warningRed1.alpha', 0)
		addLuaSprite('warningRed1', true)
end

function onEvent(name, value1, value2)
   if name == "Rainbow Warning" then
   		   runTimer('rainbowWarningTimer', 0.175, 6)
end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'rainbowWarningTimer' then
		if loopsLeft == 5 then
			setProperty('warningRed1.alpha', 0)
			playSound('rainbowSound', 1, 'rainbowSound1')
		elseif loopsLeft == 4 then
			setProperty('warningRed1.alpha', 1)
			playSound('rainbowSound', 1, 'rainbowSound1')
		elseif loopsLeft == 3 then
			setProperty('warningRed1.alpha', 0)
			playSound('rainbowSound', 1, 'rainbowSound1')
		elseif loopsLeft == 2 then
			setProperty('warningRed1.alpha', 1)
			playSound('rainbowSound', 1, 'rainbowSound1')
		elseif loopsLeft == 1 then
			setProperty('warningRed1.alpha', 0)
			playSound('rainbowSound', 1, 'rainbowSound1')
		elseif loopsLeft == 0 then
			playSound('rainbowSound', 1, 'rainbowSound1')
end
end
end

function onUpdate()
	setProperty('warningRed1.x', getProperty('boyfriend.x') + 50) 
	setProperty('warningRed1.y', getProperty('boyfriend.y'))
end	
					   