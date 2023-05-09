function onCreate()	
	makeLuaSprite('room', 'paps', -700, -550)
    setProperty('room.antialiasing', false)
	scaleObject('room', 10, 10)
	addLuaSprite('room', false)
end

function onEndSong()
		setDataFromSave('songData', 'unlockedSoundTest', true)
		flushSaveData('songData')
end

		          