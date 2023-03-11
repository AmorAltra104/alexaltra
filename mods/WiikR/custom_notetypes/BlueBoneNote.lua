function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Instakill Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'BlueBoneNote' then
		    if songName ~= 'Sansational' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'sans/BlueNote_assets');
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashTexture', 'sans/BlueNote_splashes'); --Change texture
			end

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has no penalties
			end
		end
	end

end


function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'BlueBoneNote' and songName ~= 'Sansational' and songName ~= 'Bad-Time' then
	 setProperty('health',getProperty('health') - 0.4)
	end
end




	

-- Function called when you hit a note (after note hit calculations)
-- id: The note member id, you can get whatever variable you want from this note, example: "getPropertyFromGroup('notes', id, 'strumTime')"
-- noteData: 0 = Left, 1 = Down, 2 = Up, 3 = Right
-- noteType: The note type string/tag
-- isSustainNote: If it's a hold note, can be either true or false


-- Called after the note miss calculations
-- Player missed a note by letting it go offscreen