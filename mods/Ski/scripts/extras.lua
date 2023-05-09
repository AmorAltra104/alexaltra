local rainbowColors = {'red', 'orange', 'yellow', 'green', 'blue', 'cyan', 'purple'}

local badSongs = {
	'Bonetrousle',
	'Spear Of Justice',
	'Spider Dance',
	'Death By Glamour',
	'Finale',
	'Hopes And Dreams',
	'Save The World',
	'Battle Against A True Hero',
	'Megalovania',
	'Backbone',
}

local noSkins = false

function onCreate()
			initSaveData('skinData', 'SkiUNDERTALE')
	   if getDataFromSave('skinData', 'skin1') == 'skin1' then
			setDataFromSave('skinData', 'skin1', 'NOTE_assets')
			setDataFromSave('skinData', 'skin2', 'NOTE_assets')
			setDataFromSave('skinData', 'skin3', 'NOTE_assets')
			setDataFromSave('skinData', 'skin4', 'NOTE_assets')
			setDataFromSave('skinData', 'skin1Int', 1)
			setDataFromSave('skinData', 'skin2Int', 1)
			setDataFromSave('skinData', 'skin3Int', 1)
			setDataFromSave('skinData', 'skin4Int', 1)
			setDataFromSave('skinData', 'unlockedSkin1', true)
			flushSaveData('skinData')
end
			skinName1 = getDataFromSave('skinData', 'skin1')
			skinName2 = getDataFromSave('skinData', 'skin2')
			skinName3 = getDataFromSave('skinData', 'skin3')
			skinName4 = getDataFromSave('skinData', 'skin4')
			
		for q = 1, 10, 1 do
			if badSongs[q] == songName then
				noSkins = true
end
end
end

function onCreatePost()
	if noSkins == false then
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == '' or getPropertyFromGroup('unspawnNotes', i, 'noteType') == "Hey!" or getPropertyFromGroup('unspawnNotes', i, 'noteType') == "Normal Note" then
			if getPropertyFromGroup('unspawnNotes', i, 'noteData') == 0 then
				setPropertyFromGroup('unspawnNotes', i, 'texture', 'Note Skins/' .. skinName1);                                   
				setPropertyFromGroup('unspawnNotes', i, 'noteSplashTexture', 'Note Skins/' .. skinName1 .. "Splash")
			elseif getPropertyFromGroup('unspawnNotes', i, 'noteData') == 1 then
				setPropertyFromGroup('unspawnNotes', i, 'texture', 'Note Skins/' .. skinName2);                                   
				setPropertyFromGroup('unspawnNotes', i, 'noteSplashTexture', 'Note Skins/' .. skinName2 .. "Splash")	
			elseif getPropertyFromGroup('unspawnNotes', i, 'noteData') == 2 then
				setPropertyFromGroup('unspawnNotes', i, 'texture', 'Note Skins/' .. skinName3);                                   
				setPropertyFromGroup('unspawnNotes', i, 'noteSplashTexture', 'Note Skins/' .. skinName3 .. "Splash")	
			elseif getPropertyFromGroup('unspawnNotes', i, 'noteData') == 3 then
				setPropertyFromGroup('unspawnNotes', i, 'texture', 'Note Skins/' .. skinName4);                                   
				setPropertyFromGroup('unspawnNotes', i, 'noteSplashTexture', 'Note Skins/' .. skinName4 .. "Splash")					
end
end
	if skinName1 == 'rainbow' and getPropertyFromGroup('unspawnNotes', i, 'noteData') == 0 then
		setPropertyFromGroup('unspawnNotes', i, 'noteSplashTexture', 'Note Skins/' .. rainbowColors[getRandomInt(1, 7)] .. 'Splash')
end
	if skinName2 == 'rainbow' and getPropertyFromGroup('unspawnNotes', i, 'noteData') == 1 then
		setPropertyFromGroup('unspawnNotes', i, 'noteSplashTexture', 'Note Skins/' .. rainbowColors[getRandomInt(1, 7)] .. 'Splash')
end
	if skinName3 == 'rainbow' and getPropertyFromGroup('unspawnNotes', i, 'noteData') == 2 then
		setPropertyFromGroup('unspawnNotes', i, 'noteSplashTexture', 'Note Skins/' .. rainbowColors[getRandomInt(1, 7)] .. 'Splash')
end
	if skinName4 == 'rainbow' and getPropertyFromGroup('unspawnNotes', i, 'noteData') == 3 then
		setPropertyFromGroup('unspawnNotes', i, 'noteSplashTexture', 'Note Skins/' .. rainbowColors[getRandomInt(1, 7)] .. 'Splash')
end
end
			setPropertyFromGroup('playerStrums', 0, 'texture', 'Note Skins/' .. skinName1);	
			setPropertyFromGroup('playerStrums', 1, 'texture', 'Note Skins/' .. skinName2);	
			setPropertyFromGroup('playerStrums', 2, 'texture', 'Note Skins/' .. skinName3);	
			setPropertyFromGroup('playerStrums', 3, 'texture', 'Note Skins/' .. skinName4);
end
end

function onGhostTap(noteData)
	if noSkins == false then
	if skinName1 == 'rainbow' and noteData == 0 then
		setPropertyFromGroup('playerStrums', 0, 'texture', 'Note Skins/' .. rainbowColors[getRandomInt(1, 7)])
end
	if skinName2 == 'rainbow' and noteData == 1 then
		setPropertyFromGroup('playerStrums', 1, 'texture', 'Note Skins/' .. rainbowColors[getRandomInt(1, 7)])
end
	if skinName3 == 'rainbow' and noteData == 2 then
		setPropertyFromGroup('playerStrums', 2, 'texture', 'Note Skins/' .. rainbowColors[getRandomInt(1, 7)])
end
	if skinName4 == 'rainbow' and noteData == 3 then
		setPropertyFromGroup('playerStrums', 3, 'texture', 'Note Skins/' .. rainbowColors[getRandomInt(1, 7)])
end
end
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noSkins == false then
	if skinName1 == 'rainbow' and noteData == 0 then
		setPropertyFromGroup('playerStrums', 0, 'texture', 'Note Skins/' .. rainbowColors[getRandomInt(1, 7)])
end
	if skinName2 == 'rainbow' and noteData == 1 then
		setPropertyFromGroup('playerStrums', 1, 'texture', 'Note Skins/' .. rainbowColors[getRandomInt(1, 7)])
end
	if skinName3 == 'rainbow' and noteData == 2 then
		setPropertyFromGroup('playerStrums', 2, 'texture', 'Note Skins/' .. rainbowColors[getRandomInt(1, 7)])
end
	if skinName4 == 'rainbow' and noteData == 3 then
		setPropertyFromGroup('playerStrums', 3, 'texture', 'Note Skins/' .. rainbowColors[getRandomInt(1, 7)])
end
end
end
		