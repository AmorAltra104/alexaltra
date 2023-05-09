function onCreate()
	makeAnimatedLuaSprite('bf', 'characters/BOYFRIEND',1100,520);
	scaleObject('bf',1, 1);
	addAnimationByPrefix('bf', 'idle', 'BF idle dance', 24, false);
	      addLuaSprite('bf', true)
end
function onBeatHit()
    if curBeat % 2 == 0 then
        objectPlayAnimation('bf', 'idle', false)
    end
end
function onCountdownTick(counter)
    if counter % 2 == 0 then
        objectPlayAnimation('bf', 'idle', false)
    end
end
function onStepHit()
    if curStep == 50 then
	removeLuaSprite('bf',true)
end
end