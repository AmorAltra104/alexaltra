function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an desviation note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Sword Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'Sword Note'); --Change texture
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has no penalties
		end
	end
	--debugPrint('Script started!')
	function noteMiss(id, i, noteType, isSustainNote)
		if noteType == 'Sword Note' then
			setProperty('health', -255);
		characterPlayAnim('boyfriend', 'hurt', true);
	end
end
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'Sword' then
	end
end