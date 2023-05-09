function onCreate()
	makeLuaSprite('neobg','neobg', -800, -100);
	setScrollFactor('neobg', 0, 0);
	addLuaSprite('neobg', false);

	makeAnimatedLuaSprite('fountain','fountain', 0, -100);
	setScrollFactor('fountain', 1, 0);
	addAnimationByPrefix('fountain','loop','fountain',10);
	addLuaSprite('fountain', false);

	makeLuaSprite('dangle','dangle', -1000, -200);
	setScrollFactor('dangle', 1, 1);
	addLuaSprite('dangle', false);
	
	makeLuaSprite('platform', 'platform', 600, 600)
	scaleObject('platform', 8, 8)
	setProperty('platform.antialiasing', false)
	addLuaSprite('platform', false)
end

function onBeatHit()
	objectPlayAnim('fountain', 'loop', true);
end

function onUpdate()
    if mustHitSection == true then
	         setProperty('defaultCamZoom', 1.2)
	else
		     setProperty('defaultCamZoom', 1)
end
end

