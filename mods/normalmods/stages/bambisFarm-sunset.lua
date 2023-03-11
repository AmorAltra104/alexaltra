function onCreate()
	-- background shit
	makeLuaSprite('sky_sunset', 'sky_sunset', -280, -160);
	setLuaSpriteScrollFactor('sky_sunset', 0.9, 0.9);
        scaleObject('sky_sunset', 1.05, 1.05);	
	addLuaSprite('sky_sunset', false);
	makeLuaSprite('bambifarmsunset', 'bambifarmsunset', -280, -160);
	setLuaSpriteScrollFactor('bambifarmsunset', 0.9, 0.9);
        scaleObject('bambifarmsunset', 1.05, 1.05);	
	addLuaSprite('bambifarmsunset', false);

	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end