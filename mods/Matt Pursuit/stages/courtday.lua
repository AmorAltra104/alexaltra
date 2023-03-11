function onCreate()
	-- background shit
	makeLuaSprite('SkyBox', 'SkyBox', -195, -200);
	setScrollFactor('SkyBox', 0.8, 0.8);
	scaleObject('SkyBox', 1, 1);
	
	makeLuaSprite('Buildings', 'Buildings', -180, -80);
	setScrollFactor('Buildings', 0.9, 0.9);
	scaleObject('Buildings', 1, 1);

	makeLuaSprite('Floor', 'Floor', -200, -110);
	setScrollFactor('Floor', 1, 1);
	scaleObject('Floor', 1, 1);

	addLuaSprite('SkyBox', false);
	addLuaSprite('Buildings', false);
	addLuaSprite('Floor', false);

	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end