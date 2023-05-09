function onCreate()
		setPropertyFromClass("openfl.Lib", "application.window.title",'Ski Sings The Entire UNDERTALE Soundtrack!: Death By Glamour')
end

function onSongStart()
	    setTimeBarColors('FFFF00', '7F6A00')
		setTextString('songNameText', songName)
end