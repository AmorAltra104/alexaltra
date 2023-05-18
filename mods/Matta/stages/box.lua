function onCreate()

	makeLuaSprite('box','box/box',-550,-430)
	addLuaSprite('box',false)
	setLuaSpriteScrollFactor('box', 0.9, 0.9);

	addLuaSprite('box', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end