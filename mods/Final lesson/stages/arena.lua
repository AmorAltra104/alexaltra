function onCreate()
	-- background shit
	makeLuaSprite('arena', 'arena', -600, -300);
	setScrollFactor('arena', 0.9, 0.9);
	scaleObject('arena', 1.1, 1.1);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
	end

	addLuaSprite('arena', false);
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end