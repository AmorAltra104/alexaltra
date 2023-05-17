local Slowdown = 0;
function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Speed Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'Speed_assets');
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
	if noteType == 'Speed Note' then
	setProperty('songSpeed', getProperty('songSpeed') + 0.2)
	Slowdown = Slowdown + 0.2;
	runTimer('speed time', 5);
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'speed time' then
		setProperty('songSpeed', getProperty('songSpeed') - Slowdown)
		Slowdown = 0;
		end
	end