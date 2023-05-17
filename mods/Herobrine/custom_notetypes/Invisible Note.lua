function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Invisible Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'invis_assets');
			setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '0');
			setPropertyFromGroup('unspawnNotes', i, 'missHealth','0');
			setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', true);
	
			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then 
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); 
			end
		end
	end
end

function noteMiss(id, noteData, noteType, isSustainNote)
	if noteType == 'Invisible Note' then
		doTweenAlpha('hud', 'camHUD', 0, 5.2, 'linear')

			runTimer('invisible time', 5);
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'invisible time' then
		doTweenAlpha('hud', 'camHUD', 1, 5, 'linear')
		end
	end