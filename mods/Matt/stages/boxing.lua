
--How makeLuaSprite works:
--makeLuaSprite(<SPRITE VARIABLE>, <SPRITE IMAGE FILE NAME>, <X>, <Y>);
--"Sprite Variable" is how you refer to the sprite you just spawned in other methods like "setScrollFactor" and "scaleObject" for example

--so for example, i made the sprites "stagelight_left" and "stagelight_right", i can use "scaleObject('stagelight_left', 1.1, 1.1)"
--to adjust the scale of specifically the one stage light on left instead of both of them

function onCreate()
	-- background shit
	makeLuaSprite('boxingnight1', 'boxingnight1', 0, 0);
	setScrollFactor('boxingnight1', 0.9, 0.9);

	makeLuaSprite('boxingnight2', 'boxingnight2', -400, -300);
	setScrollFactor('boxingnight2', 0.9, 0.9);

	makeLuaSprite('boxingnight3', 'boxingnight3', -500, -220);
	setScrollFactor('boxingnight3', 0.9, 0.9);

	addLuaSprite('boxingnight1', false);
	addLuaSprite('boxingnight2', false);
	addLuaSprite('boxingnight3', false);
end