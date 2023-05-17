local blackout = false
function onCreate()
	makeLuaSprite('fade', 'black', -600, -350)
    addLuaSprite('fade', true)
    doTweenAlpha('fadtween','fade',0, 0.1, linear)
	setObjectCamera('fade', 'hud')

	makeLuaSprite('badapple', 'badapple', -500, -250);
	addLuaSprite('badapple', true)
	makeGraphic('badapple',3000,3000,'ffffff')
	doTweenAlpha('badappletween','badapple',0, 0.1, linear)
end
function onStepHit()
	if curStep == 96 then
		doTweenAlpha('hud', 'camHUD', 0, 1, 'linear')
	end
	if curStep == 128 then
		doTweenAlpha('hud', 'camHUD', 1, 1, 'linear')
	end
	if curStep == 256 then
		doTweenZoom('camera', 'camGame', tonumber(1.5), tonumber(12.70), 'linear');
	end
	if curStep == 288 or curStep == 928 then
		doTweenAlpha('badappletween','badapple',0.9, 12, linear)
	end

	if curStep == 384 or curStep == 1024 then
		doTweenAlpha('badappletween','badapple',0, 0.3, linear)
	end

	if curStep == 896 then
		doTweenZoom('camera', 'camGame', tonumber(0.9), tonumber(12.70), 'linear');
	end
	if curStep == 1792 then
        doTweenAlpha('camGameOff' ,'camGame', 0, 6, 'linear')
	end
	if curStep == 368 or curStep == 1008 then
		blackout = true
		doTweenAlpha('flashblack', 'fade', 1, 0.1, linear)
	end
	if curStep == 383  or curStep == 1023 then
		blackout = false
		doTweenAlpha('flashback', 'fade', 0, 0.1, linear)
	end
end
function onTweenCompleted(tag)
if blackout == true then 
if tag == 'flashback' then
	doTweenAlpha('flashblack', 'fade', 1, 0.1, linear)
end
if tag == 'flashblack' then
	doTweenAlpha('flashback', 'fade', 0, 0.1, linear)
end
end
end