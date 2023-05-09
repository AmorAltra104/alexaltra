function onStepHit()
       if curStep == 128 then
	       doTweenAlpha('camHUDTweenAlpha', 'camHUD', 1, 0.5, 'linear')
       elseif curStep == 256 then
	       doTweenY('barTopTweenY', 'barTop', 0, 1, 'circInOut')
	       doTweenY('barBottomTweenY', 'barBottom', 600, 1, 'circInOut')
       elseif curStep == 1006 then
	   	   doTweenAlpha('blackTweenAlpha', 'black', 1, 10, 'linear')
end
end

function onCreate()
    setProperty('camHUD.alpha', 0)
	setProperty('skipCountdown', true)

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
	setProperty('black.alpha', 1)
	addLuaSprite('black', false)
end

function onSongStart()
	   	   doTweenAlpha('blackTweenAlpha', 'black', 0, 5, 'linear')
		   doTweenZoom('cameraGameTweenZoom', 'camGame', 0.8, 20, 'linear')
end