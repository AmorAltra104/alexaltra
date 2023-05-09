local awardGiven = 0
local hasUnlockedAward = false
local songHasEnded = false

function onCreate()
			initSaveData('awardData', 'SkiUNDERTALE')
			initSaveData('XPCount', 'SkiUNDERTALE')
			initSaveData('goldCount', 'SkiUNDERTALE')			
			curMonth = os.date('*t')   
end

function onCreatePost()
		if songName == 'Wrong Number' then	
		if getDataFromSave('awardData', 'award20') == 'award20' then
			setDataFromSave('awardData', 'award20', true)
			flushSaveData('awardData')
			awardGiven = 20
			hasUnlockedAward = true
end
end
		if songName == 'Never Gonna Ski You Up' then	
		if getDataFromSave('awardData', 'award15') == 'award15' then
			setDataFromSave('awardData', 'award15', true)
			flushSaveData('awardData')
			awardGiven = 15
			hasUnlockedAward = true
end
end
		if songName == "Hyperlink (Reloaded)" then	
		if getDataFromSave('awardData', 'award16') == 'award16' then
			setDataFromSave('awardData', 'award16', true)
			flushSaveData('awardData')
			awardGiven = 16
			hasUnlockedAward = true
end
end
		if songName == "Dark Darker Yet Darker" then	
		if getDataFromSave('awardData', 'award17') == 'award17' then
			setDataFromSave('awardData', 'award17', true)
			flushSaveData('awardData')
			awardGiven = 17
			hasUnlockedAward = true
end
end
		if songName == "Dance Of Dog" then	
		if getDataFromSave('awardData', 'award18') == 'award18' then
			setDataFromSave('awardData', 'award18', true)
			flushSaveData('awardData')
			awardGiven = 18
			hasUnlockedAward = true
end
end
		if songName == "Room Of Dog" then	
		if getDataFromSave('awardData', 'award19') == 'award19' then
			setDataFromSave('awardData', 'award19', true)
			flushSaveData('awardData')
			awardGiven = 19
			hasUnlockedAward = true
end
end
		if songName == "Wrong Enemy" and curMonth.month == 10 and curMonth.day == 10 and curMonth.hour == 20 then	
		if getDataFromSave('awardData', 'award12') == 'award12' then
			setDataFromSave('awardData', 'award12', true)
			flushSaveData('awardData')
			awardGiven = 12
			hasUnlockedAward = true
end
end
end

function onCountdownTick(counter)
	if counter == 0 and hasUnlockedAward == true then
		onGiveAward()
end
end

function onUpdate()
		if songHasEnded == true then
			if getDataFromSave('awardData', 'award5') == 'award5' then
				if getDataFromSave('XPCount', 'curLevel') == 10 then
							setDataFromSave('awardData', 'award5', true)
							flushSaveData('awardData')
							awardGiven = 5
							hasUnlockedAward = true
							onGiveAward()
end
end
			if getDataFromSave('awardData', 'award6') == 'award6' then
				if getDataFromSave('XPCount', 'curLevel') == 20 then
							setDataFromSave('awardData', 'award6', true)
							flushSaveData('awardData')
							awardGiven = 6
							hasUnlockedAward = true
							onGiveAward()
end
end
			if getDataFromSave('awardData', 'award7') == 'award7' then
				if getDataFromSave('goldCount', 'totalGold') >= 1000 then
							setDataFromSave('awardData', 'award7', true)
							flushSaveData('awardData')
							awardGiven = 7
							hasUnlockedAward = true
							onGiveAward()
end
end
			if getDataFromSave('awardData', 'award11') == 'award11' then
				if songName == 'Thundersnail' and rating == 1 then
							setDataFromSave('awardData', 'award11', true)
							flushSaveData('awardData')
							awardGiven = 11
							hasUnlockedAward = true
							onGiveAward()
end
end
			if getDataFromSave('awardData', 'award14') == 'award14' then
				if songName == 'Megalovania' and misses == 0 then
							setDataFromSave('awardData', 'award14', true)
							flushSaveData('awardData')
							awardGiven = 14
							hasUnlockedAward = true
							onGiveAward()
end
end
end
end

function onEndSong()
		songHasEnded = true
end

function onGiveAward()
			makeLuaSprite('awardBox', 'Awards/box', 0, 0)
			setObjectCamera('awardBox', 'other')
			setProperty('awardBox.alpha', 0)
			addLuaSprite('awardBox', true)		

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

function onGameOver()
		if songName == 'Determination' then
			if getDataFromSave('awardData', 'award10') == 'award10' then
							setDataFromSave('awardData', 'award10', true)
							flushSaveData('awardData')
							awardGiven = 10
							hasUnlockedAward = true
							onGiveAward()
end
end
end
							
			
		