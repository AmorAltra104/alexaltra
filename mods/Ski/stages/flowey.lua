function onCreate()
	makeLuaSprite('ground', 'ground', 160, 1150)
	setProperty('ground.antialiasing', false)
	scaleObject('ground', 2, 2)
	addLuaSprite('ground', false)
	
	makeLuaSprite('gate', 'gate', 600, 800)
	setProperty('gate.antialiasing', false)
	scaleObject('gate', 0.2, 0.2)
	addLuaSprite('gate', false)
end