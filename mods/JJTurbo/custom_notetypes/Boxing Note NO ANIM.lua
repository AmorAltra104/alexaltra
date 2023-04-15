function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an desviation note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Boxing Note NO ANIM' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'notes/BOXNOTE_assets'); --Change texture
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has no penalties
		end
	end
	--debugPrint('Script started!')
	function noteMiss(id, i, noteType, isSustainNote)
		if noteType == 'Boxing Note NO ANIM' then
			setProperty('health', getProperty('health')-0.4);
	end
end
end

function goodNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'Boxing Note NO ANIM' then
		setProperty('camGame.zoom', 1)
    end
end