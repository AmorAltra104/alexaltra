function onCreate()
    makeLuaSprite('ruins', 'Ruins/1', -500, -100)
    scaleObject('ruins', 10, 10)
    setProperty('ruins.antialiasing', false)
    addLuaSprite('ruins', false)
	
	makeAnimatedLuaSprite('petals', 'petalsRed', -600, 300)
	addAnimationByPrefix('petals', 'petals', 'PETALS ALL', 48, true)
	playAnim('petals', 'petals', true)
    setProperty('petals.antialiasing', false)
	scaleObject('petals', 10, 10)
	setProperty('petals.alpha', 0)
	addLuaSprite('petals', true)
	
	makeLuaSprite('black', 'empty', -500, -100)
    scaleObject('black', 10, 10)
    setProperty('black.alpha', 0)
	setObjectCamera('black', 'hud')
    addLuaSprite('black', true)
end

function onStepHit()
     if curStep == 216 then 
	     doTweenAlpha('blackTween', 'black', 1, 2.2, 'linear')
	 elseif curStep == 238 then 
	      makeLuaSprite('ruins', 'Ruins/2', -500, -100)
          scaleObject('ruins', 10, 10)
          setProperty('ruins.antialiasing', false)
          addLuaSprite('ruins', false)		  
          setProperty('defaultCamZoom', 0.6)
	 elseif curStep == 239 then 
	     doTweenAlpha('blackTween', 'black', 0, 0.1, 'linear')
	 elseif curStep == 383 then 
	     doTweenAlpha('blackTween', 'black', 1, 1.5, 'linear')
	 elseif curStep == 398 then 
	      makeLuaSprite('ruins', 'Ruins/3', -1200, 200)
          scaleObject('ruins', 10, 10)
          setProperty('ruins.antialiasing', false)
          addLuaSprite('ruins', false)		
		  setProperty('defaultCamZoom', 0.8)
	 elseif curStep == 402 then 
	 	  doTweenAlpha('blackTween', 'black', 0, 0.1, 'linear')
	 elseif curStep == 552 then 
	 	  doTweenAlpha('blackTween', 'black', 1, 1.5, 'linear')
	 elseif curStep == 568 then 
	 	  makeLuaSprite('ruins', 'Ruins/6', -150, 200)
          scaleObject('ruins', 10, 10)
          setProperty('ruins.antialiasing', false)
          addLuaSprite('ruins', false)		
		  setProperty('defaultCamZoom', 0.8)
		  setProperty('petals.alpha', 1)
      elseif curStep == 571 then 
	 	  doTweenAlpha('blackTween', 'black', 0, 0.1, 'linear')
end
end
	          