function onCreate()
		setPropertyFromClass("openfl.Lib", "application.window.title", "Ski Sings The Entire UNDERTALE Soundtrack!: Song That Might Play When You Fight Sans")
end

function onSongStart()
	    setTimeBarColors('0094FF', '21007F')
		setTextString('songNameText', songName)
		scaleObject('songNameText', 0.6, 1)
		setProperty('songNameText.x', getProperty('songNameText.x') + 220)
end