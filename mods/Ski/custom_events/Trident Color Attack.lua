function onCreate()
	makeLuaSprite('tridentBlue', 'tridentBlue', getProperty('boyfriend.x') + 100, getProperty('boyfriend.y') - 3000)
	scaleObject('tridentBlue', 5, 5)
	setProperty('tridentBlue.alpha', 0)
	setProperty('tridentBlue.antialiasing', false)
	addLuaSprite('tridentBlue', true)
	
	makeLuaSprite('tridentOrange', 'tridentOrange', getProperty('boyfriend.x') + 100, getProperty('boyfriend.y') - 3000)
	scaleObject('tridentOrange', 5, 5)
	setProperty('tridentOrange.alpha', 0)
	setProperty('tridentOrange.antialiasing', false)
	addLuaSprite('tridentOrange', true)
end