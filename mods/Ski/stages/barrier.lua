local dynamicCameraX = 1000
local dynamicCameraY = 900

function onCreate()
   addCharacterToList('ski-white', 'boyfriend')
   addCharacterToList('ski', 'boyfriend')
   
   runTimer('cameraTimer', 0.1, 0)	
   
   setProperty('skipCountdown', true)
   setProperty('camZoomingMult', 0)
	
	makeLuaSprite('black', 'empty', 0, 0)
	setObjectCamera('black', 'other')
	scaleObject('black', 1, 1)
	addLuaSprite('black', false)
	
	makeLuaSprite('room', 'barrierBG', -700, -550)
    setProperty('room.antialiasing', false)
	scaleObject('room', 10, 10)
	setProperty('room.alpha', 1)
	addLuaSprite('room', false)
	
	makeLuaSprite('souls', 'souls', -700, -550)
    setProperty('souls.antialiasing', false)
	scaleObject('souls', 10, 10)
	setProperty('souls.alpha', 1)
	addLuaSprite('souls', false)
	doTweenY('soulsFloatTween', 'souls', -560, 3, 'smootherStepInOut')
	
	makeLuaSprite('black1', 'empty', 0, 0)
	setObjectCamera('black1', 'game')
	scaleObject('black1', 10, 10)
	setProperty('black1.alpha', 0)
	addLuaSprite('black1', false)
	
	makeLuaSprite('roomWhite', 'barrier-white', -700, -550)
    setProperty('roomWhite.antialiasing', false)
	scaleObject('roomWhite', 10, 10)
	setProperty('roomWhite.alpha', 0)
	addLuaSprite('roomWhite', false)
end

function onCreatePost()
   setProperty('boyfriend.alpha', 0)
   setProperty('camHUD.alpha', 0)
end

function onSongStart()
       doTweenAlpha('blackTween', 'black', 0, 5, 'circInOut')
end

function onTimerCompleted(tag, loops, loopsLeft)
		if tag == 'cameraTimer' then
				dynamicCameraX = dynamicCameraX - 1
end
		if tag == 'cameraTimer1' then
				dynamicCameraY = dynamicCameraY + 1
end
end

function onStepHit()
      if curStep == 111 then
			doTweenAlpha('blackTween', 'black', 1, 2, 'smootherStepInOut')
      elseif curStep == 128 then
			cancelTimer('cameraTimer')
			dynamicCameraX = 900
			dynamicCameraY = 700
			runTimer('cameraTimer1', 0.1, 0)
			doTweenAlpha('blackTween', 'black', 0, 2, 'smootherStepInOut')
      elseif curStep == 208 then
			cancelTimer('cameraTimer1')
			doTweenAlpha('blackTween1', 'black', 1, 3, 'smootherStepInOut')
      elseif curStep == 392 then
			cameraFlash('hud', 'FFFFFF', true)
			setProperty('black1.alpha', 0) 
      elseif curStep == 1224 then
			cameraFlash('hud', 'FFFFFF', true)
			setProperty('roomWhite.alpha', 1) 
      elseif curStep == 1352 then
			cameraFlash('hud', 'FFFFFF', true)
			setProperty('roomWhite.alpha', 0) 
end
end
	     
function onTweenCompleted(tag)
       if tag == 'soulsFloatTween' then
	          doTweenY('soulsFloatTween1', 'souls', -540, 3, 'smootherStepInOut')  
       elseif tag == 'soulsFloatTween1' then
	          doTweenY('soulsFloatTween', 'souls', -560, 3, 'smootherStepInOut')  
end
       if tag == 'blackTween1' then
	             setProperty('boyfriend.alpha', 1)
	             setProperty('black1.alpha', 1)
				 setProperty('camHUD.alpha', 1)
				 doTweenAlpha('blackTween2', 'black', 0, 1.5, 'smootherStepInOut')
end
end

function onUpdate()
	if curStep < 220 then
		triggerEvent('Camera Follow Pos', dynamicCameraX, dynamicCameraY)
	else
		triggerEvent('Camera Follow Pos', '', '')		
end
end

local u = false;
local r = 0;
local i =0
local shot = false;
local agent = 1
local health = 0;
local xx = 450.95;
local yy = 570;
local xx2 = 1152.9;
local yy2 = 455;
local ofs = 35;
local followchars = true;
local del = 0;
local del2 = 0;

function onUpdatePost(elapsed)
		daElapsed = elapsed * 30
		i = i + daElapsed
		daYvalue = 	
		setProperty('souls.y', (math.sin(i/15)*10) - 550)
		yy = (math.sin(i/20)*50) + 200
	if del > 0 then
		del = del - 1
end
	if del2 > 0 then
		del2 = del2 - 1
end
end
			  
	         

		          