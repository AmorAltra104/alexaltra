function onCreate()

	makeLuaSprite('swordfight','swordfight/swordfight',-550,-430)
	addLuaSprite('swordfight',false)
	setLuaSpriteScrollFactor('swordfight', 0.9, 0.9);

	addLuaSprite('swordfight', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end