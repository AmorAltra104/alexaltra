local hasDoor = false

function onCreate()
		initSaveData('songData', 'SkiUNDERTALE')
		setPropertyFromClass('flixel.FlxG', 'mouse.visible', true)
	
		makeLuaSprite('room', 'door', -700, -550)
		setProperty('room.antialiasing', false)
		scaleObject('room', 10, 10)
		addLuaSprite('room', false)
	
	if getDataFromSave('songData', 'unlockedRoomOfDog') ~= true then
		makeLuaSprite('room1', 'doorDoor', 480, 10)
		setProperty('room1.antialiasing', false)
		scaleObject('room1', 10, 10)
		addLuaSprite('room1', false)
		hasDoor = true
		setPropertyFromClass('flixel.FlxG', 'mouse.visible', false)
end
end

function onUpdate()
	if hasDoor == false then
		if mouseClicked() then
		if getMouseX('game') >= 480 and getMouseX('game') <= 780 and getMouseY('game') >= 10 and getMouseY('game') <= 470 then
			setPropertyFromClass('flixel.FlxG', 'mouse.visible', false)
			loadSong('Room Of Dog')
end
end
end
end
			  
	         

		          