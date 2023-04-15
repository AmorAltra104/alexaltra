function onCreate()
	-- background shit
	makeLuaSprite('patricks-wall', 'panchito/patricks-wall', -600, -300);
	setScrollFactor('patricks-wall', 0.9, 0.9);
	
	makeLuaSprite('patricks-floor', 'panchito/patricks-floor', -650, 600);
	setScrollFactor('patricks-floor', 0.9, 0.9);
	scaleObject('patricks-floor', 1.1, 1.1);

        makeLuaSprite('old style', 'panchito/old style', -500, -280)
	scaleObject('old style', 0.8, 0.8);
	objectPlayAnimation('old style', 'panchito/old style', true)
	setLuaSpriteScrollFactor('old style', 0, 0)

        makeLuaSprite('2old style', 'panchito/old style', -500, -1150)
	scaleObject('2old style', 0.8, 0.8);
	objectPlayAnimation('2old style', 'panchito/old style', true)
	setLuaSpriteScrollFactor('2old style', 0, 0)


	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
	end

	addLuaSprite('patricks-wall', false);
	addLuaSprite('patricks-floor', false);
	addLuaSprite('old style', true);
	addLuaSprite('2old style', true);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end