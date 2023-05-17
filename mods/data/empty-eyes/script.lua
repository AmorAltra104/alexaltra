function onCreate()
	makeLuaSprite('fade', 'cinamatic bars', -600, -360)
	addLuaSprite('fade', true)
	doTweenAlpha('fadetween','fade',0, 0.1, linear)
	setObjectCamera('fade', 'hud')
	scaleObject('fade', 1.5, 0.3)
end
function onCreatePost()
setObjectOrder('fade', 1)
end
function onStepHit()
	if curStep == 396 then
		doTweenAngle('fliptween', 'camHUD', 360, 0.2, 'CircInOut')
end

if curStep == 896 then
	doTweenAlpha('fadetween2', 'fade', 1, 0.3, linear)
	doTweenZoom('camera', 'camGame', tonumber(1), tonumber(10.6), 'linear');
end

if curStep == 1022 then
	doTweenAlpha('fadetween2', 'fade', 0, 0.3, linear)
end

if curStep == 1924 then
	doTweenAngle('fliptween2', 'camHUD', 360, 0.2, 'CircInOut')
end
end