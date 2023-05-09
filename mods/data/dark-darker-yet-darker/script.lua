local songLetters =  {"D","A","R","K","E","Y","T"}
local isTrans = false 

function onCreate()
	setProperty('ratingsData[0].image', 'Wing Ratings/sick')
	setProperty('ratingsData[1].image', 'Wing Ratings/good')
	setProperty('ratingsData[2].image', 'Wing Ratings/bad')
	setProperty('ratingsData[3].image', 'Wing Ratings/shit')
	
	windowX = getPropertyFromClass("openfl.Lib", "application.window.x")
	width1 = math.floor(getPropertyFromClass("openfl.Lib", "application.window.width") / 4)
	height1 = getPropertyFromClass("openfl.Lib", "application.window.height")
end

function onUpdate()
	setTextString('timeText', getRandomInt(1, 99) .. " : " .. getRandomInt(1, 99))
	setTextFont('timeText', 'Wing.ttf')
	setTextString('levelText', "LV " .. getRandomInt(1, 20))
	setTextFont('levelText', 'Wing.ttf')
	setTextString('healthText', getRandomInt(1, 99) .. " / " .. getRandomInt(1, 99))
	setTextFont('healthText', 'Wing.ttf')
	setTextString('accText', getRandomInt(1, 99) .. '.' .. getRandomInt(1, 99) .. '%')
	setTextFont('accText', 'Wing.ttf')	
	setTextString('songNameText', songLetters[getRandomInt(1, 7)] .. songLetters[getRandomInt(1, 7)] .. songLetters[getRandomInt(1, 7)] .. songLetters[getRandomInt(1, 7)] .. " " .. songLetters[getRandomInt(1, 7)] .. songLetters[getRandomInt(1, 7)] .. songLetters[getRandomInt(1, 7)] .. songLetters[getRandomInt(1, 7)] .. songLetters[getRandomInt(1, 7)] .. songLetters[getRandomInt(1, 7)] .. " " .. songLetters[getRandomInt(1, 7)] .. songLetters[getRandomInt(1, 7)] .. songLetters[getRandomInt(1, 7)] .. " " .. songLetters[getRandomInt(1, 7)] .. songLetters[getRandomInt(1, 7)] .. songLetters[getRandomInt(1, 7)] .. songLetters[getRandomInt(1, 7)] .. songLetters[getRandomInt(1, 7)] .. songLetters[getRandomInt(1, 7)])
	setTextFont('songNameText', 'Wing.ttf')
end

function onGameOver()
	os.exit()
end

function onUpdatePost()
	if isTrans == false then
		setProperty('room.alpha', 1)
		setProperty('newHealth.alpha', 1)
		setProperty('healthRed.alpha', 1)
		setProperty('healthYellow.alpha', 1)
		setProperty('healthPurple.alpha', 0)
		setProperty('accText.alpha', 1)
		setProperty('healthText.alpha', 1)
		setProperty('levelText.alpha', 1)
		setProperty('timeText.alpha', 1)
		setProperty('songNameText.alpha', 1)
		setProperty('timeButton.alpha', 1)
		setProperty('timeBar.alpha', 1)
		setProperty('timeBarBG.alpha', 1)
		setProperty('showRating', true)
		setProperty('showComboNum', true)
	elseif isTrans == true then
		setProperty('room.alpha', 0)
		setProperty('newHealth.alpha', 0)
		setProperty('healthRed.alpha', 0)
		setProperty('healthYellow.alpha', 0)
		setProperty('healthPurple.alpha', 0)
		setProperty('accText.alpha', 0)
		setProperty('healthText.alpha', 0)
		setProperty('levelText.alpha', 0)
		setProperty('timeText.alpha', 0)
		setProperty('songNameText.alpha', 0)
		setProperty('timeButton.alpha', 0)
		setProperty('timeBar.alpha', 0)
		setProperty('timeBarBG.alpha', 0)
		setProperty('showRating', false)
		setProperty('showComboNum', false)		
		setProperty('camGame.angle', 0)		
end
end

function onStepHit()
	if curStep == 384 then
		isTrans = true
	elseif curStep == 640 then
		isTrans = false
	elseif curStep == 1120 then
		isTrans = true
	elseif curStep == 1248 then
		isTrans = false
	elseif curStep == 1391 then
	     setDataFromSave('hasBeaten', songName, true)   
         flushSaveData('hasBeaten')
		 os.exit()
end
	if curStep == 112 then
		setPropertyFromClass("openfl.Lib", "application.window.x", 10000)
	elseif curStep == 114 then
		setPropertyFromClass("openfl.Lib", "application.window.x", windowX)
	elseif curStep == 116 then
		setPropertyFromClass("openfl.Lib", "application.window.x", 10000)
	elseif curStep == 118 then
		setPropertyFromClass("openfl.Lib", "application.window.x", windowX)
	elseif curStep == 120 then
		setPropertyFromClass("openfl.Lib", "application.window.x", 10000)
	elseif curStep == 122 then
		setPropertyFromClass("openfl.Lib", "application.window.x", windowX)
	elseif curStep == 124 then
		setPropertyFromClass("openfl.Lib", "application.window.x", 10000)
	elseif curStep == 126 then
		setPropertyFromClass("openfl.Lib", "application.window.x", windowX)
end
end

function onEvent(name, value1, value2)
   if name == "Random Window" then
   if difficultyName == "Normal" then
   		   setPropertyFromClass("openfl.Lib", "application.window.y", getRandomInt(0, 500))
   		   setPropertyFromClass("openfl.Lib", "application.window.x", getRandomInt(0, 500))
		   setPropertyFromClass("openfl.Lib", "application.window.width", getRandomInt(640, 1280))
   		   setPropertyFromClass("openfl.Lib", "application.window.height", getRandomInt(360, 720))
		   triggerEvent('Change Scroll Speed', getRandomFloat(0.5, 1.5), '0.000001')
		   noteTweenX('gasterTween1', 4, getRandomInt(0, width1), 0.0001, 'linear') 
		   noteTweenX('gasterTween2', 5, getRandomInt(width1, width1 * 2), 0.0001, 'linear') 
		   noteTweenX('gasterTween3', 6, getRandomInt(width1 * 2, width1 * 3), 0.0001, 'linear') 
		   noteTweenX('gasterTween4', 7, getRandomInt(width1 * 3, width1 * 4), 0.0001, 'linear') 	   
		   noteTweenAngle('gasterTween12', 4, getRandomInt(0, 360), 0.0001, 'linear') 
		   noteTweenAngle('gasterTween22', 5, getRandomInt(0, 360), 0.0001, 'linear') 
		   noteTweenAngle('gasterTween32', 6, getRandomInt(0, 360), 0.0001, 'linear') 
		   noteTweenAngle('gasterTween42', 7, getRandomInt(0, 360), 0.0001, 'linear')		   
end
		if isTrans == false then
			setProperty('camGame.angle', getRandomInt(0, 360))
end
end
end
