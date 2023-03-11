function onCreate()
    makeLuaSprite('elblack', 'thebox',0,-200)
    --addLuaSprite('elblack', true)
    setProperty('elblack.alpha', 1)
    scaleObject('elblack', 2, 2)
    makeLuaSprite('blackup', 'thebox',-300,-950)
    makeLuaSprite('blackdown', 'thebox',-300,600)
    addLuaSprite('blackup')
    addLuaSprite('blackdown')
    setObjectCamera('blackup','camHUD')
    setObjectCamera('blackdown','camHUD')
    
    end
    
    local allowCountdown = false
function onStartCountdown()
	if not allowCountdown and isStoryMode and not seenCutscene then --Block the first countdown
		startVideo('cutscene2');
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end
function onStepHit()
    if stepHitFuncs[curStep] then 
        stepHitFuncs[curStep]()
    end
end

stepHitFuncs = {
    [1] = function()
        doTweenY('droptween1', 'blackup', -850, 0.25, 'linear')
        doTweenY('droptween2', 'blackdown', 450, 0.25, 'linear')
        setProperty('defaultCamZoom', 1);
    end,
    [128] = function()
        doTweenY('droptween1', 'blackup', -1000, 0.25, 'linear')
        doTweenY('droptween2', 'blackdown', 600, 0.25, 'linear')
        setProperty('defaultCamZoom', 1);
    end
}
