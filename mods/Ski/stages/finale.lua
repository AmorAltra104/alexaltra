local colorInt = 0
local arrowNum = 1

local arrowColors = {
'red',
'orange',
'yellow', 
'green',
'cyan',
'blue',
'purple',
}

function goodNoteHit(id, noteData, noteType, isSustainNote)
			setPropertyFromGroup('playerStrums', noteData, 'texture', getPropertyFromGroup('notes', id, 'texture'))
end

function onCreate()
	makeLuaSprite('whiteFade', 'whiteFade', -1000, -500)
	setProperty('whiteFade.alpha', 0)
	addLuaSprite('whiteFade', false)
	
	makeLuaSprite('tv', 'OMEGA/tv', 100, 200)
	setProperty('tv.antialiasing', false)
	scaleObject('tv', 7, 7)
	addLuaSprite('tv', false)
	
	makeLuaSprite('blueSoul', 'FINALE/blue', -50, 200)
	setProperty('blueSoul.antialiasing', false)
	scaleObject('blueSoul', 7, 7)
	addLuaSprite('blueSoul', true)
	setProperty('blueSoul.angle', 0)
	setProperty('blueSoul.alpha', 0)
	doTweenAngle('blueSoulTweenAngle', 'blueSoul', 360, 5, 'linear')
	
	makeLuaSprite('greenSoul', 'FINALE/green', -50, 200)
	setProperty('greenSoul.antialiasing', false)
	scaleObject('greenSoul', 7, 7)
	addLuaSprite('greenSoul', true)
	setProperty('greenSoul.angle', -60)
	setProperty('greenSoul.alpha', 0)
	doTweenAngle('greenSoulTweenAngle', 'greenSoul', 300, 5, 'linear')
	
	makeLuaSprite('yellowSoul', 'FINALE/yellow', -50, 200)
	setProperty('yellowSoul.antialiasing', false)
	scaleObject('yellowSoul', 7, 7)
	addLuaSprite('yellowSoul', true)
	setProperty('yellowSoul.angle', -120)
	setProperty('yellowSoul.alpha', 0)
	doTweenAngle('yellowSoulTweenAngle', 'yellowSoul', 240, 5, 'linear')
	
	makeLuaSprite('cyanSoul', 'FINALE/cyan', -50, 200)
	setProperty('cyanSoul.antialiasing', false)
	scaleObject('cyanSoul', 7, 7)
	addLuaSprite('cyanSoul', true)
	setProperty('cyanSoul.angle', -180)
	setProperty('cyanSoul.alpha', 0)
	doTweenAngle('cyanSoulTweenAngle', 'cyanSoul', 180, 5, 'linear')
	
	makeLuaSprite('purpleSoul', 'FINALE/purple', -50, 200)
	setProperty('purpleSoul.antialiasing', false)
	scaleObject('purpleSoul', 7, 7)
	addLuaSprite('purpleSoul', true)
	setProperty('purpleSoul.angle', -240)
	setProperty('purpleSoul.alpha', 0)
	doTweenAngle('purpleSoulTweenAngle', 'purpleSoul', 120, 5, 'linear')
	
	makeLuaSprite('orangeSoul', 'FINALE/orange', -50, 200)
	setProperty('orangeSoul.antialiasing', false)
	scaleObject('orangeSoul', 7, 7)
	addLuaSprite('orangeSoul', true)
	setProperty('orangeSoul.angle', -300)
	setProperty('orangeSoul.alpha', 0)
	doTweenAngle('orangeSoulTweenAngle', 'orangeSoul', 60, 5, 'linear')
end

function onTweenCompleted(tag)
	if tag == 'blueSoulTweenAngle' then
		setProperty('blueSoul.angle', 0)
		doTweenAngle('blueSoulTweenAngle', 'blueSoul', 360, 5, 'linear')
end
	if tag == 'greenSoulTweenAngle' then
		setProperty('greenSoul.angle', -60)
		doTweenAngle('greenSoulTweenAngle', 'greenSoul', 300, 5, 'linear')
end
	if tag == 'yellowSoulTweenAngle' then
		setProperty('yellowSoul.angle', -120)
		doTweenAngle('yellowSoulTweenAngle', 'yellowSoul', 240, 5, 'linear')
end
	if tag == 'cyanSoulTweenAngle' then
		setProperty('cyanSoul.angle', -180)
		doTweenAngle('cyanSoulTweenAngle', 'cyanSoul', 180, 5, 'linear')
end
	if tag == 'orangeSoulTweenAngle' then
		setProperty('orangeSoul.angle', -240)
		doTweenAngle('orangeSoulTweenAngle', 'orangeSoul', 120, 5, 'linear')
end
	if tag == 'purpleSoulTweenAngle' then
		setProperty('purpleSoul.angle', -300)
		doTweenAngle('purpleSoulTweenAngle', 'purpleSoul', 60, 5, 'linear')
end	
	if tag == 'whiteFadeOrange' then
			doTweenColor('whiteFadeYellow', 'whiteFade', 'FFFF00', 1, 'linear')
			doTweenColor('timeBarBGTweenColor', 'timeBar', 'FFFF00', 1, 'linear')
	elseif tag == 'whiteFadeYellow' then
			doTweenColor('whiteFadeGreen', 'whiteFade', '00C000', 1, 'linear')
			doTweenColor('timeBarBGTweenColor', 'timeBar', '00C000', 1, 'linear')
	elseif tag == 'whiteFadeGreen' then
			doTweenColor('whiteFadeCyan', 'whiteFade', '42FCFF', 1, 'linear')
			doTweenColor('timeBarBGTweenColor', 'timeBar', '42FCFF', 1, 'linear')
	elseif tag == 'whiteFadeCyan' then
			doTweenColor('whiteFadeBlue', 'whiteFade', '003CFF', 1, 'linear')
			doTweenColor('timeBarBGTweenColor', 'timeBar', '003CFF', 1, 'linear')
	elseif tag == 'whiteFadeBlue' then
			doTweenColor('whiteFadePurple', 'whiteFade', 'B200FF', 1, 'linear')
			doTweenColor('timeBarBGTweenColor', 'timeBar', 'B200FF', 1, 'linear')
	elseif tag == 'whiteFadePurple' then
			doTweenColor('whiteFadeOrange', 'whiteFade', 'FF6A00', 1, 'linear')
			doTweenColor('timeBarBGTweenColor', 'timeBar', 'FF6A00', 1, 'linear')
end
end

function onStepHit()
		if curStep == 127 then
				doTweenAlpha('blueTweenAlpha', 'blueSoul', 1, 1, 'linear')
		elseif curStep == 143 then
				doTweenAlpha('greenTweenAlpha', 'greenSoul', 1, 1, 'linear')
		elseif curStep == 159 then
				doTweenAlpha('yellowTweenAlpha', 'yellowSoul', 1, 1, 'linear')
		elseif curStep == 175 then
				doTweenAlpha('cyanTweenAlpha', 'cyanSoul', 1, 1, 'linear')
		elseif curStep == 191 then
				doTweenAlpha('purpleTweenAlpha', 'purpleSoul', 1, 1, 'linear')
		elseif curStep == 207 then
				doTweenAlpha('orangeTweenAlpha', 'orangeSoul', 1, 1, 'linear')
		elseif curStep == 256 then
				cameraFlash('hud', 'FFFFFF', 1, true)
				setProperty('whiteFade.alpha', 1)
				doTweenColor('whiteFadeOrange', 'whiteFade', 'FF6A00', 1, 'linear')
				doTweenColor('timeBarBGTweenColor', 'timeBar', 'FF6A00', 1, 'linear')
				setTimeBarColors('FFFFFF', '000000')
end
end
						  
function onCreatePost()
	for i= 0, getProperty('unspawnNotes.length')-1 do
            if getPropertyFromGroup('unspawnNotes', i, 'mustPress') and getPropertyFromGroup('unspawnNotes', i, 'isSustainNote') == false then
					  arrowNum = arrowNum + 1
				if arrowNum > 7 then
					  arrowNum = 1
end
end
				if getPropertyFromGroup('unspawnNotes', i, 'noteType') ~= 'Normal Note' then 
				      setPropertyFromGroup('unspawnNotes', i, 'texture', 'Note Skins/' .. arrowColors[arrowNum])
				      setPropertyFromGroup('unspawnNotes', i, 'noteSplashTexture', 'Note Skins/' .. arrowColors[arrowNum] .. 'Splash')
end
end
end
		

			
			
			  
	         

		          