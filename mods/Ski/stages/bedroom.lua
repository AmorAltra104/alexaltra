function onCreate()	
	makeLuaSprite('room', 'bedroom', -700, -550)
    setProperty('room.antialiasing', false)
	scaleObject('room', 10, 10)
	addLuaSprite('room', false)
	
	makeLuaSprite('skiSleep', 'skiSleep', 1150, 50)
	addLuaSprite('skiSleep', true)
	
	makeLuaSprite('skiSleep1', 'skiSleep1', 1151, 50)
	setProperty('skiSleep1.alpha', 0)
	addLuaSprite('skiSleep1', true)
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
      if isSustainNote then
	     setProperty('skiSleep1.alpha', 1)
		 setProperty('skiSleep.alpha', 0)
		 runTimer('changeTimer', 0.2, 1)
	  else
	     setProperty('skiSleep1.alpha', 0)
		 setProperty('skiSleep.alpha', 1)
		 runTimer('changeTimer', 0.2, 1)	  
end
end

function onTimerCompleted(tag, loops, loopsLeft)
		if tag == 'changeTimer' then
			 setProperty('skiSleep1.alpha', 0)
		     setProperty('skiSleep.alpha', 1)		
end
end
			
			  
	         

		          