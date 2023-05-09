local canShake = false

function onEvent(name, value1, value2)
    if name == 'Window Shake' then
		canShake = true
		curWindowX = getPropertyFromClass("openfl.Lib", "application.window.x")
		curWindowY = getPropertyFromClass("openfl.Lib", "application.window.y")
		runTimer('shakeTimer', value1, 1)
end
end

function onUpdate()
	if canShake == true then
		setPropertyFromClass("openfl.Lib", "application.window.x", curWindowX + getRandomInt(-30, 30))
		setPropertyFromClass("openfl.Lib", "application.window.y", curWindowY + getRandomInt(-30, 30))
end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'shakeTimer' then
		canShake = false
		setPropertyFromClass("openfl.Lib", "application.window.x", curWindowX)
		setPropertyFromClass("openfl.Lib", "application.window.y", curWindowY)
end
end