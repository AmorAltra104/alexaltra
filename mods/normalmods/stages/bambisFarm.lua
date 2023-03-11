function onCreate()
	-- background shit
	makeLuaSprite('bambifarm', 'bambifarm', -280, -160);
	setLuaSpriteScrollFactor('bambifarm', 0.9, 0.9);
        scaleObject('bambifarm', 1.05, 1.05);
	addLuaSprite('bambifarm', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end