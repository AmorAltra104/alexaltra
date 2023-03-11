function onEvent(name,value1,value2)
	if name == 'screenTilt' then
		doTweenAngle('screenTilt','camGame',value1,value2,'linear')
	end
end