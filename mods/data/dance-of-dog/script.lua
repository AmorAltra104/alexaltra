function noteMiss(id, direction, noteType, isSustainNote)
	if getDataFromSave('hasBeaten', songName) ~= true then  
		os.exit()
end
end

function onStepHit()
	if curStep == 11773 then
		 setDataFromSave('hasBeaten', songName, true)   
         flushSaveData('hasBeaten')
		os.exit()
end
end