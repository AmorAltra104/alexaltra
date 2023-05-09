function onCreate()
    for i = 0, getProperty('unspawnNotes.length')-1 do
        if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'two' then
            if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
            end
        end
    end
end
function opponentNoteHit(id, direction, noteType, isSustainNote)
	if noteType == "two" then
			if direction==0 then
					triggerEvent('Play Animation', 'singLEFT', 'gf' );
			elseif direction==1 then
					triggerEvent('Play Animation', 'singDOWN', 'gf');
			elseif direction==2 then
					triggerEvent('Play Animation', 'singUP', 'gf');
			elseif direction==3 then
					triggerEvent('Play Animation', 'singRIGHT', 'gf');
			end
	end
end