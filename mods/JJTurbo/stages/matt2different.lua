function onCreate()
	
	makeLuaSprite('BoxingBG','bg_boxn',-700,-400)
	addLuaSprite('BoxingBG',false)
	scaleObject('BoxingBG', 1.2, 1.2)

	makeLuaSprite('BoxingRound','bg_boxr',-700,-500)
	addLuaSprite('BoxingRound',false)
	scaleObject('BoxingRound', 1.1, 1.1)
	
	close(true)
end