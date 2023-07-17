function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'BLACK MATT' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'BLACKMATTNOTE_assets');
			setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '0.013');
			setPropertyFromGroup('unspawnNotes', i, 'missHealth', '1');
			setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', true);
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashDisabled', true);
			setPropertyFromGroup('unspawnNotes', i, 'colorSwap.saturation', 0);
			setPropertyFromGroup('unspawnNotes', i, 'noAnimation', false);

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true);
			end
		end
	end
end

function noteMiss(id, noteData, noteType, isSustainNote)
	if noteType == 'BLACK MATT' then
		playSound('Ugh', 0.5);
	end
end