function onCreate()
	wrongChance = getRandomBool('5')
	
	makeLuaSprite('skiWhat', 'skiWhat', getProperty('boyfriend.x') + 85, getProperty('boyfriend.y') - 65)
	setProperty('skiWhat.alpha', 0) 
	addLuaSprite('skiWhat', true)
	
	makeLuaSprite('skiPhone', 'skiPhone', getProperty('boyfriend.x') + 85, getProperty('boyfriend.y') - 65)
	setProperty('skiPhone.alpha', 0) 
	addLuaSprite('skiPhone', true)
	
	makeLuaSprite('skiHold', 'skiHold', getProperty('boyfriend.x') + 85, getProperty('boyfriend.y') - 65)
	setProperty('skiHold.alpha', 0) 
	addLuaSprite('skiHold', true)
end

function onStartCountdown()
	if wrongChance == true then
		playSound('phone', 1, 'phoneCall')
		runTimer('phoneTimer', 1.5, 3)
		runTimer('callTimer', 4.5, 1)
		return Function_Stop
end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'phoneTimer' then
	if loopsLeft == 2 then
		setProperty('boyfriend.alpha', 0)
		setProperty('skiWhat.alpha', 1)
	elseif loopsLeft == 1 then
		setProperty('skiWhat.alpha', 0)	
		setProperty('skiPhone.alpha', 1)	
	elseif loopsLeft == 0 then
		setProperty('skiPhone.alpha', 0)	
		setProperty('skiHold.alpha', 1)	
end		
end
	if tag == 'callTimer' then
		playSound('wrongNumber', 1, 'wrongNumber')
end
end

function onSoundFinished(tag)
	if tag == 'wrongNumber' then
		loadSong('Wrong Number')
end
end
		
		