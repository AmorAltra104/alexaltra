function onCreate()	
	makeLuaSprite('room', 'spoop', -700, -550)
    setProperty('room.antialiasing', false)
	scaleObject('room', 10, 10)
	addLuaSprite('room', false)
	
	makeLuaSprite('skiOOF', 'skiOOF', 110, 440)
	addLuaSprite('skiOOF', true)
	setProperty('skiOOF.alpha', 0)
end

function onStepHit()
      if curStep == 297 then
	        playAnim('boyfriend', 'singRIGHTmiss', true)
			runTimer('changeTimer', 0.5, 1)
end
end

function onTimerCompleted(tag, loops, loopsLeft)
       if tag == 'changeTimer' then
			setProperty('skiOOF.alpha', 1)			
			setProperty('boyfriendGroup.alpha', 0)
end
end
	         
			  
	         

		          