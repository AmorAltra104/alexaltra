function onCreate()
   setProperty('skipCountdown', true)
   setProperty('camHUD.alpha', 0)
   	
	makeLuaSprite('room', 'Waterfall/room', -1100, -550)
    setProperty('room.antialiasing', false)
	scaleObject('room', 10, 10)
	addLuaSprite('room', false)
	
	makeLuaSprite('alert', 'alert', 1750, -250)
    setProperty('alert.antialiasing', false)
	scaleObject('alert', 10, 10)
	setProperty('alert.alpha', 0)
	addLuaSprite('alert', false)
	
	makeLuaSprite('undyne', 'Waterfall/undyneBack', 1600, -200)
    setProperty('undyne.antialiasing', false)
	scaleObject('undyne', 10, 10)
	addLuaSprite('undyne', false)
	
	makeLuaSprite('undyneFront', 'Waterfall/undyneFront', 1600, -200)
    setProperty('undyneFront.antialiasing', false)
	scaleObject('undyneFront', 10, 10)
	setProperty('undyneFront.alpha', 0)
	addLuaSprite('undyneFront', false)
	
	makeLuaSprite('black', 'empty', 0, 0)
    setObjectCamera('black', 'other')
	addLuaSprite('black', false)
end

function onSongStart()
            doTweenAlpha('blackTween', 'black', 0, 2, 'linear')
end

function onStepHit()
      if curStep == 103 then
          doTweenAlpha('HUDTween', 'camHUD', 1, 0.2, 'linear')
		  setProperty('alert.alpha', 1)
		  triggerEvent('Camera Follow Pos', 2200, 300)
          setProperty('defaultCamZoom', 0.5)
      elseif curStep == 107 then
          setProperty('alert.alpha', 0)
		  setProperty('undyne.alpha', 0)
		  setProperty('undyneFront.alpha', 1)
end
end		  
	             
			  
	         

		          