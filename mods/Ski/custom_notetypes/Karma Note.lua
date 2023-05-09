function onCreatePost()
if difficultyName == "Normal" then
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Karma Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'Note Skins/karma');
			setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '0'); 
			setPropertyFromGroup('unspawnNotes', i, 'missHealth', '0'); 
			setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', false)

			   if getPropertyFromGroup('unspawnNotes', i, 'mustPress') and getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Karma Note' then
	                  setPropertyFromGroup('unspawnNotes', i, 'noteSplashTexture', 'Note Skins/karmaBadSplash')
				      setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true);						  
end
end
end
end
end

function onUpdatePost()
	if difficultyName ~= "Normal" then
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Karma Note' then
			removeFromGroup('unspawnNotes', i, true);
end
end
end
end