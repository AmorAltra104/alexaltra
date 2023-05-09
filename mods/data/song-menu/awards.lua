local awardGiven = 0
local totalSongsBeaten = 0
local mainSongsBeaten = 0
local mainBeaten = false
local bonusSongsBeaten = 0
local bonusBeaten = false
local bonusMisses = 0
local mainMisses = 0
local totalAcc = 0

local songList = {
	"Once Upon A Time", "Start Menu", "Your Best Friend", "Fallen Down", "Ruins", "Uwa So Ski", "Unnecessary Tension",
	"Enemy Approaching", "Ghost Fight", "Determination", "Home", "Heartache", "Sans", "Snowy", "Dogbass", "Mysterious Place",
	"Dogsong", "Snowdin Town", "Shop", "Bonetrousle", "Dating Start", "Premonition", "Undyne", "Waterfall", "Run", "Quiet Water",
	"Memory", "Bird That Carries You Over A Disproportionately Small Gap", "Dummy", "Pathetic House", "Spooktunes",
	"Thundersnail", "Temmie Village", "Tem Shop", "Spear Of Justice", "Alphys", "Its Showtime", "Metal Crusher", "Another Medium",
	"Stronger Monsters", "Hotel", "Can You Really Call This A Hotel I Didnt Receive A Mint On My Pillow Or Anything",
	"Confession", "Live Report", "Spider Dance", "Wrong Enemy", "Oh One True Love", "Its Raining Somewhere Else", "Core",
	"Death By Glamour", "Long Elevator", "Undertale", "Song That Might Play When You Fight Sans", "Asgore", "Your Best Nightmare", "Finale",
	"An Ending", "Shes Playing Piano", "Here We Are", "Amalgam", "Dont Give Up", "Hopes And Dreams", "Save The World", "His Theme", "Reunited", "Respite", "Bring It In Guys",
	"Last Goodbye", "Battle Against A True Hero", "Power Of Neo", "Megalovania", "Good Night", "Ski Is Rude", "Megalo Strike Back", "Reality Check Through The Skull", 
	"Backbone", "Mad Mew Mew", "To The Bone", "Dark Darker Yet Darker", "Stronger Then You", "Bonedoggle", "Bad Time", "Hyperlink", "Hyperlink (Reloaded)", "Die",
	"Megalo Strike Back (Chara)", "Fandomania", "Dance Of Dog", "Room Of Dog", "Never Gonna Ski You Up", "Wrong Number", "Astra Perambulis", "Vantablack", "Sound Test", "Interstellar Retribution"
}

function onCreate()
			initSaveData('awardData', 'SkiUNDERTALE')
			initSaveData('songData', 'SkiUNDERTALE')
			initSaveData('hasBeaten', 'SkiUNDERTALE')			
			initSaveData('songMisses', 'SkiUNDERTALE')			
			initSaveData('songAccuracy', 'SkiUNDERTALE')			
			
			makeLuaSprite('awardBox', 'Awards/box', 0, 0)
			setObjectCamera('awardBox', 'other')
			setProperty('awardBox.alpha', 0)
			addLuaSprite('awardBox', true)
end

function onCreatePost()
			for l =  1, 95, 1 do
			if getDataFromSave('hasBeaten', songList[l]) == true then
				totalSongsBeaten = totalSongsBeaten + 1
				totalAcc = totalAcc + getDataFromSave('songAccuracy', songList[l]) 
end
end
			for g =  1, 72, 1 do
			if getDataFromSave('hasBeaten', songList[g]) == true then
				mainSongsBeaten = mainSongsBeaten + 1
				mainMisses = mainMisses + getDataFromSave('songMisses', songList[g]) 
end
end
			for f =  73, 95, 1 do
			if getDataFromSave('hasBeaten', songList[f]) == true then
				bonusSongsBeaten = bonusSongsBeaten + 1
				bonusMisses = bonusMisses + getDataFromSave('songMisses', songList[f]) 
end
end
				totalAcc = math.floor((totalAcc / 91) * 100) / 100
end

function onUpdate()
	if totalSongsBeaten == 95 then
	if getDataFromSave('awardData', 'award4') ~= true then
		setDataFromSave('awardData', 'award4', true)
		flushSaveData('awardData')
		awardGiven = 4
		onGiveAward()
end
	else
		setDataFromSave('awardData', 'award4', false)
		flushSaveData('awardData')	
end
	if mainSongsBeaten == 72 then
		mainBeaten = true
	if getDataFromSave('awardData', 'award1') ~= true then
		setDataFromSave('awardData', 'award1', true)
		flushSaveData('awardData')
		awardGiven = 1
		onGiveAward()
end
	else
		setDataFromSave('awardData', 'award1', false)
		flushSaveData('awardData')
end
	if bonusSongsBeaten == 23 then
		bonusBeaten = true
	if getDataFromSave('awardData', 'award2') ~= true then
		setDataFromSave('awardData', 'award2', true)
		flushSaveData('awardData')
		awardGiven = 2
		onGiveAward()
end
	else
		setDataFromSave('awardData', 'award2', false)
		flushSaveData('awardData')
end
end

function onUpdatePost()
	if bonusBeaten == true and bonusMisses == 0 then
	if getDataFromSave('awardData', 'award3') ~= true then
		setDataFromSave('awardData', 'award3', true)
		flushSaveData('awardData')
		awardGiven = 3
		onGiveAward()
end
	else
		setDataFromSave('awardData', 'award3', false)
		flushSaveData('awardData')
end
	if mainBeaten == true and mainMisses == 0 then
	if getDataFromSave('awardData', 'award9') ~= true then
		setDataFromSave('awardData', 'award9', true)
		flushSaveData('awardData')
		awardGiven = 9
		onGiveAward()
end
	else
		setDataFromSave('awardData', 'award9', false)
		flushSaveData('awardData')
end
	if totalAcc >= 95 and bonusBeaten == true and mainBeaten == true then
	if getDataFromSave('awardData', 'award8') ~= true then
		setDataFromSave('awardData', 'award8', true)
		flushSaveData('awardData')
		awardGiven = 8
		onGiveAward()
end
	else
		setDataFromSave('awardData', 'award8', false)
		flushSaveData('awardData')	
end
end

function onGiveAward()
			makeLuaSprite('awardIcon', 'Awards/Icons/' .. awardGiven, 12, 12)
			setObjectCamera('awardIcon', 'other')
			setProperty('awardIcon.alpha', 0)
			addLuaSprite('awardIcon', true)

			playSound('awardSound', 1, 'award')
			setProperty('awardBox.alpha', 1)
			setProperty('awardIcon.alpha', 1)
			runTimer('awardTimer', 1, 1)
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'awardTimer' then
		doTweenAlpha('awardBoxTweenAlpha', 'awardBox', 0, 0.2, 'linear') 
		doTweenAlpha('awardIconTweenAlpha', 'awardIcon', 0, 0.2, 'linear')
end
end			
			
		