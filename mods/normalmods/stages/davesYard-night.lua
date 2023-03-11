function onCreate()
	-- background shit
	makeLuaSprite('daveshousenight', 'daveshousenight', -310, -170);
	setLuaSpriteScrollFactor('daveshousenight', 0.9, 0.9);
	scaleObject('daveshousenight', 1.35, 1.35)
	addLuaSprite('daveshousenight', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end