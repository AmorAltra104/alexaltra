local canCamera = false

function onCreate()
	setProperty('skipCountdown', true)
	
	makeLuaSprite('black', 'empty', 0, 0)
    setProperty('black.antialiasing', false)
	scaleObject('black', 10, 10)
	addLuaSprite('black', false)
	
	makeLuaSprite('sansRoom', 'house', -300, 400)
    setProperty('sansRoom.antialiasing', false)
	scaleObject('sansRoom', 10, 10)
	addLuaSprite('sansRoom', false)
	
	makeLuaSprite('waterfall', 'Waterfall', 0, 150)
	scaleObject('waterfall', 1.5, 1.5)
	setProperty('waterfall.alpha', 0)
	addLuaSprite('waterfall', false)
	
	makeLuaSprite('black1', 'empty', 0, 0)
    setProperty('black1.antialiasing', false)
	scaleObject('black1', 1, 1)
	setObjectCamera('black1', 'hud')
	setProperty('black1.alpha', 0) 
	addLuaSprite('black1', false)
	
	sansX = getProperty('dad.x')
	triggerEvent('Play Animation', 'Sleeping', 'Dad')
	triggerEvent('Camera Follow Pos', '1200', '700')
end

function onCreatePost()
	setProperty('boyfriend.alpha', 0)
	setProperty('dad.x', 1500)
	setProperty('camHUD.alpha', 0)
end

function onSongStart()
	setProperty('defaultCamZoom', 0.8)
	setProperty('boyfriend.y', getProperty('boyfriend.y') - 20)	
end

function onStepHit()
	if curStep == 128 then
		cameraFlash('camOther', 'FFFFFF', 0.5, true)
		setProperty('dad.x', sansX)
		removeLuaSprite('sansRoom', true)
		removeLuaSprite('black', true)
		setProperty('boyfriend.alpha', 1)
		setProperty('gf.alpha', 0)
		setProperty('camHUD.alpha', 1)
	    triggerEvent('Camera Follow Pos', '1000', '750')
		setProperty('defaultCamZoom', 0.9)
		canCamera = true
end
	if curStep == 608 then
		canCamera = false
		triggerEvent('Camera Follow Pos', '1000', '700')
	elseif curStep == 642 then
		canCamera = true
	elseif curStep == 801 then
		canCamera = false
		triggerEvent('Camera Follow Pos', '1000', '700')
	elseif curStep == 835 then
		canCamera = true
	elseif curStep == 1185 then
		canCamera = false
		triggerEvent('Camera Follow Pos', '1000', '700')
	elseif curStep == 1219 then
		canCamera = true
	elseif curStep == 1379 then
		canCamera = false
		triggerEvent('Camera Follow Pos', '1000', '700')
	elseif curStep == 1409 then
		canCamera = true
	elseif curStep == 1600 then
		canCamera = false
		triggerEvent('Camera Follow Pos', '1300', '800')
	elseif curStep == 1606 then
		canCamera = true
	elseif curStep == 1665 then
		canCamera = false
		triggerEvent('Camera Follow Pos', '1000', '700')
	elseif curStep == 1761 then
		canCamera = true
	elseif curStep == 1793 then
		canCamera = false
		triggerEvent('Camera Follow Pos', '1000', '700')
	elseif curStep == 1857 then
		canCamera = true
	elseif curStep == 1889 then
		canCamera = false
		triggerEvent('Camera Follow Pos', '1000', '700')
end
	if curStep == 1279 then
		setProperty('black1.alpha', 1)
		playSound('smack', 1, 'switchBG')
	elseif curStep == 1282 then
		setProperty('waterfall.alpha', 1)
		setProperty('black1.alpha', 0)
		playSound('smack', 1, 'switchBG')
end
	if curStep == 1378 then
		setProperty('black1.alpha', 1)
		playSound('smack', 1, 'switchBG')
	elseif curStep == 1380 then
		setProperty('waterfall.alpha', 0)
		setProperty('black1.alpha', 0)
		playSound('smack', 1, 'switchBG')
end
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
	if canCamera == true then
		if noteType == '' then
			triggerEvent('Camera Follow Pos', '1300', '800')
		elseif noteType == 'Sky Sing Note' then
			triggerEvent('Camera Follow Pos', '1200', '700')
		elseif noteType == 'Sky Sing Note1' then
			triggerEvent('Camera Follow Pos', '1250', '750')
end
end
end

function opponentNoteHit(id, noteData, noteType, isSustainNote)
	if canCamera == true then
	if noteType == '' then
			triggerEvent('Camera Follow Pos', '720', '800')
	elseif noteType == 'GF Sing' then
			triggerEvent('Camera Follow Pos', '900', '700')
	elseif noteType == 'Dad & GF Sing Note' then
			triggerEvent('Camera Follow Pos', '800', '750')
end
end
end