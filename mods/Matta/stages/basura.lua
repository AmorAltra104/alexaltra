function onCreate()

	makeLuaSprite('back','basura/back',980,-80)
	addLuaSprite('back',false)
	setLuaSpriteScrollFactor('back', 0.6, 0.6);

	makeLuaSprite('basura','basura/basura',-290,-150)
	addLuaSprite('basura',false)
	setLuaSpriteScrollFactor('basura', 0.9, 0.9);

	addLuaSprite('back', false);
	addLuaSprite('basura', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end