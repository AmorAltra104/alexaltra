function onCreatePost()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Web Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'Note Skins/web');
			setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '0.03'); 
			setPropertyFromGroup('unspawnNotes', i, 'missHealth', '0.5'); 
			setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', false)

			   if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
				      setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true);					  
end
end
end
end

function onCreate()
  if downscroll == false then
    makeLuaSprite('webScreen', 'webs', 0, 0)
	setObjectCamera('webScreen', 'other')
	setProperty('webScreen.alpha', 0)
    setObjectOrder('webScreen', 0)
	addLuaSprite('webScreen', true)
  elseif downscroll == true then
    makeLuaSprite('webScreen', 'webs', 0, 0)
	setObjectCamera('webScreen', 'other')
	setProperty('webScreen.alpha', 0)
	setProperty('webScreen.flipY', true)
    setObjectOrder('webScreen', 0)
	addLuaSprite('webScreen', true)
end
end
       
function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'Web Note' then
	       cameraFlash('other', 'FFFFFF', 0.5, true)
		   setProperty('webScreen.alpha', 1)
		   playSound('web', 1, 'webNote')
		   triggerEvent('Change Scroll Speed', '0.625', '0.01')
		   runTimer('webTimer', 5, 1)
end
end

function noteMiss(id, noteData, noteType, isSustainNote)
	if noteType == 'Instakill Note' then
end
end 

function onTimerCompleted(tag, loops, loopsLeft)
           if tag == ('webTimer') then
		         triggerEvent('Change Scroll Speed', '1', '2')
				 doTweenAlpha('webTweenAlpha', 'webScreen', 0, '2', 'linear')
end
end
		           