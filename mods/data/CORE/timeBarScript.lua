function onCreate()
		setPropertyFromClass("openfl.Lib", "application.window.title",'Ski Sings The Entire UNDERTALE Soundtrack!: CORE')
end

function onSongStart()
	    setTimeBarColors('5877FF', 'FF9651')
		setTextString('songNameText', songName)
end