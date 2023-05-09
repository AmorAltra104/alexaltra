function onCreate()
	setProperty('skipCountdown', true)

	makeLuaSprite('room', 'undying', -700, -400)
    setProperty('room.antialiasing', false)
	scaleObject('room', 10, 10)
	addLuaSprite('room', false)
	
	makeLuaSprite('roomWhite', 'undyingWhite', -700, -400)
    setProperty('roomWhite.antialiasing', false)
	scaleObject('roomWhite', 10, 10)
	setProperty('roomWhite.alpha', 0)
	addLuaSprite('roomWhite', false)
	
	makeLuaSprite('spears', 'spears', 0, -250)
    setProperty('spears.antialiasing', false)
	scaleObject('spears', 1, 1)
	setProperty('spears.alpha', 0)
	setObjectCamera('spears', 'hud')
	addLuaSprite('spears', false)
	doTweenX('spearTweenLoop', 'spears', -982, 0.5, 'linear')	
	
	makeLuaSprite('room1', 'undying', 0, -500)
    setProperty('room1.antialiasing', false)
	scaleObject('room1', 7, 7)
	setObjectCamera('room1', 'other')
	setProperty('room1.alpha', 1) 
	addLuaSprite('room1', false)
	
	makeLuaSprite('black', 'empty', 0, 0)
	setObjectCamera('black', 'other')
	addLuaSprite('black', false)
	
	makeLuaSprite('barTop', 'bars', 0, -150)
    setObjectCamera('barTop', 'hud')
	scaleObject('barTop', 0.8, 0.8)
	addLuaSprite('barTop', false)
	
	makeLuaSprite('barBottom', 'bars', 0, 750)
    setObjectCamera('barBottom', 'hud')
	scaleObject('barBottom', 0.8, 0.8)
	setObjectOrder('barBottom', 0)
	addLuaSprite('barBottom', false)
end

function onSongStart()
	doTweenX('introTweenX', 'room1', -1200, 25, 'linear')
	doTweenAlpha('introBlackTweenAlpha', 'black', 0, 3, 'smootherStepInOut')
end

function onStepHit()
	if curStep == 224 then
		doTweenAlpha('introBlackTweenAlpha1', 'black', 1, 1.5, 'smootherStepInOut')
	elseif curStep == 251 then
		doTweenAlpha('introBlackTweenAlpha2', 'black', 0, 0.5, 'smootherStepInOut')
end
	if curStep == 448 then
		cameraFlash('hud', 'FFFFFF', 0.5, true)
		setProperty('spears.alpha', 1)
	elseif curStep == 1216 then
		setProperty('roomWhite.alpha', 1)
		setProperty('room.alpha', 0)
		cameraFlash('hud', 'FFFFFF', 0.5, true)
		setProperty('spears.alpha', 0)
		doTweenY('barTopTweenY', 'barTop', 0, 1, 'circInOut')
	    doTweenY('barBottomTweenY', 'barBottom', 600, 1, 'circInOut')
end
	if curStep == 1408 then
		setProperty('roomWhite.alpha', 0)
		setProperty('room.alpha', 1)
		cameraFlash('hud', 'FFFFFF', 0.5, true)
		setProperty('spears.alpha', 1)
		doTweenY('barTopTweenY', 'barTop', -150, 1, 'circInOut')
	    doTweenY('barBottomTweenY', 'barBottom', 750, 1, 'circInOut')
end
	if curStep == 1792 then
		cameraFlash('hud', 'FFFFFF', 0.5, true)
		setProperty('room.alpha', 0)
		setProperty('black.alpha', 1)
end
end

function onTweenCompleted(tag)
	if tag == 'introBlackTweenAlpha1' then
		cancelTween('introTweenX')
		removeLuaSprite('room1', true)
end
	if tag == 'spearTweenLoop' then
		setProperty('spears.x', 0)
		doTweenX('spearTweenLoop', 'spears', -982, 0.5, 'linear') 
end
end
		
		
			
			  
	         

		          