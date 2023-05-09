local canPlaySound = true
local onCurrentNote = 1
local curNoteSelected = 1
local isChangingSkin = false
local curNoteSkin1 = 1
local curNoteSkin2 = 1
local curNoteSkin3 = 1
local curNoteSkin4 = 1

local skinList = {
	'NOTE_assets', 'red', 'orange', 'yellow', 'green', 'blue', 'cyan', 'purple', 'blueBone', 
	'karma', 'outline', 'rainbow', 'redSwitch', 'switchBlue', 'web', 'white',
}

local lockedList = {
	"Already Unlocked lol", 
	"Beat 'Good Night' to unlock this skin!", 
	"Beat 'ASGORE' to unlock this skin!", 
	"Beat 'Death By Glamour' to unlock this skin!", 
	"Beat 'Spear Of Justice' to unlock this skin!", 
	"Beat 'Bonetrousle' to unlock this skin!", 
	"Beat 'Heartache' to unlock this skin!", 
	"Beat 'Spider Dance' to unlock this skin!", 
	"Beat 'Bonetrousle' without missing to unlock this skin!", 
	"Beat 'Megalovania' with 95% or above to unlock this skin!", 
	"Beat 'Vantablack' without missing to unlock this skin!", 
	"Beat 'Hopes And Dreams' without missing to unlock this skin!", 
	"Beat 'Mad Mew Mew!!' without missing to unlock this skin!", 
	"Beat 'Mad Mew Mew!!' with 95% Accuracy or above to unlock this skin!", 
	"Beat 'Spider Dance' without missing to unlock this skin!", 
	"Beat 'Dogsong' without missing to unlock this skin!", 
}

function onStartCountdown()
	return Function_Stop
end

function onCreate()
	setPropertyFromClass('flixel.FlxG', 'mouse.visible', true)
	playMusic('menuMusic', 1, true)
	initSaveData('skinData', 'SkiUNDERTALE')
	
	curNoteSkin1 = getDataFromSave('skinData', 'skin1Int')
	curNoteSkin2 = getDataFromSave('skinData', 'skin2Int')
	curNoteSkin3 = getDataFromSave('skinData', 'skin3Int')
	curNoteSkin4 = getDataFromSave('skinData', 'skin4Int')

	makeLuaSprite('BG', 'Skin Menu/BG', 0, 0)
	setObjectCamera('BG', 'other')
	addLuaSprite('BG', false)

	makeLuaSprite('box', 'Skin Menu/box', 0, 0)
	setObjectCamera('box', 'other')
	addLuaSprite('box', false)	
	
	makeLuaSprite('arrowUI', 'Skin Menu/arrowUI', 0, 0)
	setObjectCamera('arrowUI', 'other')
	addLuaSprite('arrowUI', false)	
	
	makeLuaSprite('note1', 'Skin Menu/Arrows/' .. skinList[curNoteSkin1], 110, 320)
	setObjectCamera('note1', 'other')
	setProperty('note1.angle', 90)
	addLuaSprite('note1', false)	
		
	makeLuaSprite('note2', 'Skin Menu/Arrows/' .. skinList[curNoteSkin2], 410, 320)
	setObjectCamera('note2', 'other')
	setProperty('note2.angle', 0)
	addLuaSprite('note2', false)	
	
	makeLuaSprite('note3', 'Skin Menu/Arrows/' .. skinList[curNoteSkin3], 710, 320)
	setObjectCamera('note3', 'other')
	setProperty('note3.angle', 180)
	addLuaSprite('note3', false)	
	
	makeLuaSprite('note4', 'Skin Menu/Arrows/' .. skinList[curNoteSkin4], 1010, 320)
	setObjectCamera('note4', 'other')
	setProperty('note4.angle', 270)
	addLuaSprite('note4', false)
	
	makeLuaSprite('arrowDown', 'Skin Menu/arrow', 170, 600)
	setObjectCamera('arrowDown', 'other')
	setProperty('arrowDown.angle', -90)
	setProperty('arrowDown.alpha', 0)
	addLuaSprite('arrowDown', false)
	
	makeLuaSprite('arrowUp', 'Skin Menu/arrow', 170, 150)
	setObjectCamera('arrowUp', 'other')
	setProperty('arrowUp.angle', -270)
	setProperty('arrowUp.alpha', 0)
	addLuaSprite('arrowUp', false)

	makeLuaText('boxText', "Select A Note To Customize!", 1500, -100, 40)
	setTextFont('boxText', 'sans.otf')
	setTextSize('boxText', 50)
	setObjectCamera('boxText', 'other')
	addLuaText('boxText')
	
	makeLuaText('lockedText', 	"", 1500, -125, 650)
	setTextFont('lockedText', 'sans.otf')
	setTextSize('lockedText', 35)
	setObjectCamera('lockedText', 'other')
	setTextBorder('lockedText', 3, '000000')
	setProperty('lockedText.alpha', 0)
	addLuaText('lockedText')
end

function onUpdate()
	if keyboardJustPressed('ESCAPE') then
		if isChangingSkin == true then
		if getDataFromSave('skinData', 'unlockedSkin' .. curNoteSkin1) == true and getDataFromSave('skinData', 'unlockedSkin' .. curNoteSkin2) == true and getDataFromSave('skinData', 'unlockedSkin' .. curNoteSkin3) == true and getDataFromSave('skinData', 'unlockedSkin' .. curNoteSkin4) == true then  
			isChangingSkin = false
			playSound('confirmMenu', 1, 'confirm')
			doTweenAlpha('skinTweenAlpha1', 'note1', 1, 0.2, 'smootherStepInOut') 
			doTweenAlpha('skinTweenAlpha2', 'note2', 1, 0.2, 'smootherStepInOut') 
			doTweenAlpha('skinTweenAlpha3', 'note3', 1, 0.2, 'smootherStepInOut') 
			doTweenAlpha('skinTweenAlpha4', 'note4', 1, 0.2, 'smootherStepInOut')
			doTweenX('mouseNoteTween1X', 'note1.scale', 1, 0.1, 'linear')
			doTweenY('mouseNoteTween1Y', 'note1.scale', 1, 0.1, 'linear')
			doTweenX('mouseNoteTween2X', 'note2.scale', 1, 0.1, 'linear')
			doTweenY('mouseNoteTween2Y', 'note2.scale', 1, 0.1, 'linear')
			doTweenX('mouseNoteTween3X', 'note3.scale', 1, 0.1, 'linear')
			doTweenY('mouseNoteTween3Y', 'note3.scale', 1, 0.1, 'linear')
			doTweenX('mouseNoteTween4X', 'note4.scale', 1, 0.1, 'linear')
			doTweenY('mouseNoteTween4Y', 'note4.scale', 1, 0.1, 'linear')
			doTweenAlpha('arrowUpTweenAlpha1', 'arrowUp', 0, 0.2, 'smootherStepInOut') 
			doTweenAlpha('arrowDownTweenAlpha1', 'arrowDown', 0, 0.2, 'smootherStepInOut')
			setDataFromSave('skinData', 'skin1', skinList[curNoteSkin1])
			setDataFromSave('skinData', 'skin2', skinList[curNoteSkin2])
			setDataFromSave('skinData', 'skin3', skinList[curNoteSkin3])
			setDataFromSave('skinData', 'skin4', skinList[curNoteSkin4])
			setDataFromSave('skinData', 'skin1Int', curNoteSkin1)
			setDataFromSave('skinData', 'skin2Int', curNoteSkin2)
			setDataFromSave('skinData', 'skin3Int', curNoteSkin3)
			setDataFromSave('skinData', 'skin4Int', curNoteSkin4)
			flushSaveData('skinData')
		else
			playSound('nope', 1, 'nope')
			setProperty('lockedText.alpha', 1)
			doTweenAlpha('lockedTextTweenAlpha', 'lockedText', 0, 1, 'smootherStepInOut')
		if curNoteSelected == 1 then
			setTextString('lockedText', lockedList[curNoteSkin1])
		elseif curNoteSelected == 2 then
			setTextString('lockedText', lockedList[curNoteSkin2])
		elseif curNoteSelected == 3 then
			setTextString('lockedText', lockedList[curNoteSkin3])
		elseif curNoteSelected == 4 then
			setTextString('lockedText', lockedList[curNoteSkin4])
end
end
		else
			setPropertyFromClass('flixel.FlxG', 'mouse.visible', false)
			exitSong()
end
end
	if isChangingSkin == true then
		if keyJustPressed('down') then
		if curNoteSelected == 1 and curNoteSkin1 < 16 then
			curNoteSkin1 = curNoteSkin1 + 1
			playSound('selectSound', 1, 'selectSound')
			doTweenY('arrowDownTween1', 'arrowDown', 610, 0.1, 'linear')
		elseif curNoteSelected == 2 and curNoteSkin2 < 16 then
			curNoteSkin2 = curNoteSkin2 + 1
			playSound('selectSound', 1, 'selectSound')
			doTweenY('arrowDownTween1', 'arrowDown', 610, 0.1, 'linear')
		elseif curNoteSelected == 3 and curNoteSkin3 < 16 then
			curNoteSkin3 = curNoteSkin3 + 1
			playSound('selectSound', 1, 'selectSound')
			doTweenY('arrowDownTween1', 'arrowDown', 610, 0.1, 'linear')
		elseif curNoteSelected == 4 and curNoteSkin4 < 16 then
			curNoteSkin4 = curNoteSkin4 + 1
			playSound('selectSound', 1, 'selectSound')
			doTweenY('arrowDownTween1', 'arrowDown', 610, 0.1, 'linear')
end
end			
		if keyJustPressed('up') then
		if curNoteSelected == 1 and curNoteSkin1 > 1 then
			curNoteSkin1 = curNoteSkin1 - 1
			playSound('selectSound', 1, 'selectSound')
			doTweenY('arrowUpTween1', 'arrowUp', 140, 0.1, 'linear')
		elseif curNoteSelected == 2 and curNoteSkin2 > 1 then
			curNoteSkin2 = curNoteSkin2 - 1
			playSound('selectSound', 1, 'selectSound')
			doTweenY('arrowUpTween1', 'arrowUp', 140, 0.1, 'linear')
		elseif curNoteSelected == 3 and curNoteSkin3 > 1 then
			curNoteSkin3 = curNoteSkin3 - 1
			playSound('selectSound', 1, 'selectSound')
			doTweenY('arrowUpTween1', 'arrowUp', 140, 0.1, 'linear')
		elseif curNoteSelected == 4 and curNoteSkin4 > 1 then
			curNoteSkin4 = curNoteSkin4 - 1
			playSound('selectSound', 1, 'selectSound')
			doTweenY('arrowUpTween1', 'arrowUp', 140, 0.1, 'linear')
end
end		
end
	if isChangingSkin == false then
		if getMouseX('other') >= 110 and getMouseX('other') <= 269 and getMouseY('other') >= 320 and getMouseY('other') <= 480 then
			doTweenX('mouseNoteTween1X', 'note1.scale', 1.25, 0.1, 'linear')
			doTweenY('mouseNoteTween1Y', 'note1.scale', 1.25, 0.1, 'linear')
			onSelectSound()
			onCurrentNote = 1
		elseif getMouseX('other') >= 410 and getMouseX('other') <= 569 and getMouseY('other') >= 320 and getMouseY('other') <= 480 then
			doTweenX('mouseNoteTween2X', 'note2.scale', 1.25, 0.1, 'linear')
			doTweenY('mouseNoteTween2Y', 'note2.scale', 1.25, 0.1, 'linear')
			onSelectSound()
			onCurrentNote = 2
		elseif getMouseX('other') >= 710 and getMouseX('other') <= 869 and getMouseY('other') >= 320 and getMouseY('other') <= 480 then
			doTweenX('mouseNoteTween3X', 'note3.scale', 1.25, 0.1, 'linear')
			doTweenY('mouseNoteTween3Y', 'note3.scale', 1.25, 0.1, 'linear')
			onSelectSound()
			onCurrentNote = 3
		elseif getMouseX('other') >= 1010 and getMouseX('other') <= 1169 and getMouseY('other') >= 320 and getMouseY('other') <= 480 then
			doTweenX('mouseNoteTween4X', 'note4.scale', 1.25, 0.1, 'linear')
			doTweenY('mouseNoteTween4Y', 'note4.scale', 1.25, 0.1, 'linear')
			onSelectSound()
			onCurrentNote = 4
		else
			doTweenX('mouseNoteTween1X', 'note1.scale', 1, 0.1, 'linear')
			doTweenY('mouseNoteTween1Y', 'note1.scale', 1, 0.1, 'linear')
			doTweenX('mouseNoteTween2X', 'note2.scale', 1, 0.1, 'linear')
			doTweenY('mouseNoteTween2Y', 'note2.scale', 1, 0.1, 'linear')
			doTweenX('mouseNoteTween3X', 'note3.scale', 1, 0.1, 'linear')
			doTweenY('mouseNoteTween3Y', 'note3.scale', 1, 0.1, 'linear')
			doTweenX('mouseNoteTween4X', 'note4.scale', 1, 0.1, 'linear')
			doTweenY('mouseNoteTween4Y', 'note4.scale', 1, 0.1, 'linear')
			canPlaySound = true
			onCurrentNote = 0
end
end
end

function onSelectSound()
	if canPlaySound == true then
		playSound('selectSound', 1, 'selectSound')
		canPlaySound = false
end
end

function onUpdatePost()
		if mouseClicked() and onCurrentNote ~= 0 and isChangingSkin == false then
				playSound('confirmMenu', 1, 'confirm')
				isChangingSkin = true
				doTweenAlpha('arrowUpTweenAlpha', 'arrowUp', 1, 0.2, 'smootherStepInOut') 
				doTweenAlpha('arrowDownTweenAlpha', 'arrowDown', 1, 0.2, 'smootherStepInOut')
				curNoteSelected = onCurrentNote
			if curNoteSelected == 1 then
				doTweenAlpha('skinTweenAlpha1', 'note1', 1, 0.2, 'smootherStepInOut') 
				doTweenAlpha('skinTweenAlpha2', 'note2', 0.25, 0.2, 'smootherStepInOut') 
				doTweenAlpha('skinTweenAlpha3', 'note3', 0.25, 0.2, 'smootherStepInOut') 
				doTweenAlpha('skinTweenAlpha4', 'note4', 0.25, 0.2, 'smootherStepInOut')
				setProperty('arrowDown.x', 180)				
				setProperty('arrowUp.x', 180)				
			elseif curNoteSelected == 2 then
				doTweenAlpha('skinTweenAlpha1', 'note1', 0.25, 0.2, 'smootherStepInOut') 
				doTweenAlpha('skinTweenAlpha2', 'note2', 1, 0.2, 'smootherStepInOut') 
				doTweenAlpha('skinTweenAlpha3', 'note3', 0.25, 0.2, 'smootherStepInOut') 
				doTweenAlpha('skinTweenAlpha4', 'note4', 0.25, 0.2, 'smootherStepInOut')
				setProperty('arrowDown.x', 470)				
				setProperty('arrowUp.x', 470)								
			elseif curNoteSelected == 3 then
				doTweenAlpha('skinTweenAlpha1', 'note1', 0.25, 0.2, 'smootherStepInOut') 
				doTweenAlpha('skinTweenAlpha2', 'note2', 0.25, 0.2, 'smootherStepInOut') 
				doTweenAlpha('skinTweenAlpha3', 'note3', 1, 0.2, 'smootherStepInOut') 
				doTweenAlpha('skinTweenAlpha4', 'note4', 0.25, 0.2, 'smootherStepInOut')
				setProperty('arrowDown.x', 760)				
				setProperty('arrowUp.x', 760)	
			elseif curNoteSelected == 4 then
				doTweenAlpha('skinTweenAlpha1', 'note1', 0.25, 0.2, 'smootherStepInOut') 
				doTweenAlpha('skinTweenAlpha2', 'note2', 0.25, 0.2, 'smootherStepInOut') 
				doTweenAlpha('skinTweenAlpha3', 'note3', 0.25, 0.2, 'smootherStepInOut') 
				doTweenAlpha('skinTweenAlpha4', 'note4', 1, 0.2, 'smootherStepInOut')
				setProperty('arrowDown.x', 1050)				
				setProperty('arrowUp.x', 1050)	 				
end
end
	if isChangingSkin == true then
		if curNoteSelected == 1 then
		if getDataFromSave('skinData', 'unlockedSkin' .. curNoteSkin1) == true then 
			makeLuaSprite('note1', 'Skin Menu/Arrows/' .. skinList[curNoteSkin1], 110, 320)
			setObjectCamera('note1', 'other')
			setProperty('note1.angle', 90)
			addLuaSprite('note1', false)
		else
			makeLuaSprite('note1', 'Skin Menu/Arrows/locked', 110, 320)
			setObjectCamera('note1', 'other')
			addLuaSprite('note1', false)
end
		elseif curNoteSelected == 2 then
		if getDataFromSave('skinData', 'unlockedSkin' .. curNoteSkin2) == true then 		
			makeLuaSprite('note2', 'Skin Menu/Arrows/' .. skinList[curNoteSkin2], 410, 320)
			setObjectCamera('note2', 'other')
			setProperty('note2.angle', 0)
			addLuaSprite('note2', false)
		else
			makeLuaSprite('note2', 'Skin Menu/Arrows/locked', 410, 320)
			setObjectCamera('note2', 'other')
			addLuaSprite('note2', false)
end
		elseif curNoteSelected == 3 then
		if getDataFromSave('skinData', 'unlockedSkin' .. curNoteSkin3) == true then 	
			makeLuaSprite('note3', 'Skin Menu/Arrows/' .. skinList[curNoteSkin3], 710, 320)
			setObjectCamera('note3', 'other')
			setProperty('note3.angle', 180)
			addLuaSprite('note3', false)
		else
			makeLuaSprite('note3', 'Skin Menu/Arrows/locked', 710, 320)
			setObjectCamera('note3', 'other')
			addLuaSprite('note3', false)
end
		elseif curNoteSelected == 4 then
		if getDataFromSave('skinData', 'unlockedSkin' .. curNoteSkin4) == true then 
			makeLuaSprite('note4', 'Skin Menu/Arrows/' .. skinList[curNoteSkin4], 1010, 320)
			setObjectCamera('note4', 'other')
			setProperty('note4.angle', 270)
			addLuaSprite('note4', false)
		else
			makeLuaSprite('note4', 'Skin Menu/Arrows/locked', 1010, 320)
			setObjectCamera('note4', 'other')
			addLuaSprite('note4', false)
end
end
end
end

function onTweenCompleted(tag)
	if tag == 'arrowUpTween1' then
		doTweenY('arrowUpTween2', 'arrowUp', 150, 0.1, 'linear') 
end
	if tag == 'arrowDownTween1' then
		doTweenY('arrowDownTween2', 'arrowDown', 600, 0.1, 'linear') 
end
end