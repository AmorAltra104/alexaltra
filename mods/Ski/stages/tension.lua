function onCreate()	
	makeLuaSprite('room', 'tension', -523, -850)
    setProperty('room.antialiasing', false)
	scaleObject('room', 10, 10)
	addLuaSprite('room', false)
	
	doTweenX('roomTweenX', 'room', -8240, 5, 'linear')
end

function onTweenCompleted(tag)
	if tag == 'roomTweenX' then
		setProperty('room.x', -523)
		doTweenX('roomTweenX', 'room', -8240, 5, 'linear')
end
end
	         

		          