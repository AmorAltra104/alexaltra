function onCreate()
	-- background shit
	makeLuaSprite('SkyCorrupted', 'SkyCorrupted', -195, -200);
	setScrollFactor('SkyCorrupted', 0.8, 0.8);
	scaleObject('SkyCorrupted', 1, 1);
	
	makeLuaSprite('BuildingsCorrupted', 'BuildingsCorrupted', -180, -80);
	setScrollFactor('BuildingsCorrupted', 0.9, 0.9);
	scaleObject('BuildingsCorrupted', 1, 1);

	makeLuaSprite('GroundCorrupted', 'GroundCorrupted', -200, -100);
	setScrollFactor('GroundCorrupted', 1.1, 1.1);
	scaleObject('GroundCorrupted', 1, 1);

	makeLuaSprite('FloorCorrupted', 'FloorCorrupted', -200, 20);
	setScrollFactor('FloorCorrupted', 1, 1);
	scaleObject('FloorCorrupted', 1, 1);

	addLuaSprite('SkyCorrupted', false);
	addLuaSprite('BuildingsCorrupted', false);
	addLuaSprite('GroundCorrupted', false);
	addLuaSprite('FloorCorrupted', false);

	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end