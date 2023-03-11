function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an desviation note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Bell Note Sing' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'Bell Note'); --Change texture
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has no penalties
		end
	end
	--debugPrint('Script started!')
	function noteMiss(id, i, noteType, isSustainNote)
		if noteType == 'Bell Note Sing' then
			playSound('cancelMenu', 1)
			setProperty('health', getProperty('health')-0.4);
			characterPlayAnim('boyfriend', 'hurt', true);
	end
end
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'Bell Note Sing' then
		playSound('bell', 0.2)
	end
end