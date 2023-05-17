function onCreate()
makeLuaSprite('badapple', 'badapple', -1850, -1400);
makeGraphic('badapple',7500,5000,'ffffff')
setProperty('badapple.color', 0xFF000000)

makeLuaSprite('bars', 'cinamatic bars', -600, -360)
addLuaSprite('bars', true)
doTweenAlpha('barstween','bars',0, 0.1, linear)
setObjectCamera('bars', 'hud')
scaleObject('bars', 1.5, 0.3)
end
function onCreatePost()
	setObjectOrder('bars', 1)
	end
function onStepHit()
	if curStep == 256 then
		doTweenAlpha('camHUDOff' ,'camHUD', 0, 0.5, 'linear')
		setProperty('gf.visible',false)
		setProperty('boyfriend.visible',false)
		setProperty('dad.visible',false)
		setProperty('Rain_BM.visible',false)
	addLuaSprite('badapple', false);
	end
	if curStep == 280 then
		--imma be fr idk how colortransform works lololo
		setProperty('Rain_BM.colorTransform.redOffset', 255)
		setProperty('Rain_BM.colorTransform.greenOffset', 255)
		setProperty('Rain_BM.colorTransform.blueOffset', 255)
		setProperty('gf.colorTransform.redOffset', 255)
		setProperty('gf.colorTransform.greenOffset', 255)
		setProperty('gf.colorTransform.blueOffset', 255)
		setProperty('boyfriend.colorTransform.redOffset', 255)
		setProperty('boyfriend.colorTransform.greenOffset', 255)
		setProperty('boyfriend.colorTransform.blueOffset', 255)
		setProperty('dad.colorTransform.redOffset', 255)
		setProperty('dad.colorTransform.greenOffset', 255)
		setProperty('dad.colorTransform.blueOffset', 255)
		setProperty('iconP1.visible',false)
		setProperty('iconP2.visible',false)
		setProperty('healthBar.visible',false)
		setProperty('healthBarBG.visible',false)
	end
	if curStep == 288 then
		setProperty('gf.visible',true)
		setProperty('boyfriend.visible',true)
		setProperty('dad.visible',true)
		setProperty('Rain_BM.visible',true)
		doTweenAlpha('camHUDOff' ,'camHUD', 1, 0.3, 'linear')
	end
	if curStep == 544 then
		setProperty('iconP1.visible',true)
		setProperty('iconP2.visible',true)
		setProperty('healthBar.visible',true)
		setProperty('healthBarBG.visible',true)
		setProperty('Rain_BM.colorTransform.redOffset', idk)
		setProperty('Rain_BM.colorTransform.greenOffset', idk)
		setProperty('Rain_BM.colorTransform.blueOffset', idk)
		setProperty('gf.colorTransform.redOffset', idk)
		setProperty('gf.colorTransform.greenOffset', idk)
		setProperty('gf.colorTransform.blueOffset', idk)
		setProperty('boyfriend.colorTransform.redOffset', idk)
		setProperty('boyfriend.colorTransform.greenOffset', idk)
		setProperty('boyfriend.colorTransform.blueOffset', idk)
		setProperty('dad.colorTransform.redOffset', idk)
		setProperty('dad.colorTransform.greenOffset', idk)
		setProperty('dad.colorTransform.blueOffset', idk)
		removeLuaSprite('badapple', false);
	end
	if curStep == 1824 then
		doTweenZoom('camera', 'camGame', tonumber(0.8), tonumber(2.5), 'linear');
	end
	if curStep == 1856 then
		doTweenAlpha('barstween','bars',1, 0.3, linear)
	end
	if curStep == 2624 then
		doTweenAlpha('barstween','bars',0, 0.3, linear)
	end
end