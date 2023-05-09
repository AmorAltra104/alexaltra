function onCreate()	
	skiX = getProperty('boyfriend.x')
	skiY = getProperty('boyfriend.y')

	makeLuaSprite('room', 'love', -970, -750)
    setProperty('room.antialiasing', false)
	scaleObject('room', 10, 10)
	addLuaSprite('room', false)
	
	makeLuaSprite('dungeon', 'dungeon', -970, -750)
    setProperty('dungeon.antialiasing', false)
	scaleObject('dungeon', 10, 10)
	setProperty('dungeon.alpha', 0)
	addLuaSprite('dungeon', false)
	
	makeLuaSprite('roomCover', 'loveBlue', -970, -750)
    setProperty('roomCover.antialiasing', false)
	scaleObject('roomCover', 10, 10)
	addLuaSprite('roomCover', false)
	
	makeLuaSprite('ski1', 'skiDown', 485, 680)
	setProperty('ski1.alpha', 0)
	addLuaSprite('ski1', true)
	
	makeLuaSprite('ski2', 'skiNope', 485, 680)
	setProperty('ski2.alpha', 0)
	addLuaSprite('ski2', true)
	
	makeLuaSprite('ski3', 'skiMiss', 485, 650)
	setProperty('ski3.alpha', 0)
	addLuaSprite('ski3', true)
	
	makeLuaSprite('room1', 'loveFG', -970, -750)
    setProperty('room1.antialiasing', false)
	scaleObject('room1', 10, 10)
	addLuaSprite('room1', true)
	
	makeAnimatedLuaSprite('petals', 'petals', -1000, 400)
	addAnimationByPrefix('petals', 'petals', 'PETALS ALL', 48, true)
	playAnim('petals', 'petals', true)
    setProperty('petals.antialiasing', false)
	scaleObject('petals', 10, 10)
	setProperty('petals.alpha', 0)
	addLuaSprite('petals', true)
	
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
	setProperty('black.alpha', 0)
	addLuaSprite('black', true)
end

function onStepHit()
    if curStep == 192 then
	       doTweenY('barTopTweenY', 'barTop', 0, 1, 'circInOut')
	       doTweenY('barBottomTweenY', 'barBottom', 600, 1, 'circInOut')
		   setProperty('petals.alpha', 1)
	elseif curStep == 329 then
		doTweenAlpha('floorTweenAlpha', 'roomCover', 0, 0.5, 'linear')
		doTweenAlpha('camHUDTweenAlpha', 'camHUD', 0, 0.5, 'linear')
	    setProperty('boyfriend.alpha', 0)
		setProperty('ski1.alpha', 1)
		setProperty('petals.alpha', 0)
	elseif curStep == 334 then
		setProperty('ski1.alpha', 0)
		setProperty('ski2.alpha', 1)
	elseif curStep == 340 then
		setProperty('ski2.alpha', 0)
		setProperty('ski3.alpha', 1)
		doTweenY('skiTweenY', 'ski3', 2000, 1, 'linear')
		doTweenAlpha('blackTweenAlpha', 'black', 1, 2, 'linear')
	elseif curStep == 367 then
		setProperty('boyfriend.alpha', 1)	
		setProperty('dungeon.alpha', 1)	
		setProperty('room.alpha', 0)	
		setProperty('room1.alpha', 0)	
		setProperty('roomCover.alpha', 0)	
		setProperty('camHUD.alpha', 1)	
		setProperty('barBottom.alpha', 0)	
		setProperty('barTop.alpha', 0)	
	elseif curStep == 380 then
		doTweenAlpha('blackTweenAlpha', 'black', 0, 0.1, 'linear')
end
end
			  
	         

		          