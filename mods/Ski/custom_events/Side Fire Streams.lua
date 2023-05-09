function onCreatePost()
	if difficultyName == "Normal" then
		makeLuaSprite('fireSides', 'fireSides', 0, -1440)
		setObjectCamera('fireSides', 'hud')
		scaleObject('fireSides', 1, 1)
		addLuaSprite('fireSides', true)
		setProperty('fireSides.alpha', 0)
		doTweenY('fireSidesTweenY', 'fireSides', 0, 1.5, 'linear')
	else
		makeLuaSprite('fireSides', 'fireSides', 0, -1440)
		setObjectCamera('fireSides', 'hud')
		scaleObject('fireSides', 1, 1)
		addLuaSprite('fireSides', false)
		setProperty('fireSides.alpha', 0)
		doTweenY('fireSidesTweenY', 'fireSides', 0, 1.5, 'linear')
end
end

function onTweenCompleted(tag)
       if tag == 'fireSidesTweenY' then
			setProperty('fireSides.y', -1440)
			doTweenY('fireSidesTweenY', 'fireSides', 0, 1.5, 'linear')
end
end

function onEvent(name, value1, value2)
		if name == "Side Fire Streams" then
			if value1 == 'true' then
				cameraFlash('hud', 'FFFFFF', 0.25, true)
				setProperty('fireSides.alpha', 1)
			else
				cameraFlash('hud', 'FFFFFF', 0.25, true)
				setProperty('fireSides.alpha', 0)
end
end
end