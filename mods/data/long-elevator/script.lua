function onCreate()
		setPropertyFromClass("openfl.Lib", "application.window.title", "Ski Sings The Entire UNDERTALE Soundtrack!: Long Elevator")
		setDataFromSave('songData', songName, true)   
        flushSaveData('songData')
		setDataFromSave('hasBeaten', songName, true)   
        flushSaveData('hasBeaten')
end