function onCreate()
	makeLuaSprite('black', 'empty', 0, 0)
	setObjectCamera('black', 'hud')
	addLuaSprite('black', true)
	
	makeLuaSprite('room', 'megaloHall', -1200, -900)
    setProperty('room.antialiasing', false)
	scaleObject('room', 10, 10)
	addLuaSprite('room', false)
end

function onSongStart()
	setProperty('black.alpha', 0)
end

function onCreatePost() 
    setProperty('camZoomingMult', 0)
    setProperty('camZoomingDecay', 1.5)
end
			  
	         

		          