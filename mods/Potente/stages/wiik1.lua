function onCreate()
	-- background shit
	makeLuaSprite('bg', 'wiik1/bg', -600, -150);
	setScrollFactor('bg', 0.8, 0.8);

	makeLuaSprite('stage', 'wiik1/stage', -600, -290);
	setScrollFactor('stage', 0.9, 0.9);

	makeLuaSprite('floor', 'wiik1/floor', -600, -300);
	setScrollFactor('floor', 1, 1);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then

	end

	addLuaSprite('bg', false);
	addLuaSprite('stage', false);
	addLuaSprite('floor', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end