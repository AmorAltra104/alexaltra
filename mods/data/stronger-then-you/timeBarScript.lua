function onCreate()
		setPropertyFromClass("openfl.Lib", "application.window.title",'Ski Sings The Entire UNDERTALE Soundtrack!: Stronger Then You')
end

function onSongStart()
	    setTimeBarColors('00FFFF', '004A7F')
end

function onStepHit()
	if curStep == 47 then
		playSound('smack', 1, 'smack')
	elseif curStep == 49 then
		playSound('smack', 1, 'smack')
end
end