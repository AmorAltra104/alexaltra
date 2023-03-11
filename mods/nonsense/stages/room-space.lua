function onCreate()
	-- background shit
	makeLuaSprite('space', 'space', -500, -300);
	setLuaSpriteScrollFactor('space', 0.9, 0.9);
	
	makeLuaSprite('blank', 'blank', -650, 600);
	setLuaSpriteScrollFactor('blank', 0.9, 0.9);
	scaleObject('blank', 1.1, 1.1);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('blanklight', 'blanklight', -125, -100);
		setLuaSpriteScrollFactor('blanklight', 0.9, 0.9);
		scaleObject('blanklight', 1.1, 1.1);
		
		makeLuaSprite('blanklighte', 'blanklighte', 1225, -100);
		setLuaSpriteScrollFactor('blanklighte', 0.9, 0.9);
		scaleObject('blanklighte', 1.1, 1.1);
		setPropertyLuaSprite('blanklighte', 'flipX', true); --mirror sprite horizontally

		makeLuaSprite('blankcurtains', 'blankcurtains', -500, -300);
		setLuaSpriteScrollFactor('blankcurtains', 1.3, 1.3);
		scaleObject('blankcurtains', 0.9, 0.9);
	end

	addLuaSprite('space', false);
	addLuaSprite('blank', false);
	addLuaSprite('blanklight', false);
	addLuaSprite('blanklighte', false);
	addLuaSprite('blankcurtains', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end