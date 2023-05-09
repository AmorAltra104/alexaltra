function onCreate()
	makeLuaSprite('BG', 'Uwa/BG', -200, 400)
	setProperty('BG.antialiasing', false)
	scaleObject('BG', 2, 2)
	addLuaSprite('BG', false)
	
	makeAnimatedLuaSprite('uwaBeat', 'uwaBeat', 0, 300);
	addAnimationByPrefix('uwaBeat','Beat','dd instance 1',24,false);
	setObjectCamera('uwaBeat','hud')
	setBlendMode('uwaBeat','add')
	setProperty('uwaBeat.alpha',0.5)
	addLuaSprite('uwaBeat', false)
	doTweenColor('FGTween', 'uwaBeat', 'A7FF93', 1, 'linear')
	
	makeAnimatedLuaSprite('tobyDog', 'Uwa/toby', 400, 1000)
    addAnimationByPrefix('tobyDog', 'hotIdle', 'hot', 2, true)
	addAnimationByPrefix('tobyDog', 'warmIdle', 'warm', 4, true)
    addAnimationByPrefix('tobyDog', 'coldIdle', 'cold', 4, true)
	objectPlayAnimation('tobyDog', 'warmIdle', true)
	setProperty('tobyDog.antialiasing', false)
	scaleObject('tobyDog', 12, 12)
	addLuaSprite('tobyDog', false)
end

function onStepHit()
       if curStep == 512 then
	          doTweenColor('FGTween', 'uwaBeat', '7CB5FF', 1, 'linear')
			  objectPlayAnimation('tobyDog', 'coldIdle', true)
			  setProperty('tobyDog.y', 990)
	   elseif curStep == 790 then
			  setProperty('tobyDog.y', 1040)
			  setProperty('tobyDog.x', 370)
	          doTweenColor('FGTween', 'uwaBeat', 'FFD06D', 1, 'linear')
			  objectPlayAnimation('tobyDog', 'hotIdle', true)
end
end

function onBeatHit()
	if curBeat % 2 == 0 then
		objectPlayAnimation('uwaBeat', 'Beat' ,true)
end
end