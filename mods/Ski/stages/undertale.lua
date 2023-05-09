local curRoom = 1

function onCreatePost()
	setProperty('showRating', false)
	setProperty('showComboNum', false)
	
    makeLuaSprite('room', 'UNDERTALE/1', -400, -50)
    scaleObject('room', 10, 10)
    setProperty('room.antialiasing', false)
    addLuaSprite('room', false)
	
	makeLuaSprite('black', 'empty', 0, 0)
    scaleObject('black', 1, 1)
    setProperty('black.alpha', 0)
	setObjectCamera('black', 'hud')
    addLuaSprite('black', false)
	
	makeLuaSprite('barTop', 'bars', 0, -50)
    setObjectCamera('barTop', 'hud')
	scaleObject('barTop', 0.8, 0.8, true)
	addLuaSprite('barTop', false)
	
	makeLuaSprite('barBottom', 'bars', 0, 650)
    setObjectCamera('barBottom', 'hud')
	scaleObject('barBottom', 0.8, 0.8)
	setObjectOrder('barBottom', 20)
	addLuaSprite('barBottom', true)
end

function onStepHit()
     if curStep == 370 then 
	     onChangeRoom()
     elseif curStep == 624 then 
	     onChangeRoom()
     elseif curStep == 1138 then 
	     onChangeRoom()
     elseif curStep == 1906 then 
	     onChangeRoom()
     elseif curStep == 2418 then 
	     onChangeRoom()
end
end

function onChangeRoom()
		doTweenAlpha('blackTweenAlpha', 'black', 1, 1.18, 'linear')
		curRoom = curRoom + 1
end

function onTweenCompleted(tag)
		if tag == 'blackTweenAlpha' then
		    makeLuaSprite('room', 'UNDERTALE/' .. curRoom, -550, -150)
			scaleObject('room', 10, 10)
			setProperty('room.antialiasing', false)
			addLuaSprite('room', false)
			runTimer('blackTimer', 1, 1)
end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'blackTimer' then
			doTweenAlpha('blackTweenAlpha1', 'black', 0, 0.3, 'linear')
end
end
		
		
			
	          