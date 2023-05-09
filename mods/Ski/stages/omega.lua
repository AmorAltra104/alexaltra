function onCreate()	
	makeLuaSprite('redFade', 'OMEGA/redFade', -1000, 400)
	setProperty('redFade.alpha', 0)
	addLuaSprite('redFade', false)
	
	doTweenY('redFadeTweenY1', 'redFade', 1100, 1.26, 'circInOut')
	
	makeLuaSprite('red', 'OMEGA/red', -1000, -100)
	scaleObject('red', 4, 4)
	addLuaSprite('red', false)
	
	makeLuaSprite('tv', 'OMEGA/tv', 100, 200)
	setProperty('tv.antialiasing', false)
	scaleObject('tv', 7, 7)
	addLuaSprite('tv', false)
	
	makeLuaSprite('whiteTV', 'OMEGA/tvWhite', 100, 200)
	setProperty('whiteTV.antialiasing', false)
	scaleObject('whiteTV', 7, 7)
	setProperty('whiteTV.alpha', 0)
	addLuaSprite('whiteTV', true)
	
	makeLuaSprite('black', 'empty', 0, 0)
	scaleObject('black', 0.8, 0.8)
	setObjectCamera('black', 'hud')
	addLuaSprite('black', true)
	
	makeLuaSprite('tvWarning', 'OMEGA/cyanSoul', 100, 200)
	setProperty('tvWarning.antialiasing', false)
	scaleObject('tvWarning', 7, 7)
	setProperty('tvWarning.alpha', 0)
	addLuaSprite('tvWarning', true)
	
	makeLuaSprite('blankTV', 'OMEGA/blankTV', 100, 200)
	setProperty('blankTV.antialiasing', false)
	scaleObject('blankTV', 7, 7)
	addLuaSprite('blankTV', true)
	
	makeAnimatedLuaSprite('floweyLaugh', 'OMEGA/floweyLaugh', 335, 640)
	addAnimationByPrefix('floweyLaugh', 'laugh', 'laugh', 6, true)
	setProperty('floweyLaugh.antialiasing', false)
	scaleObject('floweyLaugh', 8, 7)
	setProperty('floweyLaugh.alpha', 0)
	addLuaSprite('floweyLaugh', true)
	
	makeAnimatedLuaSprite('floweyFaceOpen', 'OMEGA/faceOpen', 335, 640)
	addAnimationByPrefix('floweyFaceOpen', 'open', 'open', 12, false)
	setProperty('floweyFaceOpen.antialiasing', false)
	scaleObject('floweyFaceOpen', 8, 7)
	setProperty('floweyFaceOpen.alpha', 0)
	addLuaSprite('floweyFaceOpen', true)
	
	makeLuaSprite('floweySmile', 'OMEGA/floweySmile', 335, 640)
	setProperty('floweySmile.antialiasing', false)
	scaleObject('floweySmile', 8, 7)
	setProperty('floweySmile.alpha', 0)
	addLuaSprite('floweySmile', true)
	
	makeAnimatedLuaSprite('static', 'OMEGA/static', 0, 0)
	addAnimationByPrefix('static', 'static', 'static', 24, true)
	objectPlayAnimation('static', 'static', true)
	setProperty('static.antialiasing', false)
	scaleObject('static', 15, 15)
	setObjectCamera('static', 'hud')
	setProperty('static.alpha', 0)
	addLuaSprite('static', true)
end

function onSongStart()
	doTweenZoom('camGameTweenZoom', 'camGame', 0.7, 16, 'linear')
	doTweenAlpha('blackTweenAlpha', 'black', 0, 0.3, 'linear')
	doTweenAlpha('redTweenAlpha', 'red', 0, 0.5, 'circIn')
end

function onTweenCompleted(tag)
		if tag == 'redTweenAlpha' then
			doTweenAlpha('redTweenAlpha1', 'red', 1, 0.5, 'circIn')
		elseif tag == 'redTweenAlpha1' then
			doTweenAlpha('redTweenAlpha', 'red', 0, 0.5, 'circIn')
end
		if tag == 'warningTweenAlpha' then
			doTweenAlpha('warningTweenAlpha1', 'tvWarning', 0, 0.63, 'circInOut')
		elseif tag == 'warningTweenAlpha1' then
			doTweenAlpha('warningTweenAlpha', 'tvWarning', 1, 0.63, 'circInOut')
end
		if tag == 'redFadeTweenY' then
			doTweenY('redFadeTweenY1', 'redFade', 1100, 1.26, 'circInOut')
		elseif tag == 'redFadeTweenY1' then
			doTweenY('redFadeTweenY', 'redFade', -500, 1.26, 'circInOut')
end
end

function onStepHit()
		if curStep == 175 then
			doTweenAlpha('floweySmileTweenAlpha', 'floweySmile', 1, 0.5, 'linear')
			doTweenAlpha('whiteTVTweenAlpha', 'whiteTV', 1, 0.5, 'linear')
end
		if curStep == 191 then
			objectPlayAnimation('floweyFaceOpen', 'open', true)
			setProperty('floweyFaceOpen.alpha', 1)			
			setProperty('floweySmile.alpha', 0)					
end
		if curStep == 206 then
			removeLuaSprite('floweyFaceOpen', true)
			objectPlayAnimation('floweyLaugh', 'laugh', true)
			removeLuaSprite('floweySmile', true)			
			setProperty('floweyLaugh.alpha', 1)					
end
		if curStep == 288 then
			setProperty('floweyLaugh.alpha', 0)					
			setProperty('whiteTV.alpha', 0)
			cancelTween('redTweenAlpha')
			cancelTween('redTweenAlpha1')
			doTweenAlpha('redTweenAlpha2', 'red', 0, 1, 'circIn')
			doTweenAlpha('redFadeTweenAlpha', 'redFade', 1, 0.2, 'linear')
end
		if curStep == 607 then
			doTweenAlpha('warningTweenAlpha', 'tvWarning', 1, 0.63, 'circInOut')
			runTimer('staticTimer', 5.05, 1)
end
		if curStep == 686 then
				doTweenColor('skiColorTween', 'boyfriend', '42FCFF', 0.01, 'linear')
				setTimeBarColors('42FCFF', '000000')
			for a= 0,3,1 do
				setPropertyFromGroup('playerStrums', a, 'texture', 'Note Skins/cyan')
end
end
		if curStep == 879 then
				runTimer('staticTimer', 0.001, 1)
				doTweenColor('skiColorTween', 'boyfriend', 'FCA600', 0.01, 'linear')
				setTimeBarColors('FCA600', '000000')
			for a= 0,3,1 do
				setPropertyFromGroup('playerStrums', a, 'texture', 'Note Skins/orange')
end
end
		if curStep == 1087 then
				runTimer('staticTimer', 0.001, 1)
				cancelTween('skiColorTween')
				setTimeBarColors('7F0000', '000000')
			for a= 0,3,1 do
				setPropertyFromGroup('playerStrums', a, 'texture', 'NOTE_assets')
end
end
		if curStep == 1391 then
			makeLuaSprite('tvWarning', 'OMEGA/blueSoul', 100, 200)
			setProperty('tvWarning.antialiasing', false)
			scaleObject('tvWarning', 7, 7)
			setProperty('tvWarning.alpha', 0)
			addLuaSprite('tvWarning', true)
			
			makeLuaSprite('blankTV', 'OMEGA/blankTV', 100, 200)
			setProperty('blankTV.antialiasing', false)
			scaleObject('blankTV', 7, 7)
			addLuaSprite('blankTV', true)
		
			doTweenAlpha('warningTweenAlpha', 'tvWarning', 1, 0.63, 'circInOut')
			runTimer('staticTimer', 5.05, 1)
end
		if curStep == 1470 then
				doTweenColor('skiColorTween', 'boyfriend', '003BFF', 0.01, 'linear')
				setTimeBarColors('003BFF', '000000')
			for a= 0,3,1 do
				setPropertyFromGroup('playerStrums', a, 'texture', 'Note Skins/blue')
end
end
		if curStep == 1663 then
				runTimer('staticTimer', 0.001, 1)
				doTweenColor('skiColorTween', 'boyfriend', 'D535D9', 0.01, 'linear')
				setTimeBarColors('D535D9', '000000')
			for a= 0,3,1 do
				setPropertyFromGroup('playerStrums', a, 'texture', 'Note Skins/purple')
end
end
		if curStep == 1872 then
				runTimer('staticTimer', 0.001, 1)
				cancelTween('skiColorTween')
				setTimeBarColors('7F0000', '000000')
			for a= 0,3,1 do
				setPropertyFromGroup('playerStrums', a, 'texture', 'NOTE_assets')
end
end
		if curStep == 2144 then
			makeLuaSprite('tvWarning', 'OMEGA/greenSoul', 100, 200)
			setProperty('tvWarning.antialiasing', false)
			scaleObject('tvWarning', 7, 7)
			setProperty('tvWarning.alpha', 0)
			addLuaSprite('tvWarning', true)
			
			makeLuaSprite('blankTV', 'OMEGA/blankTV', 100, 200)
			setProperty('blankTV.antialiasing', false)
			scaleObject('blankTV', 7, 7)
			addLuaSprite('blankTV', true)
		
			doTweenAlpha('warningTweenAlpha', 'tvWarning', 1, 0.63, 'circInOut')
			runTimer('staticTimer', 5.05, 1)
end
		if curStep == 2222 then
				runTimer('staticTimer', 0.001, 1)
				doTweenColor('skiColorTween', 'boyfriend', '00C000', 0.01, 'linear')
				setTimeBarColors('00C000', '000000')
			for a= 0,3,1 do
				setPropertyFromGroup('playerStrums', a, 'texture', 'Note Skins/green')
end
end
		if curStep == 2416 then
				runTimer('staticTimer', 0.001, 1)
				doTweenColor('skiColorTween', 'boyfriend', 'FFFF00', 0.01, 'linear')
				setTimeBarColors('FFFF00', '000000')
			for a= 0,3,1 do
				setPropertyFromGroup('playerStrums', a, 'texture', 'Note Skins/yellow')
end
end
		if curStep == 2624 then
				runTimer('staticTimer', 0.001, 1)
				cancelTween('skiColorTween')
				setTimeBarColors('7F0000', '000000')
			for a= 0,3,1 do
				setPropertyFromGroup('playerStrums', a, 'texture', 'NOTE_assets')
end
end
		if curStep == 3024 then
				runTimer('staticTimer', 0.001, 1)
end
end

function onTimerCompleted(tag, loops, loopsLeft)
		if tag == 'staticTimer' then
				setProperty('static.alpha', 1)
				runTimer('staticTimer1', 1.25, 1)
		elseif tag == 'staticTimer1' then
				cancelTween('warningTweenAlpha')
				cancelTween('warningTweenAlpha1')
				setProperty('tvWarning.alpha', 0)
				setProperty('static.alpha', 0)
end
end
			
			
			
			  
	         

		          