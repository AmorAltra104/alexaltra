function onCreate()
	-- background shit
	makeLuaSprite('SkyMidnight', 'SkyMidnight', -195, -200);
	setScrollFactor('SkyMidnight', 0.8, 0.8);
	scaleObject('SkyMidnight', 1, 1);
	
	makeLuaSprite('BuildingsNight', 'BuildingsNight', -180, -80);
	setScrollFactor('BuildingsNight', 0.9, 0.9);
	scaleObject('BuildingsNight', 1, 1);

	makeLuaSprite('FloorNight', 'FloorNight', -200, -110);
	setScrollFactor('FloorNight', 1, 1);
	scaleObject('FloorNight', 1, 1);

	addLuaSprite('SkyMidnight', false);
	addLuaSprite('BuildingsNight', false);
	addLuaSprite('FloorNight', false);

	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end