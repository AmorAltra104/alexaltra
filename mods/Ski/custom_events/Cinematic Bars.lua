function onCreate()
	makeLuaSprite('barTop', 'bars', 0, -150)
    setObjectCamera('barTop', 'hud')
	scaleObject('barTop', 0.8, 0.8)
	addLuaSprite('barTop', false)
	
	makeLuaSprite('barBottom', 'bars', 0, 750)
    setObjectCamera('barBottom', 'hud')
	scaleObject('barBottom', 0.8, 0.8)
	setObjectOrder('barBottom', 0)
	addLuaSprite('barBottom', false)
end

function onEvent(name, value1, value2)
    if name == 'Cinematic Bars' then
		if value1 == 'true' then
		   doTweenY('barTopTweenY', 'barTop', 0, 1, 'circInOut')
	       doTweenY('barBottomTweenY', 'barBottom', 600, 1, 'circInOut')
		else
		   doTweenY('barTopTweenY', 'barTop', -150, 1, 'circInOut')
	       doTweenY('barBottomTweenY', 'barBottom', 750, 1, 'circInOut')		
end
end
end