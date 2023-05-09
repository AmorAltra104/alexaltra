function onCreate()
		setPropertyFromClass("openfl.Lib", "application.window.title", "Ski Sings The Entire UNDERTALE Soundtrack!: Spider Dance")
end

function onSongStart()
	    setTimeBarColors('D049E5', '742982')
		setTextString('songNameText', songName)
end