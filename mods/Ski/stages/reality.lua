local dynamicCameraX = 1000
local dynamicCameraY = 900

function onCreate()
	curWindowX = getPropertyFromClass("openfl.Lib", "application.window.x")
	curWindowY = getPropertyFromClass("openfl.Lib", "application.window.y")
		
	makeLuaSprite('black', 'empty', 0, 0)
	setObjectCamera('black', 'other')
	setProperty('black.alpha', 1)
	addLuaSprite('black', false)
	
	makeLuaSprite('room', 'realityHall', -1200, -900)
    setProperty('room.antialiasing', false)
	scaleObject('room', 10, 10)
	addLuaSprite('room', false)

	setProperty('camHUD.alpha', 0)	
	setProperty('skipCountdown', true)
end

function onStepHit()
	if curStep == 127 then
		doTweenAlpha('blackRealityTweenAlpha', 'black', 0, 6.5, 'linear')
		runTimer('cameraTimer', 0.01, 0)	
	elseif curStep == 192 then
		doTweenAlpha('blackRealityTweenAlpha1', 'black', 1, 1, 'linear')
	elseif curStep == 208 then
		doTweenAlpha('blackRealityTweenAlpha', 'black', 0, 6.5, 'linear')
		runTimer('cameraTimer1', 0.01, 0)	
	elseif curStep == 264 then
		doTweenAlpha('camHUDTweenAlpha', 'camHUD', 1, 0.5, 'linear')
	elseif curStep == 272 then
		cancelTimer('cameraTimer1')
	elseif curStep == 1392 then
		setProperty('black.alpha', 1)
	elseif curStep == 1406 then
		setProperty('black.alpha', 0)
	elseif curStep == 1992 then
		setPropertyFromClass("openfl.Lib", "application.window.x", 10000)
	elseif curStep == 2155 then
		setPropertyFromClass("openfl.Lib", "application.window.x", curWindowX)
	elseif curStep == 2672 then
		doTweenAlpha('blackRealityTweenAlpha', 'black', 1, 15, 'linear')
end                                               
end

function onCreatePost() 
    setProperty('camZoomingMult', 0)
end

function onUpdate()
	if curStep < 383 then
		triggerEvent('Camera Follow Pos', dynamicCameraX, dynamicCameraY)
	else
		triggerEvent('Camera Follow Pos', '', '')		
end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'cameraTimer' then
		dynamicCameraX = dynamicCameraX - 1
end
	if tag == 'cameraTimer1' then
		dynamicCameraY = dynamicCameraY + 1
end
end

function onTweenCompleted(tag)
	if tag == 'blackRealityTweenAlpha1' then
		cancelTimer('cameraTimer')
		dynamicCameraX = 600
		dynamicCameraY = 450
end
end
			  
	         

		          