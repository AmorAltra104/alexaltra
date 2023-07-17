function onEvent()
	if curBeat >= 288 then
		songPos = getSongPosition()
		local currentBeat = (songPos/1000)*(bpm/210)
		setProperty('gf.y',300-110*math.sin((currentBeat*0.25)*math.pi),0.001)
		setProperty('boyfriend.y',300-110*math.sin((currentBeat*0.25)*math.pi),0.001)
	    setProperty('dad.y',300-110*math.sin((currentBeat*0.25)*math.pi),0.001)
		doTweenAngle('among', 'dad', 999, 99)
		doTweenAngle('flygoof', 'boyfriend', 999, 99)
		doTweenAngle('amongstus', 'gf', -999, 99)
	  end
end