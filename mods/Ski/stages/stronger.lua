local canCamera = true

function onCreate()	
	addCharacterToList('sans-orange', 'dad')

	makeLuaSprite('waterfall', 'Waterfall', 100, -100)
	scaleObject('waterfall', 1.5, 1.5)
	addLuaSprite('waterfall', false)
	
	makeLuaSprite('black', 'empty', 0, 0)
	setObjectCamera('black', 'hud')
	setProperty('black.alpha', 0) 
	addLuaSprite('black', true)
end

function onStepHit()
	if curStep == 47 then
		setProperty('black.alpha', 1)
		setProperty('defaultCamZoom', 2)
	elseif curStep == 49 then
		setProperty('black.alpha', 0)
	elseif curStep == 66 then
		setProperty('defaultCamZoom', 1)	
end
	if curStep == 113 then
		triggerEvent('Camera Follow Pos', '1000', '500')
		canCamera = false
	elseif curStep == 127 then
		canCamera = true
	elseif curStep == 238 then
		triggerEvent('Camera Follow Pos', '1000', '500')
		canCamera = false
	elseif curStep == 252 then
		canCamera = true
	elseif curStep == 298 then
		triggerEvent('Camera Follow Pos', '1000', '500')
		canCamera = false
	elseif curStep == 316 then
		canCamera = true
	elseif curStep == 388 then
		triggerEvent('Camera Follow Pos', '1000', '500')
		canCamera = false
	elseif curStep == 448 then
		canCamera = true
	elseif curStep == 683 then
		triggerEvent('Camera Follow Pos', '1000', '500')
		canCamera = false
	elseif curStep == 702 then
		canCamera = true
	elseif curStep == 750 then
		triggerEvent('Camera Follow Pos', '1000', '500')
		canCamera = false
	elseif curStep == 764 then
		canCamera = true
	elseif curStep == 812 then
		triggerEvent('Camera Follow Pos', '1000', '500')
		canCamera = false
	elseif curStep == 884 then
		canCamera = true
	elseif curStep == 900 then
		triggerEvent('Camera Follow Pos', '1000', '500')
		canCamera = false
	elseif curStep == 1028 then
		canCamera = true
end
	if curStep == 1070 then
		doTweenAlpha('blackSansTween', 'black', 1, 3, 'linear')
end
end
		
function goodNoteHit(id, noteData, noteType, isSustainNote)
	if canCamera == true then
			triggerEvent('Camera Follow Pos', '1300', '550')
end
end

function opponentNoteHit(id, noteData, noteType, isSustainNote)
	if canCamera == true then
			triggerEvent('Camera Follow Pos', '800', '500')
end	
end	
	         

		          