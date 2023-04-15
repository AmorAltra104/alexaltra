function onCreate()

	makeLuaSprite('BoxingBG', 'boxingnight2', -500, 500);
	addLuaSprite('BoxingBG',false)
	setLuaSpriteScrollFactor('BoxingBG', 0.02, 0.9);

	makeLuaSprite('buildings', 'buildings', -400, 500);
	addLuaSprite('buildings',false)
	setLuaSpriteScrollFactor('buildings', 0.2, 0.9);

	makeLuaSprite('BoxingRound', 'boxingnight3', 0, 500);
	addLuaSprite('BoxingRound',false)
	setLuaSpriteScrollFactor('boxingnight3', 1, 0.9);

	makeLuaSprite('lights', 'lights', 500, 800);
	addLuaSprite('lights', true);
	setLuaSpriteScrollFactor('lights', 2, 1.8);

	makeLuaSprite('ruido', 'ruido', -500, -400);
	addLuaSprite('ruido', true);
	setLuaSpriteScrollFactor('ruido', 0, 0);

	makeLuaSprite('5galaxy', 'stadium/5galaxy', -600, -300);
	addLuaSprite('5galaxy', false);

	makeLuaSprite('4arenaringback', 'stadium/4arenaringback', -600, -300);
	addLuaSprite('4arenaringback', false);

	makeLuaSprite('33', 'stadium/33', -600, -300);
	addLuaSprite('33', false);

	makeLuaSprite('2arenaring', 'stadium/2arenaring', -600, -300);
	addLuaSprite('2arenaring', false);

	makeLuaSprite('1arenastage', 'stadium/1arenastage', -600, -300);
	addLuaSprite('1arenastage', false);

	setProperty('5galaxy.visible', false)
	setProperty('4arenaringback.visible', false)
	setProperty('33.visible', false)
	setProperty('2arenaring.visible', false)
	setProperty('1arenastage.visible', false)
	setProperty('BoxingBG.visible', true)
	setProperty('buildings.visible', true)
	setProperty('BoxingRound.visible', true)
	setProperty('lights.visible', true)
	setProperty('rudio.visible', true)
	close(true)
end