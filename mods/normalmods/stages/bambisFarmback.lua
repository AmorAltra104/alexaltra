function onCreate()
	
	makeAnimatedLuaSprite('bambifarmback', 'bambifarmback', -310, -170);
	setLuaSpriteScrollFactor('bambifarmback', 0.9, 0.9);
        addAnimationByPrefix('bambifarmback', 'bambifarmback idle')
        scaleObject('bambifarmback', 1.35, 1.35);
	addLuaSprite('bambifarmback', false);
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end