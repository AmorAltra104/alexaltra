function onCreate()	
	makeLuaSprite('room', 'room_of_dog', -500, -300)
    setProperty('room.antialiasing', false)
	scaleObject('room', 10, 10)
	addLuaSprite('room', false)

	makeLuaSprite('dog', 'dogSleep', 250, 750)
    setProperty('dog.antialiasing', false)
	scaleObject('dog', 10, 10)
	setProperty('dog.alpha', 1)
	addLuaSprite('dog', false)
	
	makeLuaSprite('dog1', 'dogSleep1', 250, 750)
    setProperty('dog1.antialiasing', false)
	scaleObject('dog1', 10, 10)
	setProperty('dog1.alpha', 0)
	addLuaSprite('dog1', false)
end

function onBeatHit()
	if getProperty('dog.alpha') == 1 then
		setProperty('dog.alpha', 0)
		setProperty('dog1.alpha', 1)
	elseif getProperty('dog.alpha') == 0 then
		setProperty('dog.alpha', 1)
		setProperty('dog1.alpha', 0)
end
end
			  
	         

		          