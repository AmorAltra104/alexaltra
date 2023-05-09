local currentCard = 1
local currentSong = 1
local inSongMenu = false
local currentBonus = 1
local inBonusMenu = false
local totalAcc = 0
local currentAcc = 0
local totalMiss = 0
local bonusAcc = 0
local currentBonusAcc = 0
local bonusMiss = 0
local mechEnabled = true
local hasMechs = false
local canSelectSong = true

local songNameList = {
	"Once Upon A Time", "Start Menu", "Your Best Friend", "Fallen Down", "Ruins", "Uwa!! So Ski", "Unnecessary Tension",
	"Enemy Approaching", "Ghost Fight", "Determination", "Home", "Heartache", "sans.", "Snowy", "Dogbass", "Mysterious Place",
	"Dogsong", "Snowdin Town", "Shop", "Bonetrousle", "Dating Start!", "Premonition", "Undyne", "Waterfall", "Run!", "Quiet Water",
	"Memory", "Bird That Carries You Over A Disproportionately Small Gap", "Dummy!", "Pathetic House", "Spooktunes",
	"Thundersnail", "Temmie Village", "Tem Shop", "Spear Of Justice", "Alphys", "It's Showtime!", "Metal Crusher", "Another Medium",
	"Stronger Monsters", "Hotel", "Can You Really Call This A Hotel? I Didn't Receive A Mint On My Pillow Or Anything!",
	"Confession", "Live Report", "Spider Dance", "Wrong Enemy!?", "Oh! One True Love", "It's Raining Somewhere Else", "CORE",
	"Death By Glamour", "Long Elevator", "Undertale", "Song That Might Play When You Fight Sans", "ASGORE", "Your Best Nightmare", "Finale",
	"An Ending", "She's Playing Piano", "Here We Are", "Amalgam", "Don't Give Up", "Hopes And Dreams", "SAVE The World", "His Theme", "Reunited", "Respite", "Bring It In, Guys!",
	"Last Goodbye", "Battle Against A True Hero", "Power Of NEO", "Megalovania", "Good Night",
}

local songNameList1 = {
	"Once Upon A Time", "Start Menu", "Your Best Friend", "Fallen Down", "Ruins", "Uwa So Ski", "Unnecessary Tension",
	"Enemy Approaching", "Ghost Fight", "Determination", "Home", "Heartache", "Sans", "Snowy", "Dogbass", "Mysterious Place",
	"Dogsong", "Snowdin Town", "Shop", "Bonetrousle", "Dating Start", "Premonition", "Undyne", "Waterfall", "Run", "Quiet Water",
	"Memory", "Bird That Carries You Over A Disproportionately Small Gap", "Dummy", "Pathetic House", "Spooktunes",
	"Thundersnail", "Temmie Village", "Tem Shop", "Spear Of Justice", "Alphys", "Its Showtime", "Metal Crusher", "Another Medium",
	"Stronger Monsters", "Hotel", "Can You Really Call This A Hotel I Didnt Receive A Mint On My Pillow Or Anything",
	"Confession", "Live Report", "Spider Dance", "Wrong Enemy", "Oh One True Love", "Its Raining Somewhere Else", "Core",
	"Death By Glamour", "Long Elevator", "Undertale", "Song That Might Play When You Fight Sans", "Asgore", "Your Best Nightmare", "Finale",
	"An Ending", "Shes Playing Piano", "Here We Are", "Amalgam", "Dont Give Up", "Hopes And Dreams", "Save The World", "His Theme", "Reunited", "Respite", "Bring It In Guys",
	"Last Goodbye", "Battle Against A True Hero", "Power Of Neo", "Megalovania", "Good Night",
}

local bonusNameList = {
	"Ski Is Rude", "Megalo Strike Back", "Reality Check Through The Skull", "Backbone", "Mad Mew Mew!!", "To The Bone", "Dark Darker Yet Darker", "Stronger Then You",
	"Bonedoggle", "BAD TIME", "HYPERLINK", "HYPERLINK (RELOADED)", "D.I.E", "Megalo Strike Back", "Fandomania", "Dance Of Dog", "Room Of Dog", "Never Gonna Ski You Up",
	"Wrong Number", "Astra Perambulis", "Vantablack", "Sound Test", "Interstellar Retribution",
}

local bonusNameList1 = {
	"Ski Is Rude", "Megalo Strike Back", "Reality Check Through The Skull", "Backbone", "Mad Mew Mew", "To The Bone", "Dark Darker Yet Darker", "Stronger Then You",
	"Bonedoggle", "Bad Time", "Hyperlink", "Hyperlink (Reloaded)", "Die", "Megalo Strike Back (Chara)", "Fandomania", "Dance Of Dog", "Room Of Dog",
	"Never Gonna Ski You Up", "Wrong Number", "Astra Perambulis", "Vantablack", "Sound Test", "Interstellar Retribution",
}

function onCreate()
		initSaveData('songData', 'SkiUNDERTALE')
		initSaveData('songAccuracy', 'SkiUNDERTALE')
		initSaveData('songMisses', 'SkiUNDERTALE')
		initSaveData('songCombo', 'SkiUNDERTALE')
		initSaveData('menuData', 'SkiUNDERTALE')
		
		if getDataFromSave('songData', 'lastSongPlayed') == 'lastSongPlayed' then			
			setDataFromSave('songData', 'lastSongPlayed', 1)
			flushSaveData('songData')			
end
		if getDataFromSave('songData', 'lastBonusPlayed') == 'lastBonusPlayed' then			
			setDataFromSave('songData', 'lastBonusPlayed', 1)
			flushSaveData('songData')			
end

		currentSong = getDataFromSave('songData', 'lastSongPlayed')
		currentBonus = getDataFromSave('songData', 'lastBonusPlayed')
	
	for a = 1, 72, 1 do			
		if getDataFromSave('songData', songNameList1[a]) == true then
		if getDataFromSave('songAccuracy', songNameList1[a]) ~= 0 and getDataFromSave('songAccuracy', songNameList1[a]) ~= songNameList1[a] then 
			currentAcc = currentAcc + 1
			totalAcc = totalAcc + getDataFromSave('songAccuracy', songNameList1[a])
end
		if getDataFromSave('songMisses', songNameList1[a]) ~= 9999999999 and getDataFromSave('songMisses', songNameList1[a]) ~= songNameList1[a] then			
			totalMiss = totalMiss + getDataFromSave('songMisses', songNameList1[a]) 
end
end
end
	if totalAcc ~= 0 then
			totalAcc = math.floor((totalAcc / currentAcc) * 100) / 100
	else
			totalAcc = "???"
end

	for b = 1, 23, 1 do			
		if getDataFromSave('songData', bonusNameList1[b]) == true then
		if getDataFromSave('songAccuracy', bonusNameList1[b]) ~= 0 and getDataFromSave('songAccuracy', bonusNameList1[b]) ~= bonusNameList1[b] then 
			currentBonusAcc = currentBonusAcc + 1
			bonusAcc = bonusAcc + getDataFromSave('songAccuracy', bonusNameList1[b])
end
		if getDataFromSave('songMisses', bonusNameList1[b]) ~= 9999999999 and getDataFromSave('songMisses', bonusNameList1[b]) ~= bonusNameList1[b] then 
			bonusMiss = bonusMiss + getDataFromSave('songMisses', bonusNameList1[b]) 
end
end
end
	if bonusAcc ~= 0 then
			bonusAcc = math.floor((bonusAcc / currentBonusAcc) * 100) / 100
	else
			bonusAcc = "???"
end
		setPropertyFromClass('flixel.FlxG', 'mouse.visible', true)

		makeLuaSprite('emptySpace', 'empty', 0, 0)
		setObjectCamera('emptySpace', 'other')
		addLuaSprite('emptySpace', false)
		
		makeLuaSprite('BG', 'Song Menu/BG', 0, 0)
		setObjectCamera('BG', 'other')
		addLuaSprite('BG', false)
		
		makeLuaSprite('cardBG', 'Song Menu/cardBG', 0, 0)
		setObjectCamera('cardBG', 'other')
		addLuaSprite('cardBG', false)
		
		makeLuaSprite('menuBox', 'Song Menu/menuBox', 0, 0)
		setObjectCamera('menuBox', 'other')
		addLuaSprite('menuBox', false)
		
		makeLuaSprite('card1', 'Song Menu/card1', 100, 140)
		setObjectCamera('card1', 'other')
		addLuaSprite('card1', false)
		
		makeLuaSprite('card2', 'Song Menu/card2', 750, 140)
		setObjectCamera('card2', 'other')
		addLuaSprite('card2', false)
		
		makeLuaSprite('songBG', 'Song Menu/BGs/1', 0, 0)
		setObjectCamera('songBG', 'other')
		setProperty('songBG.alpha', 0)
		addLuaSprite('songBG', false)
		
		makeLuaSprite('boxes', 'Song Menu/boxes', 0, 0)
		setObjectCamera('boxes', 'other')
		setObjectOrder('boxes', 15)
		setProperty('boxes.alpha', 0)
		addLuaSprite('boxes', false)
		
		makeLuaSprite('mech', 'Song Menu/mech', 0, 550)
		setObjectCamera('mech', 'other')
		setProperty('mech.alpha', 0)
		addLuaSprite('mech', true)
		
		makeLuaSprite('mech1', 'Song Menu/mechYellow', 0, 550)
		setObjectCamera('mech1', 'other')
		setProperty('mech1.alpha', 0)
		addLuaSprite('mech1', true)
		
		makeLuaSprite('arrowLeft', 'Song Menu/arrow', 25, 350)
		setObjectCamera('arrowLeft', 'other')
		setProperty('arrowLeft.alpha', 0)
		addLuaSprite('arrowLeft', true)
		
		makeLuaSprite('arrowRight', 'Song Menu/arrow', 1200, 350)
		setObjectCamera('arrowRight', 'other')
		setProperty('arrowRight.alpha', 0)
		setProperty('arrowRight.flipX', true)
		addLuaSprite('arrowRight', true)
		
		makeLuaSprite('black', 'empty', 0, 0)
		setObjectCamera('black', 'other')
		setProperty('black.alpha', 0)
		addLuaSprite('black', true)
		
		makeLuaText('nameText', "Once Upon A Time", 3000, -700, 5)
		setTextFont('nameText', "Sans.otf")
		setObjectCamera('nameText', 'other')
		setObjectOrder('nameText', 20)
		setTextSize('nameText', 60)
		setProperty('nameText.alpha', 0)
		setProperty('nameText.antialiasing', false)
		addLuaText('nameText')
		
		makeLuaText('hintText', "Once Upon A Time", 3000, -870, 150)
		setTextFont('hintText', "Sans.otf")
		setObjectCamera('hintText', 'other')
		setObjectOrder('hintText', 10)
		setTextSize('hintText', 30)
		setProperty('hintText.alpha', 0)
		setProperty('hintText.antialiasing', false)
		addLuaText('hintText')
		
		makeLuaText('menuText', "Accuracy: " .. totalAcc .. "% | " .. "Misses: " .. totalMiss, 3000, -850, 25)
		setTextFont('menuText', "Sans.otf")
		setObjectCamera('menuText', 'other')
		setObjectOrder('menuText', 20)
		setTextSize('menuText', 60)
		setProperty('menuText.alpha', 1)
		setProperty('menuText.antialiasing', false)
		addLuaText('menuText')
		
		makeLuaText('statsText', "", 1500, -110, 640)
		setTextFont('statsText', "Sans.otf")
		setObjectCamera('statsText', 'other')
		setObjectOrder('statsText', 20)
		setTextSize('statsText', 50)
		setProperty('statsText.alpha', 0)
		setProperty('statsText.antialiasing', false)
		addLuaText('statsText')
		
		makeLuaText('lockedText', "This Song Is Locked!", 1500, -110, 500)
		setTextFont('lockedText', "Sans.otf")
		setObjectCamera('lockedText', 'other')
		setObjectOrder('lockedText', 20)
		setTextSize('lockedText', 30)
		setProperty('lockedText.alpha', 0)
		setProperty('lockedText.antialiasing', false)
		addLuaText('lockedText')
		
		playMusic('menuMusic', 1, true)
end

function onStartCountdown()
	return Function_Stop
end

function onUpdate()
	if keyboardJustPressed('ESCAPE') then
	if inSongMenu == false and inBonusMenu == false then
		playSound('confirmMenu', 1, 'accept')
		setPropertyFromClass('flixel.FlxG', 'mouse.visible', false)
		setDataFromSave('menuData', 'inSongMenu', false)
		flushSaveData('menuData')
		exitSong()
	elseif inSongMenu == true then
		playSound('confirmMenu', 1, 'accept')
		doTweenAlpha('blackExitTweenAlpha', 'black', 1, 0.25, 'smootherStepInOut')	
	elseif inBonusMenu == true then
		playSound('confirmMenu', 1, 'accept')
		doTweenAlpha('bonusExitTweenAlpha', 'black', 1, 0.25, 'smootherStepInOut')	
end
end
	if inSongMenu == false and inBonusMenu == false then
	if keyJustPressed('right') and currentCard < 2 then
		currentCard = currentCard + 1
		playSound('selectSound', 1, 'selectRight')
	elseif keyJustPressed('left') and currentCard > 1 then
		currentCard = currentCard - 1
		playSound('selectSound', 1, 'selectLeft')
end
end
	if inSongMenu == true then
	if keyJustPressed('right') and currentSong < 72 then
		currentSong = currentSong + 1
		playSound('selectSound', 1, 'selectRight')
		doTweenX('rightArrowTweenX', 'arrowRight', 1210, 0.1, 'circInOut')
		canSelectSong = false
	elseif keyJustPressed('left') and currentSong > 1 then
		currentSong = currentSong - 1
		playSound('selectSound', 1, 'selectLeft')
		doTweenX('leftArrowTweenX', 'arrowLeft', 15, 0.1, 'circInOut')
		canSelectSong = false
end
end
	if inBonusMenu == true then
	if keyJustPressed('right') and currentBonus < 23 then
		currentBonus = currentBonus + 1
		playSound('selectSound', 1, 'selectRight')
		doTweenX('rightArrowTweenX', 'arrowRight', 1210, 0.1, 'circInOut')
		canSelectSong = false
	elseif keyJustPressed('left') and currentBonus > 1 then
		currentBonus = currentBonus - 1
		playSound('selectSound', 1, 'selectLeft')
		doTweenX('leftArrowTweenX', 'arrowLeft', 15, 0.1, 'circInOut')
		canSelectSong = false
end
end
	if keyboardJustPressed('ENTER') then
	if inSongMenu == false and inBonusMenu == false then
	if currentCard == 1 then
		playSound('confirmMenu', 1, 'accept')
		doTweenAlpha('blackMenuTweenAlpha', 'black', 1, 0.25, 'smootherStepInOut')
	elseif currentCard == 2 then
		playSound('confirmMenu', 1, 'accept')
		doTweenAlpha('bonusMenuTweenAlpha', 'black', 1, 0.25, 'smootherStepInOut')
end
end
end
	if keyboardJustPressed('ENTER') and canSelectSong == true then
	if inSongMenu == true then
		setDataFromSave('songData', 'lastSongPlayed', currentSong)
		flushSaveData('songData')			
	if hasBeatenSong == true then
		setPropertyFromClass('flixel.FlxG', 'mouse.visible', false)
	if mechEnabled == true then
		loadSong(songNameList1[currentSong], 0)
	else
		loadSong(songNameList1[currentSong], 1)
end		
		playSound('confirmMenu', 1, 'accept')
	else
		playSound('nope', 1, 'deny')
		setTextString('lockedText', "You must complete the previous song to unlock this!")
		setProperty('lockedText.alpha', 1)
		doTweenAlpha('lockedTextAlphaTween', 'lockedText', 0, 2, 'smootherStepInOut')
end
end
end
	if keyboardJustPressed('ENTER') and canSelectSong == true then        
	if inBonusMenu == true then
		setDataFromSave('songData', 'lastBonusPlayed', currentBonus)
		flushSaveData('songData')				
	if hasBeatenSong == true then
		setPropertyFromClass('flixel.FlxG', 'mouse.visible', false)
	if mechEnabled == true then
		loadSong(bonusNameList1[currentBonus], 0)
	else
		loadSong(bonusNameList1[currentBonus], 1)
end
		playSound('confirmMenu', 1, 'accept')
	elseif hasBeatenSong ~= true and currentBonus == 1 or currentBonus == 2 or currentBonus == 3 or currentBonus == 4 or currentBonus == 5 or currentBonus == 6 or currentBonus == 8 or currentBonus == 9 or currentBonus == 10 or currentBonus == 11 or currentBonus == 13 or currentBonus == 14 or currentBonus == 15 or currentBonus == 20 or currentBonus == 21 or currentBonus == 23 then
		playSound('nope', 1, 'deny')
		setTextString('lockedText', "You must buy this song at the SHOP!")                          
		setProperty('lockedText.alpha', 1)
		doTweenAlpha('lockedTextAlphaTween', 'lockedText', 0, 2, 'smootherStepInOut')
	elseif hasBeatenSong ~= true and currentBonus == 7  or currentBonus == 12 or currentBonus == 16 or currentBonus == 17 or currentBonus == 18 or currentBonus == 19 or currentBonus == 22 then
		playSound('nope', 1, 'deny')
		setTextString('lockedText', "This song is a SECRET!")                          
		setProperty('lockedText.alpha', 1)
		doTweenAlpha('lockedTextAlphaTween', 'lockedText', 0, 2, 'smootherStepInOut')
end
end
end
	if inSongMenu == false and inBonusMenu == false then
	if currentCard == 1 then
		setProperty('card1.alpha', 1)
		setProperty('card2.alpha', 0.25)
		setTextString('menuText', "Accuracy: " .. totalAcc .. "% | " .. "Misses: " .. totalMiss)
	elseif currentCard == 2 then
		setProperty('card1.alpha', 0.25)
		setProperty('card2.alpha', 1)
		setTextString('menuText', "Accuracy: " .. bonusAcc .. "% | " .. "Misses: " .. bonusMiss)
end
end
		if inSongMenu == true then
			if songNameList1[currentSong] == "Bonetrousle" then
				setProperty('mech.alpha', 1)
				setProperty('mech1.alpha', 1)
				hasMechs = true
			elseif songNameList1[currentSong] == "Spear Of Justice" then
				setProperty('mech.alpha', 1)
				setProperty('mech1.alpha', 1)
				hasMechs = true
			elseif songNameList1[currentSong] == "Spider Dance" then
				setProperty('mech.alpha', 1)
				setProperty('mech1.alpha', 1)
				hasMechs = true
			elseif songNameList1[currentSong] == "Death By Glamour" then
				setProperty('mech.alpha', 1)
				setProperty('mech1.alpha', 1)
				hasMechs = true
			elseif songNameList1[currentSong] == "Asgore" then
				setProperty('mech.alpha', 1)
				setProperty('mech1.alpha', 1)
				hasMechs = true
			elseif songNameList1[currentSong] == "Hopes And Dreams" then
				setProperty('mech.alpha', 1)
				setProperty('mech1.alpha', 1)
				hasMechs = true
			elseif songNameList1[currentSong] == "Battle Against A True Hero" then
				setProperty('mech.alpha', 1)
				setProperty('mech1.alpha', 1)
				hasMechs = true
			elseif songNameList1[currentSong] == "Megalovania" then
				setProperty('mech.alpha', 1)
				setProperty('mech1.alpha', 1)
				hasMechs = true
			else
				setProperty('mech.alpha', 0)
				setProperty('mech1.alpha', 0)
				mechEnabled = true
				hasMechs = false
end
end
		if inBonusMenu == true then 
			if bonusNameList1[currentBonus] == "Reality Check Through The Skull" then
				setProperty('mech.alpha', 1)
				setProperty('mech1.alpha', 1)
				hasMechs = true
			elseif bonusNameList1[currentBonus] == "Backbone" then
				setProperty('mech.alpha', 1)
				setProperty('mech1.alpha', 1)
				hasMechs = true
			elseif bonusNameList1[currentBonus] == "Mad Mew Mew" then
				setProperty('mech.alpha', 1)
				setProperty('mech1.alpha', 1)
				hasMechs = true
			elseif bonusNameList1[currentBonus] == "Dark Darker Yet Darker" then
				setProperty('mech.alpha', 1)
				setProperty('mech1.alpha', 1)
				hasMechs = true
			elseif bonusNameList1[currentBonus] == "Hyperlink (Reloaded)" then
				setProperty('mech.alpha', 1)
				setProperty('mech1.alpha', 1)
				hasMechs = true
			elseif bonusNameList1[currentBonus] == "Interstellar Retribution" then
				setProperty('mech.alpha', 1)
				setProperty('mech1.alpha', 1)
				hasMechs = true
			else
				setProperty('mech.alpha', 0)
				setProperty('mech1.alpha', 0)
				mechEnabled = true
				hasMechs = false
end
			if bonusNameList1[currentBonus] == "Dark Darker Yet Darker" then
				setProperty('hintText.alpha', 1)
				setTextString('hintText', "HINT: Find the grey door when restarting on 'Waterfall.")
			elseif bonusNameList1[currentBonus] == "Hyperlink (Reloaded)" then
				setProperty('hintText.alpha', 1)
				setTextString('hintText', "HINT: Press F1 for help in 'Hyperlink.")
			elseif bonusNameList1[currentBonus] == "Dance Of Dog" then
				setProperty('hintText.alpha', 1)
				setTextString('hintText', "HINT: Find the secret song when starting the game.")
			elseif bonusNameList1[currentBonus] == "Room Of Dog" then
				setProperty('hintText.alpha', 1)
				setTextString('hintText', "HINT: Beat 'Last Goodbye' with no misses and go through a mysterious door.")
			elseif bonusNameList1[currentBonus] == "Never Gonna Ski You Up" then
				setProperty('hintText.alpha', 1)
				setTextString('hintText', "HINT: You'll need to die alot.")
			elseif bonusNameList1[currentBonus] == "Wrong Number" then
				setProperty('hintText.alpha', 1)
				setTextString('hintText', "HINT: Get called by a stranger in 'Snowdin Town'.")
			elseif bonusNameList1[currentBonus] == "Sound Test" then
				setProperty('hintText.alpha', 1)
				setTextString('hintText', "HINT: Beat 'Bonetrousle' and get lucky restarting on 'Snowy'.")
			else
				setProperty('hintText.alpha', 0)
end
end
			if mechEnabled == true then
				setObjectOrder('mech', 15)
				setObjectOrder('mech1', 14)
			else
				setObjectOrder('mech', 14)
				setObjectOrder('mech1', 15)
end
			if hasMechs == true then
				if mouseClicked() and getMouseX('hud') >= getProperty('mech.x') and getMouseX('hud') <= (getProperty('mech.x') + 444) and getMouseY('hud') >= getProperty('mech.y') and getMouseY('hud') <= (getProperty('mech.y') + 59) then
						playSound('selectSound', 1, 'mechSound')
					if mechEnabled == true then
						mechEnabled = false
					elseif mechEnabled == false then
						mechEnabled = true
end
end
end
	if inSongMenu == true then 
		if hasBeatenSong == true then
			setTextString('nameText', songNameList[currentSong])
		elseif hasBeatenSong ~= true then
			setTextString('nameText', "???")
end			
		curMisses = getDataFromSave('songMisses', songNameList1[currentSong]) 
		curAcc= getDataFromSave('songAccuracy', songNameList1[currentSong]) 
		curCombo= getDataFromSave('songCombo', songNameList1[currentSong])

	if currentSong == 28 then
			scaleObject('nameText', 0.65, 1)
			setProperty('nameText.x', -330)
	elseif currentSong == 42 then
			scaleObject('nameText', 0.5, 1)
			setProperty('nameText.x', -110)
	else
			scaleObject('nameText', 1, 1)
			setProperty('nameText.x', -870)
 end
	if curMisses ~= songNameList1[currentSong] and curMisses ~= 9999999999 then
		setTextString('statsText', "Misses: " .. curMisses .. " | Accuracy: " .. curAcc .. "% | Highest Combo: " .. curCombo)
	elseif curMisses == 9999999999 or curMisses == songNameList1[currentSong] then
		setTextString('statsText', "Misses: ??? | Accuracy: ??? | Highest Combo: ???")		
end
	if hasBeatenSong == true then
		makeLuaSprite('songBG', 'Song Menu/BGs/' .. currentSong, 0, 0)
		setObjectCamera('songBG', 'other')
		setObjectOrder('songBG', 13)
		setProperty('songBG.alpha', 1)
		addLuaSprite('songBG', false)
	else 
		setProperty('songBG.alpha', 0)
end
	if currentSong == 72 then
		setProperty('arrowRight.alpha', 0)
	else
		setProperty('arrowRight.alpha', 1)
end
	if currentSong == 1 then
		setProperty('arrowLeft.alpha', 0)
	else
		setProperty('arrowLeft.alpha', 1)
end
	if currentSong == 1 then
		hasBeatenSong = true
	else
		hasBeatenSong = getDataFromSave('songData', songNameList1[currentSong - 1])	
end
end

	if inBonusMenu == true then 
		if hasBeatenSong == true then
			setTextString('nameText', bonusNameList[currentBonus])
		elseif hasBeatenSong ~= true then
			setTextString('nameText', "???")
end			
		curMisses = getDataFromSave('songMisses', bonusNameList1[currentBonus]) 
		curAcc= getDataFromSave('songAccuracy', bonusNameList1[currentBonus]) 
		curCombo= getDataFromSave('songCombo', bonusNameList1[currentBonus])

	if curMisses ~= bonusNameList1[currentBonus] and curMisses ~= 9999999999 then
		setTextString('statsText', "Misses: " .. curMisses .. " | Accuracy: " .. curAcc .. "% | Highest Combo: " .. curCombo)
	elseif curMisses == 9999999999 or curMisses == bonusNameList1[currentBonus] then
		setTextString('statsText', "Misses: ??? | Accuracy: ??? | Highest Combo: ???")		
end
	if hasBeatenSong == true then
		makeLuaSprite('songBG', 'Song Menu/BGs/Bonus/' .. currentBonus, 0, 0)
		setObjectCamera('songBG', 'other')
		setObjectOrder('songBG', 13)
		setProperty('songBG.alpha', 1)
		addLuaSprite('songBG', false)
	else 
		setProperty('songBG.alpha', 0)
end
	if currentBonus == 23 then
		setProperty('arrowRight.alpha', 0)
	else
		setProperty('arrowRight.alpha', 1)
end
	if currentBonus == 1 then
		setProperty('arrowLeft.alpha', 0)
	else
		setProperty('arrowLeft.alpha', 1)
end
		hasBeatenSong = getDataFromSave('songData', bonusNameList1[currentBonus])
		scaleObject('nameText', 1, 1)
		setProperty('nameText.x', -870)		
end
end

function onTweenCompleted(tag)
	if tag == 'blackMenuTweenAlpha' then
		setProperty('card1.alpha', 0)
		setProperty('card2.alpha', 0)
		setProperty('BG.alpha', 0)
		setProperty('menuBox.alpha', 0)
		setProperty('menuText.alpha', 0)
		setProperty('cardBG.alpha', 0)
		setProperty('boxes.alpha', 1)
		setProperty('nameText.alpha', 1)
		setProperty('statsText.alpha', 1)
		setProperty('songBG.alpha', 1)
		setProperty('arrowLeft.alpha', 1)
		setProperty('arrowRight.alpha', 1)
		doTweenAlpha('blackMenuTweenAlpha1', 'black', 0, 0.25, 'smootherStepInOut')
		inSongMenu = true
end
	if tag == 'blackExitTweenAlpha' then
		setProperty('card1.alpha', 1)
		setProperty('card2.alpha', 1)
		setProperty('BG.alpha', 1)
		setProperty('menuBox.alpha', 1)
		setProperty('cardBG.alpha', 1)
		setProperty('menuText.alpha', 1)
		setProperty('boxes.alpha', 0)
		setProperty('mech.alpha', 0)
		setProperty('mech1.alpha', 0)		
		setProperty('nameText.alpha', 0)	
		setProperty('statsText.alpha', 0)
		cancelTween('lockedTextAlphaTween')
		setProperty('lockedText.alpha', 0)	
		setProperty('songBG.alpha', 0)	
		setProperty('arrowLeft.alpha', 0)	
		setProperty('arrowRight.alpha', 0)	
		doTweenAlpha('blackExitTweenAlpha1', 'black', 0, 0.25, 'smootherStepInOut')
		inSongMenu = false
end
	if tag == 'bonusMenuTweenAlpha' then
		setProperty('card1.alpha', 0)
		setProperty('card2.alpha', 0)
		setProperty('BG.alpha', 0)
		setProperty('cardBG.alpha', 0)
		setProperty('menuText.alpha', 0)
		setProperty('menuBox.alpha', 0)
		setProperty('boxes.alpha', 1)
		setProperty('nameText.alpha', 1)
		setProperty('statsText.alpha', 1)
		setProperty('songBG.alpha', 1)
		setProperty('arrowLeft.alpha', 1)
		setProperty('arrowRight.alpha', 1)
		doTweenAlpha('bonusMenuTweenAlpha1', 'black', 0, 0.25, 'smootherStepInOut')
		inBonusMenu = true
end
	if tag == 'bonusExitTweenAlpha' then
		setProperty('card1.alpha', 1)
		setProperty('card2.alpha', 1)
		setProperty('BG.alpha', 1)
		setProperty('menuBox.alpha', 1)
		setProperty('cardBG.alpha', 1)
		setProperty('menuText.alpha', 1)
		setProperty('boxes.alpha', 0)
		setProperty('mech.alpha', 0)
		setProperty('mech1.alpha', 0)		
		setProperty('nameText.alpha', 0)	
		setProperty('statsText.alpha', 0)
		cancelTween('lockedTextAlphaTween')
		setProperty('lockedText.alpha', 0)	
		setProperty('songBG.alpha', 0)	
		setProperty('arrowLeft.alpha', 0)	
		setProperty('arrowRight.alpha', 0)	
		doTweenAlpha('bonusExitTweenAlpha1', 'black', 0, 0.25, 'smootherStepInOut')
		inBonusMenu = false
end
	if tag == 'leftArrowTweenX' then
		doTweenX('leftArrowTweenX1', 'arrowLeft', 25, 0.1, 'circInOut')
		canSelectSong = true
	elseif tag == 'rightArrowTweenX' then
		doTweenX('rightArrowTweenX1', 'arrowRight', 1200, 0.1, 'circInOut')
		canSelectSong = true
end
end