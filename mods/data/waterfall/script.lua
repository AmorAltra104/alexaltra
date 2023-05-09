local onDoor = false

function onCreate()
		makeLuaSprite('doorGrey', 'doorGrey', 0, 0)
		setObjectCamera('doorGrey', 'other')
		setProperty('doorGrey.alpha', 0)
		addLuaSprite('doorGrey', true)
		
		randomDoor = getRandomBool('1')
end

function onStartCountdown()
	if randomDoor == true then
		onDoor = true
		setProperty('doorGrey.alpha', 1)
		setPropertyFromClass('flixel.FlxG', 'mouse.visible', true)
		playMusic('wind', 1, true)
		return Function_Stop
end
end

function onUpdate()
	if onDoor == true then
		if mouseClicked() then
		if getMouseX('hud') >= 532 and getMouseX('hud') <= 763 and getMouseY('hud') >= 129 and getMouseY('hud') <= 442 then
			setPropertyFromClass('flixel.FlxG', 'mouse.visible', false)
			loadSong('Dark Darker Yet Darker')
end
end
end
end