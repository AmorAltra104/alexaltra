local curElevatorSeconds = 0
local curElevatorMinutes = 0
local curElevatorHours = 0
local awardGiven = 0

function onCreate()
	initSaveData('awardData', 'SkiUNDERTALE')
			
	makeLuaSprite('room', 'elevator', 0, 0)
    setProperty('room.antialiasing', false)
	scaleObject('room', 10, 10)
	addLuaSprite('room', false)
	
	makeLuaSprite('black', 'empty', 310, 1250)
	scaleObject('black', 0.2, 0.2)
	addLuaSprite('black', true)
	
	makeLuaSprite('black1', 'empty', 630, 1250)
	scaleObject('black1', 0.2, 0.2)
	addLuaSprite('black1', true)
	
	playMusic('elevator', 0.5, true)
	setProperty('camHUD.alpha', 0)
	runTimer('exitTimer', 30, 1)
	
	makeLuaText('exitText', "Press ESCAPE to end the ELEVATOR ride.", 1000, 275, 650)
	setTextFont('exitText', 'sans.otf')
	setTextSize('exitText', 40)
	setTextAlignment('exitText', 'left')
	setObjectCamera('exitText', 'other')
	setTextBorder('exitText', 4, '000000')
	setProperty('exitText.alpha', 0)
	addLuaText('exitText')
	
	 makeLuaText('secondsText', "HEEEEEEELLLPPP", 1000, -100, 100)
	 setTextFont('secondsText', 'mars.ttf')
	 setTextSize('secondsText', 20)
	 setTextBorder('secondsText', 4, '000000')
	 setObjectCamera('secondsText', 'other')
	 addLuaText('secondsText')
	 
	 makeLuaText('minutesText', "HEEEEEEELLLPPP", 1000, -250, 100)
	 setTextFont('minutesText', 'mars.ttf')
	 setTextSize('minutesText', 20)
	 setTextBorder('minutesText', 4, '000000')
	 setObjectCamera('minutesText', 'other')
	 addLuaText('minutesText')

	 makeLuaText('hoursText', "HEEEEEEELLLPPP", 1000, -400, 100)
	 setTextFont('hoursText', 'mars.ttf')
	 setTextSize('hoursText', 20)
	 setTextBorder('hoursText', 4, '000000')
	 setObjectCamera('hoursText', 'other')
	 addLuaText('hoursText')	 
	 
	 makeLuaText('songNameText1', "Long Elevator", 1000, -265, 20)
	 setTextFont('songNameText1', 'mars.ttf')
	 setTextSize('songNameText1', 20)
	 setTextBorder('songNameText1', 4, '000000')
	 setObjectCamera('songNameText1', 'other')	 
	 addLuaText('songNameText1')
	 
	 runTimer('elevatorTotalTime', 1, 0)
end

function onStartCountdown()
		return Function_Stop
end

function onUpdate()
		if keyboardJustPressed('ESCAPE') then
		        doTweenX('doorTweenX1', 'black', 110, 0.5, 'linear')
				doTweenX('doorTweenX2', 'black1', 830, 0.5, 'linear')
				playMusic('ksnsndjsn', 0.5, true)
				playSound('elevatorSound', 1, 'doorOpen')
				removeLuaText('exitText', true)
				runTimer('endTimer', 2, 1)
				cancelTimer('elevatorTotalTime')
end
		if keyJustPressed('right') then
				characterPlayAnim('boyfriend', 'singRIGHT', true)
				playSound('ski' .. getRandomInt(1, 2), 1, 'skiSound')
		elseif keyJustPressed('up') then
				characterPlayAnim('boyfriend', 'singUP', true)
				playSound('ski' .. getRandomInt(3, 4), 1, 'skiSound')
		elseif keyJustPressed('down') then
				characterPlayAnim('boyfriend', 'singDOWN', true)
				playSound('ski' .. getRandomInt(5, 6), 1, 'skiSound')
		elseif keyJustPressed('left') then
				characterPlayAnim('boyfriend', 'singLEFT', true)
				playSound('ski' .. getRandomInt(7, 8), 1, 'skiSound')
		elseif keyJustPressed('space') then
				characterPlayAnim('boyfriend', 'hey', true)
				playSound('skiTrumpet', 1, 'skiSound')
end
	if curElevatorSeconds <= 9 then
		setTextString('secondsText', "0" .. curElevatorSeconds .. " SECS")
	else
		setTextString('secondsText', curElevatorSeconds .. " SECS")
end
	if curElevatorMinutes <= 9 then
		setTextString('minutesText', "0" .. curElevatorMinutes .. " MINS")
	else
		setTextString('minutesText', curElevatorMinutes .. " MINS")
end
	if curElevatorHours <= 9 then
		setTextString('hoursText', "0" .. curElevatorHours .. " HRS")
	else
		setTextString('hoursText', curElevatorHours .. " HRS")
end
			if getDataFromSave('awardData', 'award13') == 'award13' then
				if curElevatorHours == 1 then
							setDataFromSave('awardData', 'award13', true)
							flushSaveData('awardData')
							awardGiven = 13
							onGiveAward()
end
end
end

function onUpdatePost()
	if curElevatorSeconds >= 60 then
		curElevatorSeconds = 0
		curElevatorMinutes = curElevatorMinutes + 1
end
	if curElevatorMinutes >= 60 then
		curElevatorMinutes = 0
		curElevatorHours = curElevatorHours + 1
end
end

function onSoundFinished(tag)
		if tag == 'skiSound' then
				characterPlayAnim('boyfriend', 'idle', true)
end
end

function onTimerCompleted(tag, loops, loopsLeft)
		if tag == 'exitTimer' then
			doTweenAlpha('exitTextTweenAlpha', 'exitText', 1, 2, 'linear')
		elseif tag == 'endTimer' then
			loadSong('song-menu')
end
	if tag == 'elevatorTotalTime' then
		curElevatorSeconds = curElevatorSeconds + 1
end
end

function onGiveAward()
			makeLuaSprite('awardIcon', 'Awards/Icons/' .. awardGiven, 12, 162)
			setObjectCamera('awardIcon', 'other')
			setProperty('awardIcon.alpha', 0)
			addLuaSprite('awardIcon', true)

			playSound('awardSound', 1, 'award')
			setProperty('awardBox.alpha', 1)
			setProperty('awardBox.y', 150)
			setProperty('awardIcon.alpha', 1)
			runTimer('awardTimer', 1, 1)
end
			  
	         

		          