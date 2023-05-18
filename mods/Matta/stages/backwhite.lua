function onCreate()

	makeLuaSprite('backwhite','backwhite/backwhite',-400,-400)
	addLuaSprite('backwhite',false)
	setLuaSpriteScrollFactor('backwhite', 0.9, 0.9);

	makeLuaSprite('floorblack','backwhite/floorblack',-350,-400)
	addLuaSprite('floorblack',false)
	setLuaSpriteScrollFactor('floorblack', 0.9, 0.9);

	addLuaSprite('backwhite', false);
	addLuaSprite('floorblack', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end