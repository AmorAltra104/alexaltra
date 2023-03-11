function onCreate()
	-- background shit
	makeLuaSprite('stageback', 'stageback', -600, -390);
	setScrollFactor('stageback', 0.8, 0.8);
	
	makeLuaSprite('stagefront', 'stagefront', -650, 200);
	setScrollFactor('stagefront', 1.0, 1.0);
	scaleObject('stagefront', 1.1, 1.1);

	addLuaSprite('stageback', false);
	addLuaSprite('stagefront', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end