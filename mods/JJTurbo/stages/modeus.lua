function onCreate()
	
	makeLuaSprite('back','!!',-500,100)
	setScrollFactor('back', 0.5, 0.6)
	addLuaSprite('back',false)

	makeLuaSprite('crowd','!!!!',0,270)
	setScrollFactor('crowd', 0.9, 0.8)
	addLuaSprite('crowd',false)

	makeLuaSprite('land','!',0,500)
	addLuaSprite('land',false)

	makeLuaSprite('rock','!!!',0,500)
	addLuaSprite('rock',false)
	
	close(true)
end