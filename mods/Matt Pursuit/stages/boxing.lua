function onCreate()
	-- background shit
	makeLuaSprite('BoxingBack', 'BoxingBack', -195, -200);
	setScrollFactor('BoxingBack', 0.8, 0.8);
	scaleObject('BoxingBack', 1, 1);
	
	makeLuaSprite('BoxingFloor', 'BoxingFloor', -200, -100);
	setScrollFactor('BoxingFloor', 0.9, 0.9);
	scaleObject('BoxingFloor', 1, 1);

	makeAnimatedLuaSprite('crowd','BoxingCrowd',-175, -100)
	addAnimationByPrefix('crowd','dance','crowd bop',24,true)
	objectPlayAnimation('crowd','dance',false)
	scaleObject('crowd', 1.6, 1.6);
	setScrollFactor('crowd', 0.9, 0.9);

	makeLuaSprite('BoxingGround', 'BoxingGround', -200, -100);
	setScrollFactor('BoxingGround', 1, 1);
	scaleObject('BoxingGround', 1, 1);

	addLuaSprite('BoxingBack', false);
	addLuaSprite('BoxingFloor', false);
	addLuaSprite('crowd', false);
	addLuaSprite('BoxingGround', false);

	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end