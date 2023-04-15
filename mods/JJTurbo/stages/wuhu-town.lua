function onCreate()
	makeLuaSprite('sky', 'wuhu-town/sky', -1250, -750)
	setScrollFactor('sky', 0.8, 0.8)
	scaleObject('sky', 1.3, 1.3)

	makeLuaSprite('mountain', 'wuhu-town/mountain', -500, -650)
	setScrollFactor('mountain', 0.9, 0.9)
	scaleObject('mountain', 0.7, 0.8)

	makeLuaSprite('street', 'wuhu-town/street', -1130, -520)
	scaleObject('street', 1.03, 1.03)

	makeLuaSprite('bridge', 'wuhu-town/bridge', 300, -300)
	setScrollFactor('bridge', 0.8, 0.8)
	scaleObject('bridge', 1.5, 1.5)

	addLuaSprite('sky', false)
	addLuaSprite('bridge', false)
	addLuaSprite('mountain', false)
	addLuaSprite('street', false)
end