function onCreate()
	-- background shit
	makeLuaSprite('sky_sunset', 'sky_sunset', -310, -170);
	setLuaSpriteScrollFactor('sky_sunset', 0.9, 0.9);
        scaleObject('sky_sunset', 1.35, 1.35);	
	addLuaSprite('sky_sunset', false);
	makeLuaSprite('daveshousesunset', 'daveshousesunset', -310, -170);
	setLuaSpriteScrollFactor('daveshousesunset', 0.9, 0.9);
	scaleObject('daveshousesunset', 1.35, 1.35)
	addLuaSprite('daveshousesunset', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end