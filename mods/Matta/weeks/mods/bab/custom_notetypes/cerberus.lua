function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an desviation note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'cerberus' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'bob-ex/bluskys/hell/jghost'); --Change texture
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has no penalties
		end
	end
	--debugPrint('Script started!')
	function noteMiss(id, i, noteType, isSustainNote)
		if noteType == 'cerberus' then
			playSound('mami-kill', 3)
			setProperty('health', -0.0);
		characterPlayAnim('boyfriend', 'dodge', true);


	end
end
end
function opponentNoteHit(id, noteData, noteType, isSustainNote)

                if noteType == 'cerberus' then
		characterPlayAnim('boyfriend', 'singDOWNmiss', true);
                cameraShake('game', 0.03, 0.1)	
		setProperty('health', 1.0);


	end
end