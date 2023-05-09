function onCreate()
   setProperty('skipCountdown', true)
   
   	makeLuaSprite('blackFirst', 'empty', 0, 0)
	setObjectCamera('blackFirst', 'other')
	scaleObject('blackFirst', 1, 1)
	addLuaSprite('blackFirst', false)

	makeLuaSprite('start', 'CORE/start', -150, -2000)
    setObjectCamera('start', 'other')
	setProperty('start.antialiasing', false)
	scaleObject('start', 5, 5)
	addLuaSprite('start', false)
	
	makeLuaSprite('black', 'empty', 0, 0)
	setObjectCamera('black', 'other')
	scaleObject('black', 1, 1)
	addLuaSprite('black', false)
	
	makeLuaSprite('room', 'CORE/room', -1100, -550)
    setProperty('room.antialiasing', false)
	scaleObject('room', 10, 10)
	setProperty('room.alpha', 0)
	addLuaSprite('room', false)
end

function onSongStart()
       doTweenAlpha('blackTween', 'black', 0, 5, 'circInOut')
	   doTweenY('startTween', 'start', 0, 11, 'linear')
	   runTimer('fadeTimer', 8, 1)
end

function onTimerCompleted(tag, loops, loopsLeft)
         if tag == 'fadeTimer' then
		        doTweenAlpha('blackTween1', 'black', 1, 2, 'linear')
end
end

function onStepHit()
      if curStep == 107 then
	        doTweenAlpha('blackFirstTween', 'blackFirst', 0, 2, 'linear')
			doTweenAlpha('blackTween', 'black', 0, 2, 'linear')
			doTweenAlpha('startTween', 'start', 0, 2, 'linear')
	  elseif curStep == 299 then
	        doTweenAlpha('roomTween', 'room', 1, 0.3, 'linear')
			setProperty('defaultCamZoom', 0.7)
end
end
	     
function onTweenCompleted(tag)
       if tag == 'blackTween1' then
              removeLuaSprite('blackFirst', true)
			  removeLuaSprite('start', true)
end
end
			  
	         

		          