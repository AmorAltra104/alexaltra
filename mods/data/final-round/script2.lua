local keepScroll = false

function onCreate()
	if getPropertyFromClass('ClientPrefs', 'downScroll') == true then
		keepScroll = true;
	elseif getPropertyFromClass('ClientPrefs', 'upScroll') == false then
		setPropertyFromClass('ClientPrefs', 'downScroll', true);
	end
end

function onDestroy()
	if keepScroll == false then
		setPropertyFromClass('ClientPrefs', 'downScroll', false);
	elseif keepScroll == true then
		keepScroll = false;
	end
end

function opponentNoteHit()
       health = getProperty('health')
    if getProperty('health') > 0.5 then
       setProperty('health', health- 0.0095);
	end
end


function opponentNoteHit(id, noteData, noteType, isSustainNote)
    characterPlayAnim('gf', 'scared', false);
    triggerEvent('Screen Shake', '0.05, 0.01', '0, 0');
end