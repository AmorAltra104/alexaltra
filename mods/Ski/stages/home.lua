function onCreate()	
	makeLuaSprite('room', 'homeOn', -400, -300)
    setProperty('room.antialiasing', false)
	scaleObject('room', 10, 10)
	addLuaSprite('room', false)
	
	makeLuaSprite('room1', 'homeOff', -400, -300)
    setProperty('room1.antialiasing', false)
	scaleObject('room1', 10, 10)
	setProperty('room1.alpha', 0)
	addLuaSprite('room1', false)
end

function onStepHit()
	if curStep == 694 then
		setProperty('room1.alpha', 1)
		setProperty('room.alpha', 0)
end
end
		
			  
	         

		          