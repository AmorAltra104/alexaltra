function onCreate()

	makeLuaSprite('boxback','sky/sky',-550,-430)
	addLuaSprite('boxback',false)
	setLuaSpriteScrollFactor('boxback', 0.9, 0.9);

	makeLuaSprite('boxbackalt','sky/sky',-550,-430)
	addLuaSprite('boxbackalt',false)
	setLuaSpriteScrollFactor('boxbackalt', 0.9, 0.9);

	makeAnimatedLuaSprite('gf', 'characters/GF_assets', 950, -130);
    addAnimationByPrefix('gf', 'idle', 'GF Dancing Beat0', 24, true)

	addLuaSprite('boxback', false);
	addLuaSprite('boxbackalt', false);
	addLuaSprite('gf', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end