function onCreate()	
	makeLuaSprite('room', 'snowy', -700, -550)
    setProperty('room.antialiasing', false)
	scaleObject('room', 10, 10)
	addLuaSprite('room', false)
	
	makeLuaSprite('black', 'empty', 0, 0)
	setObjectCamera('black', 'other')
	setProperty('black.alpha', 0)
	addLuaSprite('black', true)
			
	soundRandom = getRandomBool('0.5')
	
	if getDataFromSave('songData', 'unlockedSoundTest') == true then
		if soundRandom == true then
			setProperty('black.alpha', 1)
			loadSong('Sound Test')
end
end
end
			  
	         

		          