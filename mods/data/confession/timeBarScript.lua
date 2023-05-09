function onCreate()
		setPropertyFromClass("openfl.Lib", "application.window.title",'Ski Sings The Entire UNDERTALE Soundtrack!: Confession')
end

function onSongStart()
	    setTimeBarColors('7FC9FF', '3F647F')
		setTextString('songNameText', songName)
end