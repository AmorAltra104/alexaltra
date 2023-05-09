function onCreate()	
    makeLuaSprite('layerBG', '', 0, 0)
    makeGraphic('layerBG', screenWidth, screenHeight, '010101')
    scaleObject('layerBG', 3, 3)
    screenCenter('layerBG')
    setScrollFactor('layerBG', 0, 0)
    addLuaSprite('layerBG', false)

	makeLuaSprite('room', 'fakeWaterfall', 0, 100)
    setProperty('room.antialiasing', false)
	scaleObject('room', 10, 10)
	addLuaSprite('room', false)
	setProperty('room.alpha', 1)
	doTweenX('hallTweenX', 'room', -6570, 2.5, 'linear')
	
	makeLuaSprite('black', 'empty', 0, 0)
	setObjectCamera('black', 'hud')
	setProperty('black.alpha', 1)
	addLuaSprite('black', true)
end

function onTweenCompleted(tag)
	if tag == 'hallTweenX' then
		setProperty('room.x', 0)
		doTweenX('hallTweenX', 'room', -6570, 2.5, 'linear') 
end
end