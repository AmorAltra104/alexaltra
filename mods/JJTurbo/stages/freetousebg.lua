function onCreate()

	makeLuaSprite('BoxingBG', 'BG', -1500, 500);
	addLuaSprite('BoxingBG',false)
	setLuaSpriteScrollFactor('BoxingBG', 0.02, 0.9);

	makeLuaSprite('BoxingRound', 'Ring', 50, 500);
	addLuaSprite('BoxingRound',false)
	setLuaSpriteScrollFactor('BoxingRound', 1, 0.9);

	makeLuaSprite('ruido', 'GrainFilter', -800, -500);
	addLuaSprite('ruido', true);
	setLuaSpriteScrollFactor('ruido', 0, 0);

	close(true)
end