function onCreate()

	makeLuaSprite('arenanightbg','swordfight2/arenanightbg',-550,-430)
	addLuaSprite('arenanightbg',false)
	setLuaSpriteScrollFactor('arenanightbg', 0.9, 0.9);

	addLuaSprite('arenanightbg', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end