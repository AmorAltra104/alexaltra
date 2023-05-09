function onCreate()
	-- background shit
	makeLuaSprite('BG1', 'bob-ex/BG1', -1100, -645);
	setLuaSpriteScrollFactor('BG1', 0.85, 0.85);
        setProperty("BG1.scale.x", 0.6);
        setProperty("BG1.scale.y", 0.6);

	
	makeLuaSprite('BG2', 'bob-ex/BG2', -1300, -645);
	setLuaSpriteScrollFactor('BG2', 0.75, 0.75);
        setProperty("BG2.scale.x", 0.6);
        setProperty("BG2.scale.y", 0.6);



	makeLuaSprite('BG3', 'bob-ex/BG3', -600, -300);
	setLuaSpriteScrollFactor('BG3', 1.0, 1.0);



        makeAnimatedLuaSprite('DIVISION', 'AMOR/pixelthing', 70, -100);
	addAnimationByPrefix('DIVISION', 'idle', 'pixelthing', 24, true);
        setProperty("DIVISION.scale.x", 2.5);
        setProperty("DIVISION.scale.y", 2.5);
	objectPlayAnimation('DIVISION', 'idle', true);



	addLuaSprite('BG1', false);
	addLuaSprite('BG2', false);
        addLuaSprite('BG3', false);

    
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end
