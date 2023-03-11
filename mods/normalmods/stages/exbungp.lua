function onCreate()
	-- background shit
    makeLuaSprite('kabunga', 'kabunga', -500, -300);
    setLuaSpriteScrollFactor('kabunga', 1.1, 1.1);
    addGlitchEffect('kabunga', 2 , 5)
    addLuaSprite('kabunga')

	
		makeLuaSprite('exbungohouse', 'exbungohouse', 200, -200);
		setScrollFactor('exbungohouse', 1.2, 1.2);
		scaleObject('exbungohouse', 0.7, 0.7);
		
	addLuaSprite('exbungohouse', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end