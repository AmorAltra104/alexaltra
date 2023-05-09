function onCreatePost()
	if difficultyName == "Normal" then
	makeLuaSprite('bones', 'boneBars', 0, 800)
    setObjectCamera('bones', 'hud')
	scaleObject('bones', 1, 1)
	setObjectOrder('bones', 50)
	addLuaSprite('bones', true)
	doTweenX('bonesTweenX', 'bones', -1280, 2, 'linear')
	
	makeLuaSprite('bones1', 'boneBars', 0, -300)
    setObjectCamera('bones1', 'hud')
	scaleObject('bones1', 1, 1)
	setObjectOrder('bones1', 50)
	setProperty('bones1.flipY', true)
	addLuaSprite('bones1', true)
	doTweenX('bonesTween1X', 'bones', -1280, 2, 'linear')
	else
	makeLuaSprite('bones', 'boneBars', 0, 800)
    setObjectCamera('bones', 'hud')
	scaleObject('bones', 1, 1)
	addLuaSprite('bones', false)
	doTweenX('bonesTweenX', 'bones', -1280, 2, 'linear')
	
	makeLuaSprite('bones1', 'boneBars', 0, -300)
    setObjectCamera('bones1', 'hud')
	scaleObject('bones1', 1, 1)
	setProperty('bones1.flipY', true)
	addLuaSprite('bones1', false)
	doTweenX('bonesTween1X', 'bones', -1280, 2, 'linear')
end
end

function onTweenCompleted(tag)
	if tag == 'bonesTweenX' then
		setProperty('bones.x', 0)
		doTweenX('bonesTweenX', 'bones', -1280, 2, 'linear')
end
	if tag == 'bonesTween1X' then
		setProperty('bones1.x', 0)
		doTweenX('bonesTween1X', 'bones1', -1280, 2, 'linear')
end
end

function onEvent(name, value1, value2)
		if name == "HUD Bones" then
			if value1 == 'true' then
				doTweenY('bonesShowTweenY', 'bones', 555, 1, 'smootherStepInOut')
				doTweenY('bonesShowTweenY1', 'bones1', 0, 1, 'smootherStepInOut')
			else
				doTweenY('bonesShowTweenY', 'bones', 800, 1, 'smootherStepInOut')
				doTweenY('bonesShowTweenY1', 'bones1', -300, 1, 'smootherStepInOut')
end
end
end