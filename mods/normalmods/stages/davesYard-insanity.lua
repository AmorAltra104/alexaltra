function onCreate()
	-- background shit

	makeLuaSprite('redsky', 'redsky', -600, -200);
	addGlitchEffect('redsky', 2, 5);
        addLuaSprite('redsky', false);

	makeLuaSprite('daveshouse', 'daveshouse', -310, -170);
	scaleObject('daveshouse', 1.35, 1.35)
	setLuaSpriteScrollFactor('daveshouse', 0.9, 0.9);
	addLuaSprite('daveshouse', false);

	
end