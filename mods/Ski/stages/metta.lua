function onCreate()
	prevX = getProperty('boyfriendGroup.x')
	prevY = getProperty('boyfriendGroup.y')
	
	setProperty('skipCountdown', true)
	setProperty('camHUD.alpha', 0)
	setProperty('camGame.alpha', 0)
	setObjectCamera('boyfriendGroup', 'other')
	setProperty('boyfriendGroup.alpha', 0)
	setProperty('boyfriendGroup.x', 400)
	setProperty('boyfriendGroup.y', -50)
	
	makeLuaSprite('BG', 'mettaBG', -700, -700)
    setProperty('BG.antialiasing', false)
	scaleObject('BG', 10, 10)
	setProperty('BG.alpha', 0)
	addLuaSprite('BG', false)
	
	makeLuaSprite('room1', 'mettaFloorBehind', -700, -550)
    setProperty('room1.antialiasing', false)
	scaleObject('room1', 10, 10)
	addLuaSprite('room1', false)
	
	makeLuaSprite('room', 'mettaFloor', -700, -550)
    setProperty('room.antialiasing', false)
	scaleObject('room', 10, 10)
	addLuaSprite('room', false)
	
	makeAnimatedLuaSprite('people', 'mettaBop', -1100, -290)
	addAnimationByPrefix('people', 'bop', 'bop', 24, false)
	objectPlayAnimation('people', 'bop', true)         
	scaleObject('people', 2, 2)
	setProperty('people.alpha', 0)
	addLuaSprite('people', false)	
	
	makeLuaSprite('room3D', 'mettaFloor3D', -1800, -1270)
	scaleObject('room3D', 2, 2)
	setProperty('room3D.alpha', 0) 
	addLuaSprite('room3D', false)	
	
	makeLuaSprite('lights', 'mettaLight', 0, -300)
    setProperty('lights.antialiasing', false)
	scaleObject('lights', 0.8, 0.8)
	setObjectCamera('lights', 'other')
	addLuaSprite('lights', false) 
	
	makeLuaSprite('lightsOn', 'mettaLightON', 0, 0)
    setProperty('lightsOn.antialiasing', false)
	scaleObject('lightsOn', 0.8, 0.8)
	setObjectCamera('lightsOn', 'other')
	setProperty('lightsOn.alpha', 0)
	addLuaSprite('lightsOn', false) 
	
	makeAnimatedLuaSprite('smoke', 'smoke', -80, -130)
	addAnimationByPrefix('smoke', 'smoke', 'smoke', 24, true)
	objectPlayAnimation('smoke', 'smoke', true)
	setObjectCamera('smoke', 'other')
	scaleObject('smoke', 1.1, 1.1)
	setProperty('smoke.alpha', 0)
	addLuaSprite('smoke', false)
	
	makeLuaSprite('black', 'empty', 0, 0)
	setObjectCamera('black', 'other')
	addLuaSprite('black', false) 
	
	makeLuaSprite('black1', 'empty', 0, 0)
	setObjectCamera('black1', 'hud')
	setProperty('black1.alpha', 0)
	addLuaSprite('black1', false) 
end

function onStepHit()
	if curStep == 219 then
		doTweenY('camGameTweenY', 'camGame', -50, 1, 'smootherStepInOut')
	elseif curStep == 75 then
		doTweenAlpha('emptyTweenAlpha', 'black', 0, 2, 'linear')
		doTweenY('lightsTweenY', 'lights', 0, 3, 'linear')
	elseif curStep == 200 then
		doTweenAlpha('emptyTweenAlpha1', 'black', 1, 1, 'linear')
	elseif curStep == 214 then
		doTweenAlpha('emptyTweenAlpha2', 'black', 0, 0.2, 'linear')
	elseif curStep == 851 then
		cancelTween('camGameTweenY')
		cancelTween('camGameTweenY1')
		setProperty('black1.alpha', 1)
		removeLuaSprite('room', true)
		removeLuaSprite('room1', true)
	    setProperty('room3D.alpha', 1)
	    setProperty('people.alpha', 1)
		setProperty('BG.alpha', 1)
	elseif curStep == 859 then
		setProperty('black1.alpha', 0)
end
end

function onTweenCompleted(tag)
		if tag == 'camGameTweenY' then
			 doTweenY('camGameTweenY1', 'camGame', 0, 1, 'smootherStepInOut')
		elseif tag == 'camGameTweenY1' then
			 doTweenY('camGameTweenY', 'camGame', -50, 1, 'smootherStepInOut')
end
		if tag == 'lightsTweenY' then
			 playSound('smack', 1, 'lightsOn')
			 setProperty('lights.alpha', 0)
			 setProperty('lightsOn.alpha', 1)
			 runTimer('showSkiTimer', 1, 1)
			 doTweenAlpha('smokeTweenAlpha', 'smoke', 1, 2, 'linear')
end
		if tag == 'emptyTweenAlpha1' then
			 removeLuaSprite('lights', true)
			 removeLuaSprite('lightsOn', true)
			 removeLuaSprite('smoke', true)
			 setObjectCamera('boyfriendGroup', 'game')
			 setProperty('boyfriendGroup.alpha', 1)
			 setProperty('boyfriendGroup.x', prevX)
			 setProperty('boyfriendGroup.y', prevY)
			 setProperty('camHUD.alpha', 1)
			setProperty('camGame.alpha', 1)
end
end

function onTimerCompleted(tag, loops, loopsLeft)
		if tag == 'showSkiTimer' then
						 doTweenAlpha('skiTweenAlpha', 'boyfriendGroup', 1, 2, 'linear')
end
end

function onBeatHit()
	objectPlayAnimation('people', 'bop', true)
end
		
			
			  
	         

		          