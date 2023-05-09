function onCreatePost()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Blue Coloured Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'Note Skins/Blue');
			setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '0.03'); 
			setPropertyFromGroup('unspawnNotes', i, 'missHealth', '0.5'); 
			setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', false)

			   if getPropertyFromGroup('unspawnNotes', i, 'mustPress') and getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Blue Coloured Note' then
	                  setPropertyFromGroup('unspawnNotes', i, 'noteSplashTexture', 'Note Skins/blueSplash')
				      setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false);						  
end
end
end
end
		           