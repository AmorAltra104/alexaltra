function onCreatePost()	
	makeLuaSprite('room', 'reunited', -1300, -300)
    setProperty('room.antialiasing', false)
	scaleObject('room', 10, 10)
	addLuaSprite('room', false)
	
	setObjectCamera('dadGroup', 'hud')
	scaleObject('dadGroup', 1.5, 1.5)
	setProperty('dadGroup.alpha', 0)
	setObjectOrder('dadGroup', 0)
end

function onStepHit()
		if curStep == 1407 then
			doTweenAlpha('skiTweenAlpha', 'dadGroup', 0.5, 1, 'linear')
		elseif curStep == 1791 then
			doTweenAlpha('skiTweenAlpha', 'dadGroup', 0, 1, 'linear')
end
		if curStep == 2303 then
			doTweenAlpha('skiTweenAlpha', 'dadGroup', 0.5, 1, 'linear')
		elseif curStep == 2367 then
			doTweenAlpha('skiTweenAlpha', 'dadGroup', 0, 1, 'linear')
end
end
			  
	         

		          