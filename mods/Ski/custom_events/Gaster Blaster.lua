function onCreate()
	precacheImage('blasterBeam')
	precacheImage('blasters')
	precacheImage('blaster')
end

function onCreatePost()
	makeLuaSprite('blasterBeam', 'blasterBeam', 0, 920)
	scaleObject('blasterBeam', 10, 1)
	setProperty('blasterBeam.antialiasing', false)
	setProperty('blasterBeam.alpha', 0)
	setObjectOrder('blasterBeam', 50)
	addLuaSprite('blasterBeam', false)
	
	makeAnimatedLuaSprite('gasterBlaster', 'blasters', -150, 750)
	addAnimationByPrefix('gasterBlaster', 'shoot', 'blaster', 24, false)
	scaleObject('gasterBlaster', 8, 8)
	setProperty('gasterBlaster.antialiasing', false)
	setProperty('gasterBlaster.alpha', 0)
	addLuaSprite('gasterBlaster', true)
	
	makeLuaSprite('gasterBlaster1', 'blaster', -850, 750)
	scaleObject('gasterBlaster1', 8, 8)
	setProperty('gasterBlaster1.antialiasing', false)
	setProperty('gasterBlaster1.alpha', 0)
	addLuaSprite('gasterBlaster1', true)
end