function opponentNoteHit(index, nData, nType, sustain)
	if getPropertyFromClass('ClientPrefs', 'noteSplashes') and not sustain then
		runHaxeCode('game.spawnNoteSplash('..getPropertyFromGroup('strumLineNotes', nData, 'x')..', '..getPropertyFromGroup('strumLineNotes', nData, 'y')..', '..nData..');')
	end
end