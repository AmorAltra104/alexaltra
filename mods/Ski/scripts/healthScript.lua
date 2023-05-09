curHealth = 20
maxHealth = 20
highCombo = 0
noteCombo = 0
local menuOption = 1
local inPauseMenu = false
local textLength = 0
local deathTextLength = 0
local textLength1 = 0
local textLength2 = 0
local onResultsScreen = false
local allowPauseScreen = false
local goldRecieved = 0
local soulColor = "FB0410"
local canRestartSong = false
local hasRestarted = false
local canDoTime = false
local hasMissedSustain = false
local canDodge = false
local canDodgeTrident = false
local hasKarma = false
local notesHit = 0
local hasLeveledUp = false
local curPauseImage = ''

local deathQuotes = {
		"It cannot end now!",
		"You cannot give up just yet...",
		"You're going to be alright!",
		"Don't lose hope!",
		"Our fate rests upon you...",
}

local levelStats = {"0", "25", "50", "75", "100", "125", "150", "175", "200", "225", "250", "275", "300", "325", "350", "375", "400", "425", "450", "475", "9999"}
local curLevelHP = {"20", "24", "28", "32", "36", "40", "44", "48", "52", "56", "60", "64", "68", "72", "76", "80", "84", "88", "92", "99"}
local curHealthX = {"-300", "-289", "-278", "-267", "-256", "-245", "-234", "-223", "-212", "-201", "-190", "-179", "-168", "-157", "-146", "-135", "-124", "-113", "-102", "-80"}

function onCreate()
	if songName == "store" then
			setPropertyFromClass("openfl.Lib", "application.window.title",'Ski Sings The Entire UNDERTALE Soundtrack!: Browsing The SHOP')
end

    onCreateDeath()
    initSaveData('XPCount', 'SkiUNDERTALE')
    initSaveData('goldCount', 'SkiUNDERTALE')
	initSaveData('songAccuracy', 'SkiUNDERTALE')
	initSaveData('songMisses', 'SkiUNDERTALE')
	initSaveData('songCombo', 'SkiUNDERTALE')
	initSaveData('hasBeaten', 'SkiUNDERTALE')
	initSaveData('songData', 'SkiUNDERTALE')
	
	setPropertyFromClass('Playstate', 'isStoryMode', true)
	
	 runHaxeCode([[
                FlxG.autoPause = false;
                Application.current.window.focus();
            ]])
	
	   if getDataFromSave('goldCount', 'totalGold') == 'totalGold' then
		   setDataFromSave('goldCount', 'totalGold', 0)
           flushSaveData('goldCount')		  
end
	   if getDataFromSave('XPCount', 'experience') == 'experience' then
           setDataFromSave('XPCount', 'experience', 0)   
           setDataFromSave('XPCount', 'curLevel', 1)   
           flushSaveData('XPCount')	   
end
	   if getDataFromSave('songAccuracy', songName) == songName then
           setDataFromSave('songAccuracy', songName, 0)   
           flushSaveData('songAccuracy')		   
end
	   if getDataFromSave('songMisses', songName) == songName then
           setDataFromSave('songMisses', songName, 9999999999)   
           flushSaveData('songMisses')		   
end
	   if getDataFromSave('songCombo', songName) == songName then
           setDataFromSave('songCombo', songName, 0)   
           flushSaveData('songCombo')		   
end
	playerLevel = getDataFromSave('XPCount', 'curLevel')
	maxHealth = tonumber(curLevelHP[playerLevel])
	curHealth = maxHealth
	
	makeLuaSprite('newHealth', 'health', 0, 650)
	setObjectCamera('newHealth', 'hud')
	setProperty('newHealth.antialiasing', false)
	scaleObject('newHealth', 0.8, 0.8)
	addLuaSprite('newHealth', true)
	
	if songName == 'Dark Darker Yet Darker' then
	makeLuaSprite('newHealth', 'healthWing', 0, 650)
	setObjectCamera('newHealth', 'hud')
	setProperty('newHealth.antialiasing', false)
	scaleObject('newHealth', 0.8, 0.8)
	addLuaSprite('newHealth', true)
end
		
	makeLuaSprite('healthRed', 'red', 420, 662)
	setObjectCamera('healthRed', 'hud')
	setProperty('healthRed.antialiasing', false)
	scaleObject('healthRed', 0.04 * maxHealth, 0.8)
	addLuaSprite('healthRed', true)
	
	makeLuaSprite('healthYellow', 'yellow', 420, 662)
	setObjectCamera('healthYellow', 'hud')
	setProperty('healthYellow.antialiasing', false)
	scaleObject('healthYellow', 0.8, 0.8)
	addLuaSprite('healthYellow', true)
	
	makeLuaSprite('healthPurple', 'purple', 420, 662)
	setObjectCamera('healthPurple', 'hud')
	setProperty('healthPurple.antialiasing', false)
	scaleObject('healthPurple', 0.8, 0.8)
	setProperty('healthPurple.alpha', 0) 
	addLuaSprite('healthPurple', true)
	
	 makeLuaText('accText', "", 1000, 1070, 666)
	 setTextFont('accText', 'mars.ttf')
	 setTextSize('accText', 32)
	 setTextAlignment('accText', 'left')
	 setObjectOrder('accText', getObjectOrder('newHealth') + 1)
	 addLuaText('accText')
	 
	 makeLuaText('healthText', "", 1000, tonumber(curHealthX[playerLevel]), 665)
	 setTextFont('healthText', 'mars.ttf')
	 setTextSize('healthText', 32)
	 setTextAlignment('healthText', 'right')
	 setObjectOrder('healthText', getObjectOrder('newHealth') + 1)
	 addLuaText('healthText')
	 
	 makeLuaText('levelText', "LV " .. playerLevel, 1000, 190, 665)
	 setTextFont('levelText', 'mars.ttf')
	 setTextSize('levelText', 32)
	 setTextAlignment('levelText', 'left')
	 setObjectOrder('levelText', getObjectOrder('newHealth') + 1)
	 addLuaText('levelText')
	 
   if downscroll == true then					   	
	setProperty('newHealth.y', 0)	
	setProperty('healthRed.y', 12)	
	setProperty('healthYellow.y', 12)	
	setProperty('healthPurple.y', 12)	
	setProperty('accText.y', 16)
	setProperty('healthText.y', 15)
end
    makeLuaSprite('pauseMenu', 'menu', -350, 25)
	setObjectCamera('pauseMenu', 'other')
	setObjectOrder('pauseMenu', 10)
	addLuaSprite('pauseMenu', true)
	
	if songName == 'Dark Darker Yet Darker' then
		makeLuaSprite('pauseMenu', 'menuWing', -350, 25)
		setObjectCamera('pauseMenu', 'other')
		setObjectOrder('pauseMenu', 10)
		addLuaSprite('pauseMenu', true)
end

		if songName == "Uwa So Ski" then
			curPauseImage = 'skiDog'
		elseif songName == "Run" then
			curPauseImage = 'skiManifest'
		elseif songName == "Unnecessary Tension" then
			curPauseImage = 'skiManifest'
		elseif songName == "Bird That Carries You Over A Disproportionately Small Gap" then
			curPauseImage = 'skiBird'
		elseif songName == "Can You Really Call This A Hotel I Didnt Receive A Mint On My Pillow Or Anything" then
			curPauseImage = 'skiJetpack'
		elseif songName == "Shes Playing Piano" then
			curPauseImage = 'skiMiss'
		elseif songName == "Ski Is Rude" then
			curPauseImage = 'skiFinger'
		elseif songName == "Shes Playing Piano" then
			curPauseImage = 'skiMiss'
		elseif songName == "Bad Time" then
			curPauseImage = 'sky'
		elseif songName == "Hyperlink" then
			curPauseImage = 'spam'
		elseif songName == "Hyperlink (Reloaded)" then
			curPauseImage = 'spam'
		elseif songName == "Bonedoggle" then
			curPauseImage = 'skely'
		elseif songName == "Megalo Strike Back (Chara)" then
			curPauseImage = 'chara'
		elseif songName == "DIE" then
			curPauseImage = 'sans'
		else
			curPauseImage = 'skiToot'
end

	makeLuaSprite('pauseSprite', 'Pause Images/' .. curPauseImage, 380, 720)
	setObjectCamera('pauseSprite', 'other')
	setObjectOrder('pauseSprite', 100)
	addLuaSprite('pauseSprite', true)
	
	makeLuaText('pauseHealth', "20", 1000, -250, 149)
	setTextFont('pauseHealth', 'mars.ttf')
	setTextSize('pauseHealth', 20)
	setTextAlignment('pauseHealth', 'left')
	setObjectCamera('pauseHealth', 'other')
    setObjectOrder('pauseHealth', 102)
	addLuaText('pauseHealth')
	
	makeLuaText('goldText', "20", 1000, -250, 182)
	setTextFont('goldText', 'mars.ttf')
	setTextSize('goldText', 20)
	setTextAlignment('goldText', 'left')
	setObjectCamera('goldText', 'other')
	setObjectOrder('goldText', 103)
	addLuaText('goldText')
	
	makeLuaText('levelPauseText', playerLevel, 1000, -250, 113.5)
	setTextFont('levelPauseText', 'mars.ttf')
	setTextSize('levelPauseText', 20)
	setTextAlignment('levelPauseText', 'left')
	setObjectCamera('levelPauseText', 'other')
	setObjectOrder('levelPauseText', 104)
	addLuaText('levelPauseText')

	makeLuaSprite('endBlack', 'empty', 0, 0)
	setObjectCamera('endBlack', 'other')
	setProperty('endBlack.alpha', 0)
	addLuaSprite('endBlack', true)

	makeLuaSprite('textBox', 'textBox', 160, 700)
	setObjectCamera('textBox', 'other')
    setObjectOrder('textBox', 105)
	addLuaSprite('textBox', true)
	
    makeLuaText('resultsText', "", 1000, 220, 500)
	setTextFont('resultsText', 'mono.otf')
	setTextSize('resultsText', 40)
	setTextAlignment('resultsText', 'left')
	setObjectCamera('resultsText', 'other')
    setObjectOrder('resultsText', 106)
	addLuaText('resultsText')
	
	makeLuaText('resultsText1', "", 1000, 220, 550)
	setTextFont('resultsText1', 'mono.otf')
	setTextSize('resultsText1', 40)
	setTextAlignment('resultsText1', 'left')
	setObjectCamera('resultsText1', 'other')
    setObjectOrder('resultsText1', 107)
	addLuaText('resultsText1')
	
	makeLuaText('resultsText2', "", 1000, 220, 600)
	setTextFont('resultsText2', 'mono.otf')
	setTextSize('resultsText2', 40)
	setTextAlignment('resultsText2', 'left')
	setObjectCamera('resultsText2', 'other')
    setObjectOrder('resultsText2', 108)
	addLuaText('resultsText2')
	
	makeLuaSprite('redSoul', 'heart', -275, 300)
	setObjectCamera('redSoul', 'other')
	setObjectOrder('redSoul', 109)
	addLuaSprite('redSoul', true)
	
	makeLuaSprite('readyPrompt', 'ready', 250, 200)
	setObjectCamera('readyPrompt', 'other')
	setObjectOrder('readyPrompt', 110)
	setProperty('readyPrompt.alpha', 0)
	addLuaSprite('readyPrompt', true)
	
	makeLuaSprite('setPrompt', 'set', 250, 200)
	setObjectCamera('setPrompt', 'other')
	setObjectOrder('setPrompt', 111)
	setProperty('setPrompt.alpha', 0)
	addLuaSprite('setPrompt', true)
	
	makeLuaSprite('goPrompt', 'go', 250, 200)
	setObjectCamera('goPrompt', 'other')
	setObjectOrder('goPrompt', 112)
	setProperty('goPrompt.alpha', 0)
	addLuaSprite('goPrompt', true)
	
	if songName == 'Dark Darker Yet Darker' then
			setTextFont('pauseHealth', 'Wing.ttf')
			setTextFont('goldText', 'Wing.ttf')
			setTextFont('levelPauseText', 'Wing.ttf')
			setTextFont('resultsText', 'Wing.ttf')
			setTextFont('resultsText1', 'Wing.ttf')
			setTextFont('resultsText2', 'Wing.ttf')
end
end

function onCreatePost()
       if songName == "Bonetrousle" and difficultyName == "Normal" then
                   doTweenColor('soulTweenColor', 'redSoul', '002BFF', 0.01, 'linear')
				   soulColor = '002BFF'
       elseif songName == "Spear Of Justice" and difficultyName == "Normal" then
                   doTweenColor('soulTweenColor', 'redSoul', '00DF00', 0.01, 'linear')
				   soulColor = '00DF00'
       elseif songName == "Spider Dance" and difficultyName == "Normal" then
                   doTweenColor('soulTweenColor', 'redSoul', 'D400FF', 0.01, 'linear')
				   soulColor = 'D400FF'
       elseif songName == "Death By Glamour" and difficultyName == "Normal" then
                   doTweenColor('soulTweenColor', 'redSoul', 'FFFF00', 0.01, 'linear')
				   soulColor = 'FFFF00'
       else
                   doTweenColor('soulTweenColor', 'redSoul', 'FB0410', 0.01, 'linear')
				   soulColor = 'FB0410'	
end	

    totalSongLength = math.floor(songLength / 1000)
	setPropertyFromClass('ClientPrefs', 'timeBarType', 'Time Elapsed')

	 makeLuaText('timeText', "", 1000, -265, 100)
	 setTextFont('timeText', 'mars.ttf')
	 setTextSize('timeText', 20)
	 setTextBorder('timeText', 4, '000000')
	 setProperty('timeText.alpha', 0)
	 setObjectOrder('timeText', 50)
	 addLuaText('timeText')
	 
	 makeLuaText('songNameText', songName, 1000, -265, 20)
	 setTextFont('songNameText', 'mars.ttf')
	 setTextSize('songNameText', 20)
	 setTextBorder('songNameText', 4, '000000')
	 setProperty('songNameText.alpha', 0)
	setObjectOrder('songNameText', 50)	 
	 addLuaText('songNameText')
	 
	makeLuaSprite('timeButton', 'timeButton', 30, 57)
	setObjectCamera('timeButton', 'hud')
	setProperty('timeButton.antialiasing', false)
	scaleObject('timeButton', 1, 1)
    setProperty('timeButton.alpha', 0)
	setObjectOrder('timeButtonText', 50)
	addLuaSprite('timeButton', true)

	setProperty('healthBar.visible', false)
	setProperty('healthBarBG.visible', false)
	setProperty('iconP1.visible', false)
	setProperty('iconP2.visible', false)                   
	setProperty('scoreTxt.visible', false)
	
	setProperty('timeTxt.visible', false)
	setProperty('timeBar.x', 50)
	setProperty('timeBar.y', 70)
	setProperty('timeBarBG.x', 50)
	setProperty('timeBarBG.y', 70)

			if downscroll == true then
				setProperty('timeBar.y', 620)
				setProperty('timeBarBG.y', 620)
				setProperty('timeText.y', 650)
				setProperty('songNameText.y', 570)
				setProperty('timeButton.y', 607)
end			
	
                   noteTweenX('opponentNoteTween1X', 0, 1885, 0.01, 'linear')
                   noteTweenY('opponentNoteTween1Y', 0, 0, 0.01, 'linear')
                   noteTweenX('opponentNoteTween2X', 1, 1980, 0.01, 'linear')
                   noteTweenY('opponentNoteTween2Y', 1, 0, 0.01, 'linear')
                   noteTweenX('opponentNoteTween3X', 2, 2075, 0.01, 'linear')
                   noteTweenY('opponentNoteTween3Y', 2, 0, 0.01, 'linear')
                   noteTweenX('opponentNoteTween4X', 3, 2170, 0.01, 'linear')
                   noteTweenY('opponentNoteTween4Y', 3, 0, 0.01, 'linear')

                   noteTweenX('noteTween1X', 4, 800, 0.01, 'linear')
                   noteTweenX('noteTween2X', 5, 910, 0.01, 'linear')
                   noteTweenX('noteTween3X', 6, 1020, 0.01, 'linear')
                   noteTweenX('noteTween4X', 7, 1130, 0.01, 'linear')   				   
end

function onSongStart()
		doTweenX('timeButtonTweenX', 'timeButton', 420, songLength / 1000, 'linear')
		doTweenAlpha('timeButtonTweenAlpha', 'timeButton', 1, 0.2, 'linear')
		doTweenAlpha('timeTextTweenAlpha', 'timeText', 1, 0.2, 'linear')
		doTweenAlpha('songNameTweenAlpha', 'songNameText', 1, 0.2, 'linear')
		canDoTime = true
		allowPauseScreen = true
end

function onUpdate()
                   setHealth('2')
                   setTextString('accText', math.floor(rating*10000)/100 .. '%')
				   setTextString('healthText', curHealth .. " / " .. maxHealth)
                   scaleObject('healthYellow', 0.04 * curHealth, 0.8)
                   scaleObject('healthPurple', 0.04 * curHealth, 0.8)
				   
				   totalSongLength = math.floor(songLength / 1000)
				   timeTotal = math.floor(getProperty('songLength')/1000)
                   timeTotalFixed = string.format("%d:%.2d", timeTotal/60%60, timeTotal%60)
				   
			if noteCombo > highCombo then
                     highCombo = noteCombo
end
			if songName == 'Dance Of Dog' then
				if getDataFromSave('hasBeaten', songName) ~= true then 
					 allowPauseScreen = false
end
					 curHealth = 999
end		
			if songName == "Undertale" or songName == "Last Goodbye" then
					 curHealth = 999
end		
			if songName == "Happy Town" or songName == "Meat Factory" or songName == "Trouble Dingle" or songName == "Gasters Theme" then
					 allowPauseScreen = false
end				   
		if canDoTime == true and songName ~= "Dark Darker Yet Darker" then
				   setTextString('timeText', getTextString('timeTxt') .. "/" .. timeTotalFixed)
end				   
		if curHealth <= 0 then
		           setHealth('-500')
				   allowPauseScreen = false
				   openCustomSubstate('deathScreen', true)
end
		if curHealth > maxHealth then
		          curHealth = maxHealth
end
		if hasKarma == true then
		          setProperty('healthPurple.alpha', 1)
		else
		          setProperty('healthPurple.alpha', 0)
end
		if keyJustPressed('accept') and not keyboardJustPressed('SPACE') and inPauseMenu == false and allowPauseScreen == true and songName ~= "store" and songName ~= "Long Elevator" and songName ~= "song-menu" and songName ~= "awards-menu" and songName ~= "Dark Darker Yet Darker" then
		           openCustomSubstate('pauseScreen', true)
				   playSound('enterSound', 0.3, 'enterSound')
				   doTweenX('pauseMenuTween', 'pauseMenu', 25, 0.5, 'circInOut')
				   doTweenX('pauseGreyTween', 'pauseGrey', 25, 0.5, 'circInOut')
				   doTweenX('pauseHealthTween', 'pauseHealth', 120, 0.5, 'circInOut')
				   doTweenX('goldTextTween', 'goldText', 120, 0.5, 'circInOut')
				   doTweenX('levelPauseTextTween', 'levelPauseText', 120, 0.5, 'circInOut')
				   doTweenX('redSoulTween', 'redSoul', 75, 0.5, 'circInOut')
				   doTweenY('pauseSpriteTween', 'pauseSprite', 0, 0.5, 'circInOut')
				   setProperty('Lyrics.alpha', 0)
end
		if songName == 'Death By Glamour' then
			if getProperty('block.y') <= 50 then
		          cancelTween('blockTweenY')
				  setProperty('block.y', 700)
				  curHealth = curHealth - math.floor(maxHealth / 4)  
				  playSound('missnote' .. getRandomInt(1, 3), 1, 'missNote')
end
end
		if keyboardJustPressed('SPACE') and canDodge == true then
				   canDodge = false
				   setObjectOrder('blasterBeam', 10)
		           doTweenY('skiDodgeTweenY', 'boyfriend', getProperty('boyfriend.y') + 100, 0.5, 'smootherStepInOut')
				   playAnim('boyfriend', 'singDOWN', true)
				   cancelTimer('blasterDamageTimer')
end
		if keyboardJustPressed('SPACE') and canDodgeTrident == true then
				   canDodgeTrident = false
		           doTweenX('skiDodgeTridentTweenX', 'boyfriend', getProperty('boyfriend.x') + 100, 0.5, 'smootherStepInOut')
				   playAnim('boyfriend', 'singRIGHT', true)
				   cancelTimer('tridentDamageTimer')
				if tridentColor == true then
					 curHealth = curHealth - 5
					playSound('missnote' .. math.random(1, 3), 1, 'tridentDamage')
end
end
end

function noteMiss(id, direction, noteType, isSustainNote)
			if difficultyName == "Normal" then
				if songName == 'Megalovania' or songName == "Reality Check Through The Skull" then
					 hasKarma = true
					 runTimer('karmaTimer', 3.5, 1)
end
end
			if noteType == 'Undying Note' then 
			         missSound = math.random(1, 3)
                     playSound('missnote' .. missSound, 1, 'missNote')
					 curHealth = curHealth - math.floor(maxHealth / 8)
			elseif noteType == 'Undying Note1' then
			         missSound = math.random(1, 3)
                     playSound('missnote' .. missSound, 1, 'missNote')
					 curHealth = curHealth - math.floor(maxHealth / 2.5)			
			elseif noteType == 'shield' then
			         missSound = math.random(1, 3)
                     playSound('missnote' .. missSound, 1, 'missNote')
					 curHealth = curHealth - math.floor(maxHealth / 5)				
            elseif isSustainNote == false then
					 hasMissedSustain = false
                     missSound = math.random(1, 3)
                     playSound('missnote' .. missSound, 1, 'missNote')
					 curHealth = curHealth - 2
end
      if isSustainNote == true and hasMissedSustain == false then
					hasMissedSustain = true
		            missSound = math.random(1, 3)
                    playSound('missnote' .. missSound, 1, 'missNote')
					curHealth = curHealth - 1
end
					noteCombo = 0
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
      if noteType == 'Blue Note' then 
	     curHealth = curHealth - math.floor(maxHealth / 10)  
		 missSound = math.random(1, 3)
         playSound('missnote' .. missSound, 1, 'missNote')
      elseif noteType == 'Web Note' then 
	     curHealth = curHealth - math.floor(maxHealth / 5)  
		 missSound = math.random(1, 3)
         playSound('missnote' .. missSound, 1, 'missNote')
      elseif noteType == 'Knife' then 
	     curHealth = curHealth - math.floor(maxHealth / 8)  
		 missSound = math.random(1, 3)
         playSound('missnote' .. missSound, 1, 'missNote')
      elseif noteType == 'Rainbow Note' then 
	     curHealth = curHealth - math.floor(maxHealth / 2.5)  
		 missSound = math.random(1, 3)
         playSound('missnote' .. missSound, 1, 'missNote')
	  elseif noteType == 'Karma Note' then
	     missSound = math.random(1, 3)
         playSound('missnote' .. missSound, 1, 'missNote')
		 hasKarma = true
		 curHealth = curHealth - math.floor(maxHealth / 10)  
		 runTimer('karmaTimer', 5, 1)
	  elseif isSustainNote == false and curHealth < maxHealth and hasKarma == false then
		 curHealth = curHealth + 1
end
      if isSustainNote == false and hasMissedSustain == true then
	     hasMissedSustain = false
end
      if isSustainNote == false and noteType ~= 'Blue Note' and noteType ~= 'Web Note' and noteType ~= 'Karma Note' then
	     notesHit = notesHit + 1
end
	if songName ~= "Bonetrousle" and downscroll == false then
		if noteData == 0 then
			noteTweenY('noteHitTweenY1', 4, 40, crochet / 5000, 'linear')
		elseif noteData == 1 then
			noteTweenY('noteHitTweenY2', 5, 40, crochet / 5000, 'linear')
		elseif noteData == 2 then
			noteTweenY('noteHitTweenY3', 6, 40, crochet / 5000, 'linear')
		elseif noteData == 3 then
			noteTweenY('noteHitTweenY4', 7, 40, crochet / 5000, 'linear')			
end
end
	if songName ~= "Bonetrousle" and downscroll == true then
		if noteData == 0 then
			noteTweenY('noteHitTweenY1', 4, 580, crochet / 5000, 'linear')
		elseif noteData == 1 then
			noteTweenY('noteHitTweenY2', 5, 580, crochet / 5000, 'linear')
		elseif noteData == 2 then
			noteTweenY('noteHitTweenY3', 6, 580, crochet / 5000, 'linear')
		elseif noteData == 3 then
			noteTweenY('noteHitTweenY4', 7, 580, crochet / 5000, 'linear')			
end
end
		if isSustainNote == false then
			noteCombo = noteCombo + 1
end
end

function onCustomSubstateUpdate(name)
   if name == 'pauseScreen' then
     if inPauseMenu == true then
         if keyJustPressed('accept') and menuOption == 1 then
			    doTweenX('pauseMenuTween1', 'pauseMenu', -350, 0.25, 'circInOut')
			    doTweenX('pauseGreyTween1', 'pauseGrey', -350, 0.25, 'circInOut')
				doTweenX('pauseHealthTween1', 'pauseHealth', -250, 0.25, 'circInOut')
				doTweenX('goldTextTween1', 'goldText', -250, 0.25, 'circInOut')
				doTweenX('levelPauseTextTween1', 'levelPauseText', -250, 0.25, 'circInOut')
				doTweenX('redSoulTween1', 'redSoul', -500, 0.5, 'circInOut')
				doTweenY('pauseSpriteTween1', 'pauseSprite', 720, 0.5, 'circInOut')
			    playSound('enterSound', 0.3, 'enterSound')
				runTimer('resumeSongTimer', 0.5, 5)
				inPauseMenu = false
         elseif keyJustPressed('accept') and menuOption == 2 then
		 	    playSound('enterSound', 0.3, 'enterSound')
		        restartSong()
         elseif keyJustPressed('accept') and menuOption == 3 then
		 	    playSound('enterSound', 0.3, 'enterSound')
				setPropertyFromClass("openfl.Lib", "application.window.title",'Ski Sings The Entire UNDERTALE Soundtrack!')
		        loadSong('song-menu')
end
         if keyboardJustPressed('DOWN') and menuOption < 3 then
		        menuOption = menuOption + 1
				playSound('selectSound', 0.3, 'selectSound')
         elseif keyboardJustPressed('UP') and menuOption > 1 then
		        menuOption = menuOption - 1
				playSound('selectSound', 0.3, 'selectSound')
end
         if menuOption == 1 then
		        setProperty('redSoul.y', 300)
         elseif menuOption == 2 then
		        setProperty('redSoul.y', 365)
         elseif menuOption == 3 then
		        setProperty('redSoul.y', 430)
end
end
end
                setTextString('pauseHealth', curHealth .. "/" .. maxHealth)
				setTextString('goldText', getDataFromSave('goldCount', 'totalGold'))
				setTextString('levelPauseText', playerLevel)

              if name == 'deathScreen' then
			      onDeathScreen()
end
end

function onPause()
              return Function_Stop
end

function onTweenCompleted(tag)
        if tag == 'redSoulTween' then
		       inPauseMenu = true
        elseif tag == 'textBoxTweenY' then
		       onResultsScreen = true
			   runTimer('addTextTimer', 0.05, 0)
end
        if tag == 'blasterTweenX1' then
		       setProperty('gasterBlaster.alpha', 0)
		       setProperty('gasterBlaster.x', -150)
end
        if tag == 'blueTridentTweenY' then
		       canDodgeTrident = false
			   setProperty('tridentBlue.y', getProperty('boyfriend.y') - 3000)
			   setProperty('tridentBlue.alpha', 0)
end
        if tag == 'orangeTridentTweenY' then
		       canDodgeTrident = false
			   setProperty('tridentOrange.y', getProperty('boyfriend.y') - 3000)
			   setProperty('tridentOrange.alpha', 0)
end
        if tag == 'blasterTweenX' then
			   canDodge = true
			   runTimer('blasterDamageTimer', 0.5, 1)
end
        if tag == 'blasterBeamTweenY' then
		       doTweenY('blasterBeamTweenY1', 'blasterBeam.scale', 1, 0.25, 'smootherStepInOut')
		       doTweenAlpha('blasterBeamTweenAlpha1', 'blasterBeam', 0, 0.25, 'smootherStepInOut')
end
        if tag == 'skiDodgeTweenY' then
				doTweenY('skiDodgeTweenY1', 'boyfriend', getProperty('boyfriend.y') - 100, 0.25, 'smootherStepInOut')
end
        if tag == 'skiDodgeTridentTweenX' then
				doTweenX('skiDodgeTridentTweenX1', 'boyfriend', getProperty('boyfriend.x') - 100, 0.25, 'smootherStepInOut')
end
		     if tag == 'camOtherTweenZoom' then
                 doTweenZoom('camOtherTweenZoom1', 'camOther', 1, 0.05, 'linear')
end
		if songName ~= "Bonetrousle" and downscroll == false then 
		     if tag == 'noteHitTweenY1' then
				noteTweenY('noteHitTweenY11', 4, 50, crochet / 5000, 'linear') 
		     elseif tag == 'noteHitTweenY2' then
				noteTweenY('noteHitTweenY21', 5, 50, crochet / 5000, 'linear') 
		     elseif tag == 'noteHitTweenY3' then
				noteTweenY('noteHitTweenY31', 6, 50, crochet / 5000, 'linear') 
		     elseif tag == 'noteHitTweenY4' then
				noteTweenY('noteHitTweenY41', 7, 50, crochet / 5000, 'linear') 
end
end
		if songName ~= "Bonetrousle" and downscroll == true then 
		     if tag == 'noteHitTweenY1' then
				noteTweenY('noteHitTweenY11', 4, 570, crochet / 5000, 'linear') 
		     elseif tag == 'noteHitTweenY2' then
				noteTweenY('noteHitTweenY21', 5, 570, crochet / 5000, 'linear') 
		     elseif tag == 'noteHitTweenY3' then
				noteTweenY('noteHitTweenY31', 6, 570, crochet / 5000, 'linear') 
		     elseif tag == 'noteHitTweenY4' then
				noteTweenY('noteHitTweenY41', 7, 570, crochet / 5000, 'linear') 
end
end
		     if tag == 'goPromptTweenAlpha1' then
                 closeCustomSubstate()
				 setProperty('Lyrics.alpha', 1)
end
end

function onEndSong()
         allowPauseScreen = false
         doTweenY('textBoxTweenY', 'textBox', 450, 0.5, 'circInOut')
	     doTweenAlpha('camHUDTweenAlpha', 'camHUD', 0, 0.1, 'linear')
	     doTweenAlpha('finalBlackweenAlpha', 'endBlack', 1, 0.1, 'linear')
	     goldRecieved = math.floor(score / 20000)
		 setDataFromSave('songData', songName, true)   
         flushSaveData('songData')
		 setDataFromSave('hasBeaten', songName, true)   
         flushSaveData('hasBeaten')
		 setPropertyFromClass("openfl.Lib", "application.window.title",'Ski Sings The Entire UNDERTALE Soundtrack!: YOU WON!')		 
	if playerLevel <= 19 then
	     XPRecievedFirst = notesHit * timeTotal
	     XPRecieved = math.floor(XPRecievedFirst / 5000)
	elseif playerLevel == 20 then
	     XPRecieved = 0
end	 
	if goldRecieved == 0 then
         goldRecieved = 1
end
	   if difficultyName ~= "Normal" then
			goldRecieved = 0
			XPRecieved = 0
end
	   if math.floor(rating * 10000) / 100 > getDataFromSave('songAccuracy', songName) then
           setDataFromSave('songAccuracy', songName, math.floor(rating * 10000) / 100)   
           flushSaveData('songAccuracy')		   
end	 
	   if getDataFromSave('songMisses', songName) > misses then
           setDataFromSave('songMisses', songName, misses)   
           flushSaveData('songMisses')		   
end	 
	   if highCombo > getDataFromSave('songCombo', songName) then
           setDataFromSave('songCombo', songName, highCombo)   
           flushSaveData('songCombo')		   
end	 
	     setDataFromSave('goldCount', 'totalGold', getDataFromSave('goldCount', 'totalGold') + goldRecieved)
		 setDataFromSave('XPCount', 'experience', getDataFromSave('XPCount', 'experience') + XPRecieved)
	     flushSaveData('goldCount')
	     flushSaveData('XPCount')
	if getDataFromSave('XPCount', 'experience') >= tonumber(levelStats[playerLevel + 1]) and playerLevel < 20 then
         hasLeveledUp = true
		 playSound('levelUp', 1, 'levelUp')
		 setDataFromSave('XPCount', 'experience', getDataFromSave('XPCount', 'experience') - tonumber(levelStats[playerLevel + 1]))
		 setDataFromSave('XPCount', 'curLevel', playerLevel + 1)
	     flushSaveData('XPCount')
end	
         return Function_Stop
end

function onTimerCompleted(tag, loops, loopsLeft)
       if tag == 'addTextTimer' then
	          textLength = textLength + 1
			  playSound('textSound', 1, 'textSound')
	   if getTextString('resultsText')  == "* YOU WON!" then
	          textLength1 = textLength1 + 1
			  playSound('textSound', 1, 'textSound')
	   if getTextString('resultsText1')  == "* You earned " .. XPRecieved .. " XP and " .. goldRecieved .. " gold." then
	          textLength2 = textLength2 + 1
			  playSound('textSound', 1, 'textSound')    		  
end
end
end
       if tag == 'blasterShootTimer' then
	          setProperty('gasterBlaster1.alpha', 0)
	          setProperty('gasterBlaster1.x', -850)
	          setProperty('gasterBlaster.alpha', 1)
			  playSound('blasterShoot', 1, 'blasterShoot')
			  playAnim('gasterBlaster', 'shoot', true)
			  cameraFlash('game', 'FFFFFF', 0.25, true)
			  setProperty('blasterBeam.alpha', 1)
			  doTweenY('blasterBeamTweenY', 'blasterBeam.scale', 20, 0.25, 'smootherStepInOut')
			  doTweenX('blasterTweenX1', 'gasterBlaster', -850, 0.25, 'smootherStepInOut')
			  doTweenX('blasterBeamTweenX', 'blasterBeam', -850, 0.25, 'smootherStepInOut')
end
       if tag == 'blueTridentTimer' then
	          setProperty('tridentBlue.alpha', 1)
	          doTweenY('blueTridentTweenY', 'tridentBlue', getProperty('boyfriend.y') + 3000, 1, 'linear')
			  playSound('throw', 1, 'throwTrident')
			  canDodgeTrident = true
end
       if tag == 'orangeTridentTimer' then
	          setProperty('tridentOrange.alpha', 1)
	          doTweenY('orangeTridentTweenY', 'tridentOrange', getProperty('boyfriend.y') + 3000, 1, 'linear')
			  playSound('throw', 1, 'throwTrident')
			  canDodgeTrident = true
			  runTimer('tridentDamageTimer', 0.5, 1)
end
       if tag == 'karmaTimer' then
			hasKarma = false
end
       if tag == 'blasterDamageTimer' then
	          curHealth = curHealth - math.floor(maxHealth / 2)  
			  hasKarma = true 
			  runTimer('karmaTimer', 3.5, 0)
              playSound('missnote' .. math.random(1, 3), 1, 'blasterDamage')
			  canDodge = false
end
       if tag == 'tridentDamageTimer' then
			  curHealth = curHealth - math.floor(maxHealth / 3)  
              playSound('missnote' .. math.random(1, 3), 1, 'tridentDamage')
			  canDodgeTrident = false
end
		 if tag == 'soulBreakTimer' then
                 setProperty('soulWhole.alpha', 0)
			     setProperty('soulBroken.alpha', 1) 
				 playSound('soulBreak', 1, 'soulBreak')
				 runTimer('addDeathTextTimer', 0.1, 0)
		 elseif tag == 'playDeathMusic' then
				 playMusic('deathMusic', 1, true)
				 doTweenY('skiDeadTweenY', 'skiDeath', 0, 2, 'circInOut')
				 doTweenZoom('camOtherTweenZoom', 'camOther', 1.05, 0.05, 'linear')
		         runTimer('deathBeatTimer', 1.44, 0)
				 doTweenAlpha('deathCountTween', 'deathCountText', 1, 0.3, 'linear')
end
       if tag == 'addDeathTextTimer' then
	          deathTextLength = deathTextLength + 1
			  playSound('asgoreSound', 1, 'asgoreTextSound')
end
       if tag == 'restartTimer' then
			  rickTime = getRandomBool('1')
			if rickTime == true then
	          loadSong("Never Gonna Ski You Up")
			else
			  restartSong()
end
end
       if tag == 'resumeSongTimer' then
	          if loopsLeft == 4 then
					playSound('intro3', 0.5, 'resumeSong3')
	          elseif loopsLeft == 3 then
					doTweenAlpha('readyPromptTweenAlpha', 'readyPrompt', 1, 0.2, 'linear')
					playSound('intro2', 0.5, 'resumeSong2')
	          elseif loopsLeft == 2 then
					doTweenAlpha('readyPromptTweenAlpha', 'readyPrompt', 0, 0.1, 'linear')
					doTweenAlpha('setPromptTweenAlpha', 'setPrompt', 1, 0.2, 'linear')
					playSound('intro1', 0.5, 'resumeSong1')
	          elseif loopsLeft == 1 then
					doTweenAlpha('setPromptTweenAlpha', 'setPrompt', 0, 0.1, 'linear')
					doTweenAlpha('goPromptTweenAlpha', 'goPrompt', 1, 0.2, 'linear')
					playSound('introGo', 0.5, 'resumeSongGo')
	          elseif loopsLeft == 0 then
			  		doTweenAlpha('goPromptTweenAlpha1', 'goPrompt', 0, 0.1, 'linear')
end
end
       if tag == 'deathBeatTimer' then
					doTweenZoom('camOtherTweenZoom', 'camOther', 1.05, 0.05, 'linear')
end
end

function onUpdatePost()
              if onResultsScreen == true then
			       setTextString('resultsText', string.sub("* YOU WON!", 1, textLength))
			       setTextString('resultsText1', string.sub("* You earned " .. XPRecieved .. " XP and " .. goldRecieved .. " gold.", 1, textLength1))
			       setTextString('resultsText2', string.sub("* Your LV increased!", 1, textLength2))
		      if keyJustPressed('accept') and getTextString('resultsText1')  == "* You earned " .. XPRecieved .. " XP and " .. goldRecieved .. " gold." and hasLeveledUp == false then
			       setPropertyFromClass("openfl.Lib", "application.window.title",'Ski Sings The Entire UNDERTALE Soundtrack!')
				   loadSong('song-menu')
		      elseif keyJustPressed('accept') and getTextString('resultsText2')  == "* Your LV increased!" and hasLeveledUp == true then
			       setPropertyFromClass("openfl.Lib", "application.window.title",'Ski Sings The Entire UNDERTALE Soundtrack!')
				   loadSong('song-menu')
end
		      if getTextString('resultsText1')  == "* You earned " .. XPRecieved .. " XP and " .. goldRecieved .. " gold." and hasLeveledUp == false then
			       cancelTimer('addTextTimer')
		      elseif getTextString('resultsText2')  == "* Your LV increased!" and hasLeveledUp == true then
			       cancelTimer('addTextTimer')
end
end
end

function onCustomSubstateUpdatePost()
		if curHealth > maxHealth then
		          curHealth = maxHealth
end
end

function onGameOver()
		return Function_Stop
end

function onCreateDeath()
		makeLuaSprite('blackScreen', 'empty', 0, 0)
		setObjectCamera('blackScreen', 'other')
		setProperty('blackScreen.alpha', 0)
		addLuaSprite('blackScreen', false)
		
		makeLuaSprite('soulWhole', 'heart', 530, 270)
		setObjectCamera('soulWhole', 'other')
		setProperty('soulWhole.antialiasing', false)
		scaleObject('soulWhole', 5, 5)
		addLuaSprite('soulWhole', false)
		setProperty('soulWhole.alpha', 0)
		
		makeLuaSprite('soulBroken', 'heartBroken', 520, 270)
		setObjectCamera('soulBroken', 'other')
		setProperty('soulBroken.antialiasing', false)
		scaleObject('soulBroken', 5, 5)
		addLuaSprite('soulBroken', false)
	    setProperty('soulBroken.alpha', 0)
		
		makeLuaText('deathText', "", 1000, 120, 550)
		setTextFont('deathText', 'mono.otf')
		setTextSize('deathText', 50)
		setObjectCamera('deathText', 'other')
	    setProperty('deathText.alpha', 0)
		addLuaText('deathText')
		
		randomDeathQuote = deathQuotes[getRandomInt(1, 5)]
end

function onDeathScreen()
		setPropertyFromClass("openfl.Lib", "application.window.title",'Ski Sings The Entire UNDERTALE Soundtrack!: GAME OVER!')
	if hasRestarted == false then
	    setTextString('deathText', string.sub(randomDeathQuote, 1, deathTextLength))
	elseif hasRestarted == true then
	    setTextString('deathText', string.sub("Stay Determined!", 1, deathTextLength))
end
	if keyJustPressed('accept') and canRestartSong == true and hasRestarted == false then
        playMusic('deathMusicEnd', 1, false)
        runTimer('restartTimer', 3, 1)
		setProperty('soulWhole.alpha', 1)
		setProperty('soulBroken.alpha', 0)
        playSound('soulBreak', 1, 'soulBreak')
		hasRestarted = true
		cancelTimer('deathBeatTimer')
		cancelTween('camOtherTweenZoom')
		cancelTween('camOtherTweenZoom1')
		doTweenZoom('camOtherTweenZoomFinal', 'camOther', 1, 0.05, 'linear')
		cancelTimer('addDeathTextTimer')
		deathTextLength = 0
		runTimer('addDeathTextTimer', 0.1, 0)
	elseif keyJustPressed('back') and canRestartSong == true and hasRestarted == false then
		setPropertyFromClass("openfl.Lib", "application.window.title",'Ski Sings The Entire UNDERTALE Soundtrack!: ')
        loadSong('song-menu')
end
	if getTextString('deathText') == randomDeathQuote and hasRestarted == false then
		cancelTimer('addDeathTextTimer')
		canRestartSong = true
	elseif getTextString('deathText') == "Stay Determined!" and hasRestarted == true then
		cancelTimer('addDeathTextTimer')
end
end

function onCustomSubstateCreate(name)
     if name == 'deathScreen' then
	 		setProperty('blackScreen.alpha', 1)
	 		setProperty('deathText.alpha', 1)
			setProperty('soulWhole.alpha', 1)
			setProperty('skiDeath.alpha', 1)
			runTimer('soulBreakTimer', 1, 1)
			runTimer('playDeathMusic', 2, 1)
			doTweenColor('soulWholeTweenColor', 'soulWhole', soulColor, 0.01, 'linear')
			doTweenColor('soulBrokenTweenColor', 'soulBroken', soulColor, 0.01, 'linear')
end
end

function onEvent(name, value1, value2)
	if difficultyName == "Normal" then
		if name == "Gaster Blaster" then
			setObjectOrder('blasterBeam', 50)
			setProperty('gasterBlaster1.alpha', 1)
			doTweenX('blasterTweenX', 'gasterBlaster1', -150, 0.75, 'smootherStepInOut')
			playSound('blasterReady', 1, 'blasterReady')
			runTimer('blasterShootTimer', 1, 1)
end
		if name == "Trident Color Attack" then
			tridentColor = getRandomBool('50')
			playSound('flash', 1, 'tridentFlash')
			canDodgeTrident = false
			setProperty('tridentOrange.y', getProperty('boyfriend.y') - 3000)
			setProperty('tridentOrange.alpha', 0)
			setProperty('tridentBlue.y', getProperty('boyfriend.y') - 3000)
			setProperty('tridentBlue.alpha', 0)
		if tridentColor == true then
			cameraFlash('hud', '0094FF', 0.5, true)
			runTimer('blueTridentTimer', 0.5, 1)
		elseif tridentColor == false then
			cameraFlash('hud', 'FF7F00', 0.5, true)
			runTimer('orangeTridentTimer', 0.5, 1)			
end
end
end
end