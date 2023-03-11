function onCreate()
	-- background shit
	makeLuaSprite('stageback2', 'stageback2', -770, -200);
	setScrollFactor('stageback2', 3, 1);
	scaleObject('stagefront2', 10, 10);
	
	makeLuaSprite('stagefront2', 'stagefront2', -1075, 800);
	scaleObject('stagefront2', 1.3, 1.3);

	addLuaSprite('stageback2', false);
	addLuaSprite('stagefront2', false);
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end