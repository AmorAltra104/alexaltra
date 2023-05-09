function onCreate()	
	makeLuaSprite('room', 'run', -736, -1000)
    setProperty('room.antialiasing', false)
	scaleObject('room', 10, 10)
	addLuaSprite('room', false)

	doTweenX('roomTweenX', 'room', -13856, 5, 'linear')	
end

function onTweenCompleted(tag)
	if tag == 'roomTweenX' then
		setProperty('room.x', -736)
		doTweenX('roomTweenX', 'room', -13856, 5, 'linear')
end
end
	         

		          