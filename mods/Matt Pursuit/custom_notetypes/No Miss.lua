function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an desviation note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'No Miss' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'hit'); --Change texture
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has no penalties
		end
	end
	--debugPrint('Script started!')
	function noteMiss(id, i, noteType, isSustainNote)
		if noteType == 'No Miss' then
			playSound('cancelMenu', 1)
			setProperty('health', getProperty('health')-150);
			characterPlayAnim('boyfriend', 'hurt', true);
	end
end


