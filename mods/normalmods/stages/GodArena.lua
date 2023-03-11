function onCreate()

	makeLuaSprite('TheLights', 'lights999', -600, -300);
	addLuaSprite('TheLights',false);
	setLuaSpriteScrollFactor('TheLights', 0.9, 0.9);

	makeLuaSprite('TheArena', 'arena999', -650, 600);
	addLuaSprite('TheArena',false);
	setLuaSpriteScrollFactor('TheArena', 0.9, 0.9);

	makeLuaSprite('healing', 'hold', 0, 0);
	addLuaSprite('healing',true)
	setObjectCamera('healing', 'camother')
	setProperty('healing.visible', false)

	makeLuaSprite('black', 'black thing', -650, -360);
	addLuaSprite('black',true)
	setObjectCamera('black', 'camother')

	makeAnimatedLuaSprite('TheCharge','charge',200,100)
	addAnimationByPrefix('TheCharge','charging','powerup particale',24,true)
	addLuaSprite('TheCharge',true)
	objectPlayAnimation('TheCharge','charging')
    setProperty('TheCharge.visible', false)

	close(true)
end