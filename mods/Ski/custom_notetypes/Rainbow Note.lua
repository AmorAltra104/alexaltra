local colorArray = {'red', 'orange', 'yellow', 'green', 'blue', 'cyan', 'purple'}
local shockerColors = {'FF0000', 'FF6A00', 'FFFF00', '00FF00', '0000FF', 'FF00FF'}
local curColor1 = 1
local curColor2 = 1
local curColor3 = 1
local curColor4 = 1

function onCreatePost()
	if difficultyName == "Normal" then
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Rainbow Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'Note Skins/rainbow');
			setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '0.03'); 
			setPropertyFromGroup('unspawnNotes', i, 'missHealth', '0.5'); 
			setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', false)

			   if getPropertyFromGroup('unspawnNotes', i, 'mustPress') and getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Rainbow Note' then
	                  setPropertyFromGroup('unspawnNotes', i, 'noteSplashTexture', 'Note Skins/Rainbow Splashes/' .. colorArray[getRandomInt(1, 7)])
				      setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true);						  
end
end
end
		makeLuaSprite('shocker1', 'shocker', 750, 0)
		setProperty('shocker1.antialiasing', false)
		scaleObject('shocker1', 5, 5)
		setProperty('shocker1.alpha', 0)
		setObjectCamera('shocker1', 'hud')
		addLuaSprite('shocker1', true)
		
		makeLuaSprite('shockerBeam1', 'shockerBeam', 750, 0)
		setProperty('shockerBeam1.antialiasing', false)
		scaleObject('shockerBeam1', 5, 5)
		setProperty('shockerBeam1.alpha', 0)
		setObjectCamera('shockerBeam1', 'hud')
		addLuaSprite('shockerBeam1', true)
		
		makeLuaSprite('shocker2', 'shocker', 860, 0)
		setProperty('shocker2.antialiasing', false)
		scaleObject('shocker2', 5, 5)
		setProperty('shocker2.alpha', 0)
		setObjectCamera('shocker2', 'hud')
		addLuaSprite('shocker2', true)
		
		makeLuaSprite('shockerBeam2', 'shockerBeam', 860, 0)
		setProperty('shockerBeam2.antialiasing', false)
		scaleObject('shockerBeam2', 5, 5)
		setProperty('shockerBeam2.alpha', 0)
		setObjectCamera('shockerBeam2', 'hud')
		addLuaSprite('shockerBeam2', true)
		
		makeLuaSprite('shocker3', 'shocker', 970, 0)
		setProperty('shocker3.antialiasing', false)
		scaleObject('shocker3', 5, 5)
		setProperty('shocker3.alpha', 0)
		setObjectCamera('shocker3', 'hud')
		addLuaSprite('shocker3', true)
		
		makeLuaSprite('shockerBeam3', 'shockerBeam', 970, 0)
		setProperty('shockerBeam3.antialiasing', false)
		scaleObject('shockerBeam3', 5, 5)
		setProperty('shockerBeam3.alpha', 0)
		setObjectCamera('shockerBeam3', 'hud')
		addLuaSprite('shockerBeam3', true)
		
		makeLuaSprite('shocker4', 'shocker', 1080, 0)
		setProperty('shocker4.antialiasing', false)
		scaleObject('shocker4', 5, 5)
		setProperty('shocker4.alpha', 0)
		setObjectCamera('shocker4', 'hud')
		addLuaSprite('shocker4', true)
		
		makeLuaSprite('shockerBeam4', 'shockerBeam', 1080, 0)
		setProperty('shockerBeam4.antialiasing', false)
		scaleObject('shockerBeam4', 5, 5)
		setProperty('shockerBeam4.alpha', 0)
		setObjectCamera('shockerBeam4', 'hud')
		addLuaSprite('shockerBeam4', true)
end
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
	if difficultyName == "Normal" then
	if noteType == "Rainbow Note" then
		if noteData == 0 then
	        playSound('shocker', 0.3, 'rainbowHit1')
			setProperty('shocker1.alpha', 1)
			setProperty('shockerBeam1.alpha', 1)
			doTweenColor('shocker1TweenColor', 'shocker1', shockerColors[curColor1], 0.25, 'linear')
			runTimer('shockerTimer1', 0.5, 1)
		elseif noteData == 1 then
	        playSound('shocker', 0.3, 'rainbowHit2')
			setProperty('shocker2.alpha', 1)
			setProperty('shockerBeam2.alpha', 1)
			doTweenColor('shocker2TweenColor', 'shocker2', shockerColors[curColor2], 0.25, 'linear')
			runTimer('shockerTimer2', 0.5, 1)
		elseif noteData == 2 then
	        playSound('shocker', 0.3, 'rainbowHit3')
			setProperty('shocker3.alpha', 1)
			setProperty('shockerBeam3.alpha', 1)
			doTweenColor('shocker3TweenColor', 'shocker3', shockerColors[curColor3], 0.25, 'linear')
			runTimer('shockerTimer3', 0.5, 1)
		elseif noteData == 3 then
	        playSound('shocker', 0.3, 'rainbowHit4')
			setProperty('shocker4.alpha', 1)
			setProperty('shockerBeam4.alpha', 1)
			doTweenColor('shocker4TweenColor', 'shocker4', shockerColors[curColor4], 0.25, 'linear')
			runTimer('shockerTimer4', 0.5, 1)
end
end
end
end

function onTweenCompleted(tag)
	if tag == 'shocker1TweenColor' then	
		curColor1 = curColor1 + 1
		doTweenColor('shocker1TweenColor', 'shocker1', shockerColors[curColor1], 0.25, 'linear')
	elseif tag == 'shocker2TweenColor' then	
		curColor2 = curColor2 + 1
		doTweenColor('shocker2TweenColor', 'shocker2', shockerColors[curColor2], 0.25, 'linear')
	elseif tag == 'shocker3TweenColor' then	
		curColor3 = curColor3 + 1
		doTweenColor('shocker3TweenColor', 'shocker3', shockerColors[curColor3], 0.25, 'linear')
	elseif tag == 'shocker4TweenColor' then	
		curColor4 = curColor4 + 1
		doTweenColor('shocker4TweenColor', 'shocker4', shockerColors[curColor4], 0.25, 'linear')
end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'shockerTimer1' then
		cancelTween('shocker1TweenColor')
		doTweenAlpha('shockerBeam1TweenAlpha', 'shockerBeam1', 0, 0.15, 'linear')
		doTweenAlpha('shocker1TweenAlpha', 'shocker1', 0, 0.15, 'linear')
	elseif tag == 'shockerTimer2' then
		cancelTween('shocker2TweenColor')
		doTweenAlpha('shockerBeam2TweenAlpha', 'shockerBeam2', 0, 0.15, 'linear')
		doTweenAlpha('shocker2TweenAlpha', 'shocker2', 0, 0.15, 'linear')
		doTweenAlpha('shocker1TweenAlpha', 'shocker1', 0, 0.15, 'linear')
	elseif tag == 'shockerTimer3' then
		cancelTween('shocker3TweenColor')
		doTweenAlpha('shockerBeam3TweenAlpha', 'shockerBeam3', 0, 0.15, 'linear')
		doTweenAlpha('shocker3TweenAlpha', 'shocker3', 0, 0.15, 'linear')
	elseif tag == 'shockerTimer4' then
		cancelTween('shocker4TweenColor')
		doTweenAlpha('shockerBeam4TweenAlpha', 'shockerBeam4', 0, 0.15, 'linear')
		doTweenAlpha('shocker4TweenAlpha', 'shocker4', 0, 0.15, 'linear')
end
end

function onUpdate()
	if curColor1 >= 6 then
		curColor1 = 1
	elseif curColor2 >= 6 then
		curColor2 = 1
	elseif curColor3 >= 6 then
		curColor3 = 1
	elseif curColor4 >= 6 then
		curColor4 = 1
end
end

function onUpdatePost()
	if difficultyName ~= "Normal" then
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Rainbow Note' then
			removeFromGroup('unspawnNotes', i, true);
end
end
end
end

		           