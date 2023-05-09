function onCreate()
		 makeLuaSprite('topBar', 'bars', 0, -400)
		 setObjectCamera('topBar', 'hud')
		 scaleObject('topBar', 0.8, 0.8)
		 addLuaSprite('topBar', false)
		 
		 makeLuaSprite('bottomBar', 'bars', 0, 1000)
		 setObjectCamera('bottomBar', 'hud')
		 scaleObject('bottomBar', 0.8, 0.8)
		 addLuaSprite('bottomBar', false)

	     makeAnimatedLuaSprite('BG1', 'sans', -300, -300)
		 addAnimationByPrefix('BG1', 'BG LOOP', 'BG LOOP', 4, true)
	     objectPlayAnimation('BG1', 'BG LOOP', true)
		 setProperty('BG1.alpha', 0) 
		 addLuaSprite('BG1', false)
end

function onStepHit()
        if curStep == 272 then
		    doTweenY('topTween', 'topBar', 0, 0.5, 'circInOut')
			doTweenY('bottomTween', 'bottomBar', 600, 0.5, 'circInOut')	
		    cameraShake('game', 0.05, 16)
			setProperty('BG1.alpha', 1)			
	    elseif curStep == 400 then
		    doTweenY('topTween', 'topBar', -400, 0.5, 'circInOut')
		    doTweenY('bottomTween', 'bottomBar', 1000, 0.5, 'circInOut')
			setProperty('BG1.alpha', 0)	
end
        if curStep == 528 then
		    SansSwingUp()
	    elseif curStep == 656 then
		    SansSwingDown()
		elseif curStep == 1280 then
		    SansSwingUp()
		elseif curStep == 1284 then
		    SansSwingDown()
		elseif curStep == 1288 then
		    SansSwingUp()
		elseif curStep == 1292 then
		    SansSwingDown()
end
end

function SansSwingUp()
                  characterPlayAnim('dad', 'swingUp', true)
		          doTweenAngle('camGameTween', 'camGame', 180, 0.15, 'circInOut')
				  cameraShake('game', 0.05, 0.15)
				  playSound('cameraFlip', 1, 'camFlip')				  
end

function SansSwingDown()
                  characterPlayAnim('dad', 'swingDown', true)
		          doTweenAngle('camGameTween', 'camGame', 0, 0.15, 'circInOut')
				  cameraShake('game', 0.05, 0.15)
				  playSound('cameraFlip', 1, 'camFlip')				  
end