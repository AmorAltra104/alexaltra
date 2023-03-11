function onCreate()
	-- background shit
	makeLuaSprite('sky', 'wiik3/bg', -600, -300);
	setScrollFactor('sky', 0.95, 0.95);
	scaleObject('sky', 1.0, 1.0);

	makeLuaSprite('floor', 'wiik3/flur', -300, 1037);
	setScrollFactor('floor', 1, 1);
	scaleObject('floor', 1, 1);

	makeLuaSprite('we', 'wiik3/we', -600, -300);
	setScrollFactor('we', 0.4, 0.4);
	scaleObject('we', 1, 1);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then

	end

	addLuaSprite('sky', false);
	addLuaSprite('floor', false);
	addLuaSprite('we', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end