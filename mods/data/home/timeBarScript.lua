function onCreate()
		setPropertyFromClass("openfl.Lib", "application.window.title",'Ski Sings The Entire UNDERTALE Soundtrack!: Home')
end

function onSongStart()
	    setTimeBarColors('FFD5A6', 'E94D2A')
end

function onStepHit()
	if curStep == 694 then
		setTimeBarColors('7C654B', '4E1616')
end
end