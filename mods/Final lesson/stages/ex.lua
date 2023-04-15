function onCreate()
	-- background shit
	makeLuaSprite('ex', 'ex', -600, -300);
	setScrollFactor('ex', 0.9, 0.9);
	scaleObject('ex', 1.1, 1.1);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
	end

	addLuaSprite('ex', false);
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end