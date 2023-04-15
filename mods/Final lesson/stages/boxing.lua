function onCreate()
	-- background shit
	makeLuaSprite('boxing', 'boxing', -600, -300);
	setScrollFactor('boxing', 0.9, 0.9);
	scaleObject('boxing', 1.1, 1.1);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
	end

	addLuaSprite('boxing', false);
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end