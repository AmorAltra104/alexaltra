function onCreate()
		setPropertyFromClass("openfl.Lib", "application.window.title",'Ski Sings The Entire UNDERTALE Soundtrack!: Uwa!! So Ski')
end

function onSongStart()
	    setTimeBarColors('FFFFFF', '000000')
		doTweenColor('timeTween', 'timeBar', 'BCFF82', 0.01, 'linear')
		setTextString('songNameText', "Uwa!! So Ski")
end

function onStepHit()
       if curStep == 512 then
	          doTweenColor('timeTween', 'timeBar', '7CB5FF', 1, 'linear')
	   elseif curStep == 790 then
	          doTweenColor('timeTween', 'timeBar', 'FFD06D', 1, 'linear')
end
end