function onCreate()
	initSaveData('skinData', 'SkiUNDERTALE')
	
	makeLuaSprite('skinAward', 'Skin Menu/award', 880, 0)
	setObjectCamera('skinAward', 'other')
	setProperty('skinAward.alpha', 0)
	addLuaSprite('skinAward', true)
end

function onEndSong()
	if difficultyName == "Normal" then
	if songName == "Bonetrousle" then
	if getDataFromSave('skinData', 'unlockedSkin6') ~= true then
		makeLuaSprite('skinAwardNote', 'Skin Menu/Arrows/blue', 895, 10)
		setObjectCamera('skinAwardNote', 'other')
		scaleObject('skinAwardNote', 0.6, 0.6)
		setProperty('skinAwardNote.alpha', 0)
		addLuaSprite('skinAwardNote', true)
		
		setDataFromSave('skinData', 'unlockedSkin6', true)
		onGiveAward()
end
end
	if songName == "Bonetrousle" and misses == 0 then
	if getDataFromSave('skinData', 'unlockedSkin9') ~= true then
		makeLuaSprite('skinAwardNote', 'Skin Menu/Arrows/blueBone', 895, 10)
		setObjectCamera('skinAwardNote', 'other')
		scaleObject('skinAwardNote', 0.6, 0.6)
		setProperty('skinAwardNote.alpha', 0)
		addLuaSprite('skinAwardNote', true)
		
		setDataFromSave('skinData', 'unlockedSkin9', true)
		onGiveAward()
end
end
	if songName == "Good Night" then
	if getDataFromSave('skinData', 'unlockedSkin2') ~= true then
		makeLuaSprite('skinAwardNote', 'Skin Menu/Arrows/red', 895, 10)
		setObjectCamera('skinAwardNote', 'other')
		scaleObject('skinAwardNote', 0.6, 0.6)
		setProperty('skinAwardNote.alpha', 0)
		addLuaSprite('skinAwardNote', true)
		
		setDataFromSave('skinData', 'unlockedSkin2', true)
		onGiveAward()
end
end
	if songName == "Asgore" then
	if getDataFromSave('skinData', 'unlockedSkin3') ~= true then
		makeLuaSprite('skinAwardNote', 'Skin Menu/Arrows/orange', 895, 10)
		setObjectCamera('skinAwardNote', 'other')
		scaleObject('skinAwardNote', 0.6, 0.6)
		setProperty('skinAwardNote.alpha', 0)
		addLuaSprite('skinAwardNote', true)
		
		setDataFromSave('skinData', 'unlockedSkin3', true)
		onGiveAward()
end
end
	if songName == "Death By Glamour" then
	if getDataFromSave('skinData', 'unlockedSkin4') ~= true then
		makeLuaSprite('skinAwardNote', 'Skin Menu/Arrows/yellow', 895, 10)
		setObjectCamera('skinAwardNote', 'other')
		scaleObject('skinAwardNote', 0.6, 0.6)
		setProperty('skinAwardNote.alpha', 0)
		addLuaSprite('skinAwardNote', true)
		
		setDataFromSave('skinData', 'unlockedSkin4', true)
		onGiveAward()
end
end
	if songName == "Spear Of Justice" then
	if getDataFromSave('skinData', 'unlockedSkin5') ~= true then
		makeLuaSprite('skinAwardNote', 'Skin Menu/Arrows/green', 895, 10)
		setObjectCamera('skinAwardNote', 'other')
		scaleObject('skinAwardNote', 0.6, 0.6)
		setProperty('skinAwardNote.alpha', 0)
		addLuaSprite('skinAwardNote', true)
		
		setDataFromSave('skinData', 'unlockedSkin5', true)
		onGiveAward()
end
end
	if songName == "Heartache" then
	if getDataFromSave('skinData', 'unlockedSkin7') ~= true then
		makeLuaSprite('skinAwardNote', 'Skin Menu/Arrows/cyan', 895, 10)
		setObjectCamera('skinAwardNote', 'other')
		scaleObject('skinAwardNote', 0.6, 0.6)
		setProperty('skinAwardNote.alpha', 0)
		addLuaSprite('skinAwardNote', true)
		
		setDataFromSave('skinData', 'unlockedSkin7', true)
		onGiveAward()
end
end
	if songName == "Spider Dance" then
	if getDataFromSave('skinData', 'unlockedSkin8') ~= true then
		makeLuaSprite('skinAwardNote', 'Skin Menu/Arrows/purple', 895, 10)
		setObjectCamera('skinAwardNote', 'other')
		scaleObject('skinAwardNote', 0.6, 0.6)
		setProperty('skinAwardNote.alpha', 0)
		addLuaSprite('skinAwardNote', true)
		
		setDataFromSave('skinData', 'unlockedSkin8', true)
		onGiveAward()
end
end
	if songName == "Megalovania" and rating >= 0.95 then
	if getDataFromSave('skinData', 'unlockedSkin10') ~= true then
		makeLuaSprite('skinAwardNote', 'Skin Menu/Arrows/karma', 895, 10)
		setObjectCamera('skinAwardNote', 'other')
		scaleObject('skinAwardNote', 0.6, 0.6)
		setProperty('skinAwardNote.alpha', 0)
		addLuaSprite('skinAwardNote', true)
		
		setDataFromSave('skinData', 'unlockedSkin10', true)
		onGiveAward()
end
end
	if songName == "Vantablack" and misses == 0 then
	if getDataFromSave('skinData', 'unlockedSkin11') ~= true then
		makeLuaSprite('skinAwardNote', 'Skin Menu/Arrows/outline', 895, 10)
		setObjectCamera('skinAwardNote', 'other')
		scaleObject('skinAwardNote', 0.6, 0.6)
		setProperty('skinAwardNote.alpha', 0)
		addLuaSprite('skinAwardNote', true)
		
		setDataFromSave('skinData', 'unlockedSkin11', true)
		onGiveAward()
end
end
	if songName == "Hopes And Dreams" and misses == 0 then
	if getDataFromSave('skinData', 'unlockedSkin12') ~= true then
		makeLuaSprite('skinAwardNote', 'Skin Menu/Arrows/rainbow', 895, 10)
		setObjectCamera('skinAwardNote', 'other')
		scaleObject('skinAwardNote', 0.6, 0.6)
		setProperty('skinAwardNote.alpha', 0)
		addLuaSprite('skinAwardNote', true)
		
		setDataFromSave('skinData', 'unlockedSkin12', true)
		onGiveAward()
end
end
	if songName == "Mad Mew Mew" and misses == 0 then
	if getDataFromSave('skinData', 'unlockedSkin13') ~= true then
		makeLuaSprite('skinAwardNote', 'Skin Menu/Arrows/redSwitch', 895, 10)
		setObjectCamera('skinAwardNote', 'other')
		scaleObject('skinAwardNote', 0.6, 0.6)
		setProperty('skinAwardNote.alpha', 0)
		addLuaSprite('skinAwardNote', true)
		
		setDataFromSave('skinData', 'unlockedSkin13', true)
		onGiveAward()
end
end
	if songName == "Mad Mew Mew" and rating >= 0.95 then
	if getDataFromSave('skinData', 'unlockedSkin14') ~= true then
		makeLuaSprite('skinAwardNote', 'Skin Menu/Arrows/switchBlue', 895, 10)
		setObjectCamera('skinAwardNote', 'other')
		scaleObject('skinAwardNote', 0.6, 0.6)
		setProperty('skinAwardNote.alpha', 0)
		addLuaSprite('skinAwardNote', true)
		
		setDataFromSave('skinData', 'unlockedSkin14', true)
		onGiveAward()
end
end
	if songName == "Spider Dance" and misses == 0 then
	if getDataFromSave('skinData', 'unlockedSkin15') ~= true then
		makeLuaSprite('skinAwardNote', 'Skin Menu/Arrows/web', 895, 10)
		setObjectCamera('skinAwardNote', 'other')
		scaleObject('skinAwardNote', 0.6, 0.6)
		setProperty('skinAwardNote.alpha', 0)
		addLuaSprite('skinAwardNote', true)
		
		setDataFromSave('skinData', 'unlockedSkin15', true)
		onGiveAward()
end
end
	if songName == "Dogsong" and misses == 0 then
	if getDataFromSave('skinData', 'unlockedSkin16') ~= true then
		makeLuaSprite('skinAwardNote', 'Skin Menu/Arrows/white', 895, 10)
		setObjectCamera('skinAwardNote', 'other')
		scaleObject('skinAwardNote', 0.6, 0.6)
		setProperty('skinAwardNote.alpha', 0)
		addLuaSprite('skinAwardNote', true)
		
		setDataFromSave('skinData', 'unlockedSkin16', true)
		onGiveAward()
end
end
end
end

function onGiveAward()
		setProperty('skinAward.alpha', 1)
		setProperty('skinAwardNote.alpha', 1)
		runTimer('fadeAwardTimer', 1, 1)
		playSound('skinAward', 1, 'skinAward')
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'fadeAwardTimer' then
		doTweenAlpha('skinAwardTweenAlpha', 'skinAward', 0, 1, 'smootherStepInOut')
		doTweenAlpha('skinAwardNoteTweenAlpha', 'skinAwardNote', 0, 1, 'smootherStepInOut')
end
end
	