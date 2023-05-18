function onCreate()

	makeLuaSprite('boxback','boxma/bg_boxn',-550,-430)
	addLuaSprite('boxback',false)
	setLuaSpriteScrollFactor('boxback', 0.9, 0.9);

	makeLuaSprite('boxbackalt','boxma/bg_boxr',-550,-430)
	addLuaSprite('boxbackalt',false)
	setLuaSpriteScrollFactor('boxbackalt', 0.9, 0.9);

	addLuaSprite('boxback', false);
	addLuaSprite('boxbackalt', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end