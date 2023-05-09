function onUpdate()
		setPropertyFromClass("openfl.Lib", "application.window.title",'Ski Sings The Entire UNDERTALE Soundtrack!: ' .. getTextString('songNameText'))
end

function onSongStart()
	    setTimeBarColors('000000', 'FFFFFF')
end