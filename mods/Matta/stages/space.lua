function onCreate()

	makeLuaSprite('space','space/bg_boxn',-550,-430)
	addLuaSprite('space',false)
	setLuaSpriteScrollFactor('space', 0.9, 0.9);

	addLuaSprite('space', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end