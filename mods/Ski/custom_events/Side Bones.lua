function onCreatePost()
if difficultyName == "Normal" then
	makeLuaSprite('bonesRight', 'boneRight', 0, -1440)
	setObjectCamera('bonesRight', 'hud')
	addLuaSprite('bonesRight', true)
	scaleObject('bonesRight', 2, 2)
	doTweenY('bonesRightTweenY', 'bonesRight', 0, 1.5, 'linear')
else
	makeLuaSprite('bonesRight', 'boneRight', 0, -1440)
	setObjectCamera('bonesRight', 'hud')
	addLuaSprite('bonesRight', false)
	scaleObject('bonesRight', 2, 2)
	doTweenY('bonesRightTweenY', 'bonesRight', 0, 1.5, 'linear')
end
end

function onTweenCompleted(tag)
	if tag == 'bonesRightTweenY' then
		setProperty('bonesRight.y', -1440)
		doTweenY('bonesRightTweenY', 'bonesRight', 0, 1.5, 'linear')
end
end

function onEvent(name, value1, value2)
		if name == "Side Bones" then
			if value1 == 'true' then
				doTweenX('bonesRightShowTweenX', 'bonesRight', -1280, 1, 'smootherStepInOut')
			else
				doTweenX('bonesRightShowTweenX', 'bonesRight', 0, 1, 'smootherStepInOut')
end
end
end