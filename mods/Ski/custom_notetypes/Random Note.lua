function onCreatePost()
	for i = 0, getProperty('unspawnNotes.length')-1 do
			randomNotePlace = getRandomInt(1, 4)
	if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Random Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'Note Skins/white');
			setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '0.03'); 
			setPropertyFromGroup('unspawnNotes', i, 'missHealth', '0.5'); 
			setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', false)

			   if getPropertyFromGroup('unspawnNotes', i, 'mustPress') and getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Random Note' then
	                  setPropertyFromGroup('unspawnNotes', i, 'noteSplashTexture', 'Note Skins/whiteSplash')
				      setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false);
				if randomNotePlace == 1 then 
						setPropertyFromGroup('unspawnNotes', i, 'noteData', 0);
						setPropertyFromGroup('unspawnNotes', i, 'offsetAngle', 180);
				elseif randomNotePlace == 2 then 
						setPropertyFromGroup('unspawnNotes', i, 'noteData', 1);
						setPropertyFromGroup('unspawnNotes', i, 'offsetAngle', 90);
				elseif randomNotePlace == 3 then 
						setPropertyFromGroup('unspawnNotes', i, 'noteData', 2);
						setPropertyFromGroup('unspawnNotes', i, 'offsetAngle', 270);
				elseif randomNotePlace == 4 then 
						setPropertyFromGroup('unspawnNotes', i, 'noteData', 3);			
end
end
end
end
		for a= 0,3,1 do
					  setPropertyFromGroup('playerStrums', a, 'texture', 'Note Skins/white')
end
end
		           