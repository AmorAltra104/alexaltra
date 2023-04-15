function onUpdate()
	playSound('bell', 1);
end
function onCreate()

	makeLuaSprite('TheBackRed', 'backred', -600, -300);
	addLuaSprite('TheBackRed',false);
	setLuaSpriteScrollFactor('TheBackRed', 0.9, 0.9);

	makeAnimatedLuaSprite('TheCrowed','arena-characters',-700,600)
	addAnimationByPrefix('TheCrowed','bg','bg-characters',24,true)
	addLuaSprite('TheCrowed',false)
	objectPlayAnimation('TheCrowed','bg')

	makeLuaSprite('TheLights', 'lights', -600, -300);
	addLuaSprite('TheLights',false);
	setLuaSpriteScrollFactor('TheLights', 0.9, 0.9);

	makeLuaSprite('TheArena', 'arena', -650, 600);
	addLuaSprite('TheArena',false);
	setLuaSpriteScrollFactor('TheArena', 0.9, 0.9);

	close(true)
end