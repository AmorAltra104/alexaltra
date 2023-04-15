function onCreate()
	-- background shit
	makeLuaSprite('arena-bg', 'arena-bg', -600, -300);
	setScrollFactor('arena-bg', 0.9, 0.9);
	
	end

	addLuaSprite('arena-bg', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end