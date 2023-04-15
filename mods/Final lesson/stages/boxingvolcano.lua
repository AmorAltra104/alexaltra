function onCreate()
	-- background shit
	makeLuaSprite('boxing volcano', 'boxing volcano', -600, -300);
	setScrollFactor('boxing volcano', 0.9, 0.9);
	scaleObject('boxing volcano', 1.1, 1.1);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
	end

	addLuaSprite('boxing volcano', false);
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end