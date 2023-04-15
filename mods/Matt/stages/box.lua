function onCreate()
	makeAnimatedLuaSprite('wall','boxwall',-400,-150);
	addAnimationByPrefix('wall','boom','wallboom instance',24,true);
	addLuaSprite('wall',false);
	objectPlayAnimation('wall','boom',false);

	makeAnimatedLuaSprite('floor','boxfloor',-430,-200);
	addAnimationByPrefix('floor','boom','bg instance',24,true);
	addLuaSprite('floor',false);
	objectPlayAnimation('floor','boom',false);
end