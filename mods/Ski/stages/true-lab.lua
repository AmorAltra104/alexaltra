function onCreate()	
	makeLuaSprite('room', 'trueLab', -500, -400)
    setProperty('room.antialiasing', false)
	scaleObject('room', 10, 10)
	addLuaSprite('room', false)
end

function onCreatePost() 
    setProperty('camZoomingMult', 0)
end
			  
	         

		          