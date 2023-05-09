function onCreate()	
	makeLuaSprite('room', 'showtime', -750, -1000)
    setProperty('room.antialiasing', false)
	scaleObject('room', 10, 10)
	addLuaSprite('room', false)
	
	makeLuaSprite('sign', 'gameShow', 300, -100)
    setProperty('sign.antialiasing', false)
	scaleObject('sign', 5, 5)
	setObjectCamera('sign', 'hud')
	addLuaSprite('sign', false)
	
	makeAnimatedLuaSprite('discoBall', 'discoBall', 0, 0)
	addAnimationByPrefix('discoBall', 'disco', 'disco', 8, true)
	scaleObject('discoBall', 5, 5)
	setProperty('discoBall.antialiasing', false)
	setObjectCamera('discoBall', 'hud')
	objectPlayAnimation('discoBall', 'disco', true)
	addLuaSprite('discoBall', false)
	
	makeAnimatedLuaSprite('discoBall1', 'discoBall', 1100, 0)
	addAnimationByPrefix('discoBall1', 'disco', 'disco', 8, true)
	scaleObject('discoBall1', 5, 5)
	setProperty('discoBall1.antialiasing', false)
	setObjectCamera('discoBall1', 'hud')
	objectPlayAnimation('discoBall1', 'disco', true)
	addLuaSprite('discoBall1', false)
end
            
			  
	         

		      
		          
		          
		          