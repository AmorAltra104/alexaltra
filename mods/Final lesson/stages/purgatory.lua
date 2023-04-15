function onCreate()
	-- background shit
	makeLuaSprite('volcano', 'volcano', -600, -300);
	setScrollFactor('stageback', 0.9, 0.9);

	addLuaSprite('volcano', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end