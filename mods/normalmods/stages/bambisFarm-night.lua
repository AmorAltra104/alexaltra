function onCreate()
	-- background shit
	makeLuaSprite('bambifarmnight', 'bambifarmnight', -280, -160);
	setLuaSpriteScrollFactor('bambifarmnight', 0.9, 0.9);
	scaleObject('bambifarmnight', 1.05, 1.05);
	addLuaSprite('bambifarmnight', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end