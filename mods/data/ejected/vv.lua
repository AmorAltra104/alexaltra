function onCreate()
	makeAnimatedLuaSprite('bf', 'bg/green/4/video',0,0);
	scaleObject('bf',2.05, 2.05);
	addLuaSprite('bf', false)
    	setObjectCamera('bf', 'other')
end
function onStepHit()
    if curStep == 1 then
	addAnimationByPrefix('bf', 'idle', 'video', 12, false);
end
    if curStep == 256 then
	removeLuaSprite('bf',true)
end
end