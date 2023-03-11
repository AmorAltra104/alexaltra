function onCreate()
	-- background shit
	makeLuaSprite('sky', 'wiik2R/psky', -600, -300);
	setScrollFactor('sky', 0.0, 0.0);
	scaleObject('sky', 1.0, 1.0);

	makeLuaSprite('sun', 'wiik2R/psun', -100, -200);
	setScrollFactor('sun', 0.2, 0.2);
	scaleObject('sun', 0.9, 0.9);

	makeLuaSprite('mountains', 'wiik2R/pmountains', -600, -300);
	setScrollFactor('mountains', 0.9, 0.9);
	scaleObject('mountains', 1.5, 1.5);

	makeLuaSprite('rox', 'wiik2R/prox', -300, 1037);
	setScrollFactor('rox', 0.7, 0.7);
	scaleObject('rox', 1.3, 1.3);

	makeLuaSprite('pp', 'wiik2R/pp', -600, -300);
	setScrollFactor('pp', 0.0, 0.0);
	scaleObject('pp', 1.3, 1.3);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then

	end

	addLuaSprite('sky', false);
	addLuaSprite('sun', false);
	addLuaSprite('mountains', false);
	addLuaSprite('rox', true);
	addLuaSprite('pp', true);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end