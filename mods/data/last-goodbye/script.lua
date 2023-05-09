function onCreate()
		initSaveData('songData', 'SkiUNDERTALE')
		setPropertyFromClass("openfl.Lib", "application.window.title", "Ski Sings The Entire UNDERTALE Soundtrack!: Last Goodbye")
end

function onEndSong()
	if misses == 0 then
		setDataFromSave('songData', 'unlockedRoomOfDog', true)
		flushSaveData('songData')
end
end