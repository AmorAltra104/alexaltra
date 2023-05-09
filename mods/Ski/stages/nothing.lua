function onCreate()
	makeLuaSprite('room', 'wall', -400, -200)
    setProperty('room.antialiasing', true)
	scaleObject('room', 1.5, 1.5)
	addLuaSprite('room', false)
	
	makeLuaSprite('black', 'empty', 0, 0)
	setObjectCamera('black', 'hud')
	addLuaSprite('black', true)
end

function onStepHit()
	if curStep == 10 then
		doTweenAlpha('blackTweenAlpha', 'black', 0, 0.2, 'linear')
end
	if curStep == 1509 then
		doTweenAlpha('blackTweenAlpha', 'black', 1, 16, 'linear')
end
end		
		
			  
	         

		          