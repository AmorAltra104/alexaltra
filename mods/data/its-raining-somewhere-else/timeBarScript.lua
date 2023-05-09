function onCreate()
		setPropertyFromClass("openfl.Lib", "application.window.title", "Ski Sings The Entire UNDERTALE Soundtrack!: It's Raining Somewhere Else")
end

function onSongStart()
	    setTimeBarColors('0094FF', '21007F')
		setTextString('songNameText', songName)
		scaleObject('songNameText', 0.9, 1)
		setProperty('songNameText.x', getProperty('songNameText.x') + 50)
end