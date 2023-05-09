function onCreate()	
	makeLuaSprite('room', 'disbelief', -300, -200)
    setProperty('room.antialiasing', false)
	scaleObject('room', 10, 10)
	addLuaSprite('room', false)
	
	makeLuaSprite('room1', 'papyrus_Room', -500, -200)
    setProperty('room1.antialiasing', false)
	scaleObject('room1', 10, 10)
	addLuaSprite('room1', false)
	
	makeLuaSprite('black', 'empty', 0, 0)
	setObjectCamera('black', 'hud')
	setProperty('black.alpha', 0)
	addLuaSprite('black', true)
end
			  
	         

		          