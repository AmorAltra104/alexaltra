function onCreate()
	-- background shit
    makeLuaSprite('rematch', 'rematch/rematch', -700, -250);
    setScrollFactor('rematch', 1, 1);
    addLuaSprite('rematch');

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then

	end

	addLuaSprite('rematch', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end