function onCreate()

	makeLuaSprite('boxwall','boxring/boxwall',-400,-400)
	addLuaSprite('boxwall',false)
	setLuaSpriteScrollFactor('boxwall', 0.9, 0.9);

	makeLuaSprite('boxfloor','boxring/boxfloor',-350,-400)
	addLuaSprite('boxfloor',false)
	setLuaSpriteScrollFactor('boxfloor', 0.9, 0.9);

	addLuaSprite('boxwall', false);
	addLuaSprite('boxfloor', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end