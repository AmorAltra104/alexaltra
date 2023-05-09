local canIdle = true
local currentBeat = 1

function onCreate()	
	makeLuaSprite('room', 'surface', -700, -200)
    setProperty('room.antialiasing', false)
	scaleObject('room', 10, 10)
	addLuaSprite('room', false)
end

function onCreatePost()	
	setProperty('dadGroup.flipY', true)
	setProperty('dadGroup.alpha', 0.5)
	
	characterPlayAnim('dad', 'idleAnim', true)
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
		if noteData == 0 then
			characterPlayAnim('dad', 'singLEFT', true)
		elseif noteData == 1 then
			characterPlayAnim('dad', 'singDOWN', true)
		elseif noteData == 2 then
			characterPlayAnim('dad', 'singUP', true)
		elseif noteData == 3 then
			characterPlayAnim('dad', 'singRIGHT', true)
end
			canIdle = false
			runTimer('idleTimer', 0.5, 1) 
end

function noteMiss(id, noteData, noteType, isSustainNote)
		if noteData == 0 then
			characterPlayAnim('dad', 'singLEFT', true)
		elseif noteData == 1 then
			characterPlayAnim('dad', 'singDOWN', true)
		elseif noteData == 2 then
			characterPlayAnim('dad', 'singUP', true)
		elseif noteData == 3 then
			characterPlayAnim('dad', 'singRIGHT', true)
end
			canIdle = false
			runTimer('idleTimer', 1.5, 1) 
end

function onBeatHit()
		if canIdle == true and currentBeat == 2 then
			characterPlayAnim('dad', 'idleAnim', true)
end                  
			currentBeat = currentBeat + 1
		if currentBeat > 2 then
			currentBeat = 1
end
end

function onTimerCompleted(tag, loops, loopsLeft)
		if tag == 'idleTimer' then
				canIdle = true
end
end
				
			  
	         

		          