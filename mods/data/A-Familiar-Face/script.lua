local notch = false
function onCreate()
	--bg change
	makeLuaSprite('NightNotchSky', 'NightNotchSky', 0, 0);
	setScrollFactor('NightNotchSky', 0.7, 0.7);
	scaleObject('NightNotchSky', 1.6, 1.6);
	makeLuaSprite('NightNotchTem', 'NightNotchTem', 0, 0);
	setScrollFactor('NightNotchTem', 0.8, 0.8);
	scaleObject('NightNotchTem', 1.3, 1.3);
	makeLuaSprite('NightNotchGround', 'NightNotchGround', 100, 0);
	setScrollFactor('NightNotchGround', 1.0, 1.0);
	scaleObject('NightNotchGround', 1.4, 1.4);
	makeLuaSprite('Effect', 'Effect', 100, 0);
	setScrollFactor('Effect', 1.0, 1.0);
	scaleObject('Effect', 1.8, 1.8);
	makeLuaSprite('ColorEffectNotch', 'ColorEffectNotch', 100, 0);
	setScrollFactor('ColorEffectNotch', 1.0, 1.0);
	scaleObject('ColorEffectNotch', 1.8, 1.8);
	--regular stuff
	makeLuaSprite('fade', 'cinamatic bars', -600, -360)
	addLuaSprite('fade', true)
	doTweenAlpha('fadetween','fade',0, 0.1, linear)
	setObjectCamera('fade', 'hud')
	scaleObject('fade', 1.5, 0.3)
	makeAnimatedLuaSprite('blockGF', 'characters/blockGF', 1430, 860)
	scaleObject('blockGF', 0.7, 0.7);
	addAnimationByPrefix('blockGF', 'blockGF', 'idle', 24, true)
	objectPlayAnimation('blockGF', 'blockGF', true)
	setProperty('blockGF.color', getColorFromHex('8f8f8f'))
end
function onStepHit()
	if curStep == 248 then
        doTweenAlpha('camHUDOff' ,'camHUD', 0, 0.0001, 'linear')
        doTweenAlpha('camGameOff' ,'camGame', 0, 0.0001, 'linear')
	end
	if curStep == 252 then
        doTweenAlpha('camHUDOff' ,'camHUD', 1, 0.0001, 'linear')
        doTweenAlpha('camGameOff' ,'camGame', 1, 0.0001, 'linear')
	end
	if curStep == 508 or curStep == 1844 or curStep == 2112 then
        doTweenAlpha('camGameOff' ,'camGame', 0, 0.3, 'linear')
	end
	if curStep == 520 or curStep == 1856 then
        doTweenAlpha('camGameOff' ,'camGame', 1, 0.3, 'linear')
	end
	if curStep == 1032 then
		doTweenAlpha('camGameOff' ,'camGame', 0, 0.0001, 'linear')
		setProperty('gf.visible',false)
		doTweenAlpha('camHUDOff' ,'camHUD', 0, 1.2, 'linear')

		setProperty('Rain_BM.visible',false)
		--bg swap
		addLuaSprite('NightNotchSky', false);
		addLuaSprite('NightNotchTem', false);
		addLuaSprite('NightNotchGround', false);
		addLuaSprite('Effect', true);
		addLuaSprite('ColorEffectNotch', true);
	end
	if curStep == 1080 then
		setProperty('dad.color', getColorFromHex('9bdaf7'))
		setProperty('boyfriend.color', getColorFromHex('70b7d8'))
		setProperty('gf.color', getColorFromHex('f5fc97'))
		setProperty('boyfriend.y', getProperty('boyfriend.y') + 100)
		doTweenZoom('camera', 'camGame', tonumber(0.45), tonumber(18.8), 'linear');
        doTweenAlpha('camGameOff' ,'camGame', 1, 18, 'linear')
	end
	if curStep == 1312 then
        doTweenAlpha('camGameOff' ,'camHUD', 1, 1, 'linear')
	end
	if curStep == 1576 then
        doTweenAlpha('camGameOff' ,'camGame', 0, 0.3, 'linear')
		doTweenAlpha('camHUDOff' ,'camHUD', 0, 1.2, 'linear')
	end
	if curStep == 1592 then
		setProperty('Rain_BM.visible',true)
		setProperty('gf.visible',true)
		setProperty('boyfriend.y', 1000)
        doTweenAlpha('camHUDOff' ,'camHUD', 1, 0.0001, 'linear')
        doTweenAlpha('camGameOff' ,'camGame', 1, 0.0001, 'linear')
		setProperty('dad.color', getColorFromHex('a19f9f'))
		setProperty('boyfriend.color', getColorFromHex('8f8f8f'))
		setProperty('gf.color', getColorFromHex('8f8f8f'))
		--revert back to normal
 		removeLuaSprite('NightNotchSky', false);
		removeLuaSprite('NightNotchTem', false);
		removeLuaSprite('NightNotchGround', false);
		removeLuaSprite('Effect', true);
		removeLuaSprite('ColorEffectNotch', true);
	end
	if curStep == 1856 then
	--notch ghost appears!!! step is 1856
	notch = true
	addLuaSprite('blockGF', false)
	setProperty('gf.alpha', 0.5);
	setProperty('gf.x', getProperty('gf.x') + 800)
	setProperty('gf.y', getProperty('gf.y') + 100)
end
	if curStep == 2176 then
        doTweenAlpha('camGameOff' ,'camHUD', 0, 0.3, 'linear')
	end
end
function onUpdate()
	--ghost notch script
	if notch == true then 
		if not botPlay then
	setProperty('gf.specialAnim',true)
--good note hit
	if keyJustPressed('left') then
		playAnim('gf', 'singLEFT', true)
	end
	if keyJustPressed('right') then
		playAnim('gf', 'singRIGHT', true)
	end
	if keyJustPressed('up') then
		playAnim('gf', 'singUP', true)
	end
	if keyJustPressed('down') then
		playAnim('gf', 'singDOWN', true)
	end
--misses
	if getProperty('boyfriend.animation.curAnim.name') == 'singLEFTmiss' then
		playAnim('gf', 'singLEFTmiss', true)
	end
	if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHTmiss' then
		playAnim('gf', 'singRIGHTmiss', true)
	end
	if getProperty('boyfriend.animation.curAnim.name') == 'singUPmiss' then
		playAnim('gf', 'singUPmiss', true)
	end
	if getProperty('boyfriend.animation.curAnim.name') == 'singDOWNmiss' then
		playAnim('gf', 'singDOWNmiss', true)
	end
end
	--botplay
	if botPlay then
	if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
		playAnim('gf', 'singLEFTmiss', true)
	end
	if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
		playAnim('gf', 'singRIGHTmiss', true)
	end
	if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
		playAnim('gf', 'singUPmiss', true)
	end
	if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
		playAnim('gf', 'singDOWNmiss', true)
	end
end
end
end