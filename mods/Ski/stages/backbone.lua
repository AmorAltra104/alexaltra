function onCreate()
	addCharacterToList('ski', 'boyfriend')
    setProperty('skipCountdown', true)
    setProperty('camHUD.alpha', 0)
	
	makeLuaSprite('room', 'megaloHall', -1100, -900)
    setProperty('room.antialiasing', false)
	scaleObject('room', 10, 10)
	setProperty('room.alpha', 0)
	addLuaSprite('room', false)
	
	makeLuaSprite('room1', 'hallWhite', -1100, -900)
    setProperty('room1.antialiasing', false)
	scaleObject('room1', 10, 10)
	setProperty('room1.alpha', 0)
	addLuaSprite('room1', false)
	
	makeLuaSprite('barTop', 'bars', 0, -150)
    setObjectCamera('barTop', 'hud')
	scaleObject('barTop', 0.8, 0.8)
	addLuaSprite('barTop', false)
	
	makeLuaSprite('barBottom', 'bars', 0, 750)
    setObjectCamera('barBottom', 'hud')
	scaleObject('barBottom', 0.8, 0.8)
	setObjectOrder('barBottom', 0)
	addLuaSprite('barBottom', false)
	
	makeLuaSprite('black', 'empty', 0, 0)
	setObjectCamera('black', 'other')
	scaleObject('black', 0.8, 0.8)
	addLuaSprite('black', false)
	
	setProperty('camZoomingMult', 0)
end

function onStepHit()
	if curStep == 19 then
		doTweenAlpha('blackTweenAlpha', 'black', 0, 10, 'linear')
	elseif curStep == 200 then
		doTweenAlpha('arrowsTweenAlpha', 'camHUD', 1, 0.2, 'linear')
	elseif curStep == 291 then
		cameraFlash('hud', 'FFFFFF', 0.5, true)
		triggerEvent('Change Character', '0', 'ski')
		setProperty('room.alpha', 1)
		setProperty('defaultCamZoom', 0.8)
		setProperty('newHealth.alpha', 1)
		setProperty('healthRed.alpha', 1)
		setProperty('healthYellow.alpha', 1)
		setProperty('healthPurple.alpha', 1)
		setProperty('accText.alpha', 1)
		setProperty('healthText.alpha', 1)
		setProperty('levelText.alpha', 1)
		setProperty('timeText.alpha', 1)
		setProperty('songNameText.alpha', 1)
		setProperty('timeButton.alpha', 1)
		setProperty('timeBar.alpha', 1)
		setProperty('timeBarBG.alpha', 1)
	elseif curStep == 1952 then
		setProperty('black.alpha', 1)
		setProperty('room.alpha', 0)
		setProperty('room1.alpha', 1)
	elseif curStep == 1987 then
	    doTweenY('barTopTweenY', 'barTop', 0, 1, 'circInOut')
	    doTweenY('barBottomTweenY', 'barBottom', 600, 1, 'circInOut')
		setProperty('black.alpha', 0)
		setProperty('defaultCamZoom', 1)
	elseif curStep == 2880 then
		setProperty('black.alpha', 1)
		setProperty('room.alpha', 1)
		setProperty('room1.alpha', 0)
	elseif curStep == 2915 then
		doTweenY('barTopTweenY', 'barTop', -150, 1, 'circInOut')
	    doTweenY('barBottomTweenY', 'barBottom', 750, 1, 'circInOut')
		setProperty('black.alpha', 0)
		setProperty('defaultCamZoom', 0.8)
end
end

function onSongStart()
		setProperty('newHealth.alpha', 0)
		setProperty('healthRed.alpha', 0)
		setProperty('healthYellow.alpha', 0)
		setProperty('healthPurple.alpha', 0)
		setProperty('accText.alpha', 0)
		setProperty('healthText.alpha', 0)
		setProperty('levelText.alpha', 0)
		setProperty('timeText.alpha', 0)
		setProperty('songNameText.alpha', 0)
		setProperty('timeButton.alpha', 0)
		setProperty('timeBar.alpha', 0)
		setProperty('timeBarBG.alpha', 0)	
end

		
			        
			  
	         

		          