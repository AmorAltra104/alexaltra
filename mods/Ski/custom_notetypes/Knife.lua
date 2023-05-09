function onCreatePost()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Knife' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'Note Skins/knife');
			setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '0.03'); 
			setPropertyFromGroup('unspawnNotes', i, 'missHealth', '0.5'); 
			setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', false)

			   if getPropertyFromGroup('unspawnNotes', i, 'mustPress') and getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Knife' then
				      setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true);						  
end
end
end
end
       
function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'Blue Note' then
end
end

function noteMiss(id, noteData, noteType, isSustainNote)
	if noteType == 'Instakill Note' then
end
end 
		           