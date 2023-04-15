function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an desviation note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Boxing Note Hit 1.1' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'BOXNOTE_assets'); --Change texture
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has no penalties
		end
	end
	--debugPrint('Script started!')
	function noteMiss(id, i, noteType, isSustainNote)
		if noteType == 'Boxing Note Hit 1.1' then
			playSound('oof', 1)
			setProperty('health', getProperty('health')-0.4);
			characterPlayAnim('boyfriend', 'hurt', true);
	end
end
end

function goodNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'Boxing Note Hit 1.1' then
		characterPlayAnim('boyfriend', 'dodge', true);
		setProperty('boyfriend.specialAnim', true);
		setProperty('camGame.zoom', 1.1)
    end
end