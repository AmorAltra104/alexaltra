function onCreate()	
	makeLuaSprite('room', 'toriel', -570, -200)
    setProperty('room.antialiasing', false)
	scaleObject('room', 10, 10)
	addLuaSprite('room', false)
	
	makeLuaSprite('room1', 'torielBlack', -570, -200)
    setProperty('room1.antialiasing', false)
	scaleObject('room1', 10, 10)
	setProperty('room1.alpha', 0)
	addLuaSprite('room1', false)
	
	makeLuaSprite('fire2', 'fireBG', 0, -720)
    setProperty('fire2.antialiasing', false)
	scaleObject('fire2', 1, 1)
	setObjectCamera('fire2', 'hud')
	setProperty('fire2.alpha', 0)
	addLuaSprite('fire2', false)
	
	doTweenY('fireTweenY', 'fire2', 0, 1, 'linear')
end

function onStepHit()
	if curStep == 240 then
		cameraFlash('hud', 'FFFFFF', 0.2, true)
		setProperty('fire2.alpha', 1)
	elseif curStep == 408 then
		cameraFlash('hud', 'FFFFFF', 0.2, true)
		setProperty('fire2.alpha', 0)
		setProperty('room.alpha', 0)
		setProperty('room1.alpha', 1)
	elseif curStep == 504 then
		cameraFlash('hud', 'FFFFFF', 0.2, true)
		setProperty('fire2.alpha', 0)
		setProperty('room.alpha', 1)
		setProperty('room1.alpha', 0)
	elseif curStep == 696 then
		cameraFlash('hud', 'FFFFFF', 0.2, true)
		setProperty('fire2.alpha', 1)
end
end

function onTweenCompleted(tag)
	if tag == 'fireTweenY' then
		setProperty('fire2.y', -720)
		doTweenY('fireTweenY', 'fire2', 0, 1, 'linear')
end
end

function onCreatePost() 
    setProperty('camZoomingMult', 0)
end
			  
	         

		          