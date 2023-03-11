function onCreate()
	-- background shit
	makeLuaSprite('bg', 'bonus/bg2', -650, -300);
	setScrollFactor('bg', 1, 1);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then

	end

	addLuaSprite('bg', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end