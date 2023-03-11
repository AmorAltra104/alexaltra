function onCreate()
    makeLuaSprite('elblack', 'thebox',-400,-200)
    addLuaSprite('elblack', true)
    setProperty('elblack.alpha', 1)
    scaleObject('elblack', 3, 3)
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
		startVideo('cutscene1');
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
        doTweenAlpha('nostalgiatween', 'elblack', 0, 22, 'linear')
        setProperty('defaultCamZoom', 1);
    end,
    [256] = function()
        doTweenY('droptween1', 'blackup', -850, 0.5, 'linear')
        doTweenY('droptween2', 'blackdown', 500, 0.5, 'linear')
        setProperty('defaultCamZoom', 1.2);
    end,
    [272] = function()
        doTweenY('droptween1', 'blackup', -1250, 0.5, 'linear')
        doTweenY('droptween2', 'blackdown', 800, 0.5, 'linear')
        setProperty('defaultCamZoom', 0.8);
    end,
    [768] = function()
        doTweenY('droptween1', 'blackup', -850, 0.5, 'linear')
        doTweenY('droptween2', 'blackdown', 500, 0.5, 'linear')
        setProperty('defaultCamZoom', 1.2);
    end,
    [800] = function()
        doTweenY('droptween1', 'blackup', -1250, 0.5, 'linear')
        doTweenY('droptween2', 'blackdown', 800, 0.5, 'linear')
        setProperty('defaultCamZoom', 0.8);
    end,
    [896] = function()
        doTweenY('droptween1', 'blackup', -850, 0.5, 'linear')
        doTweenY('droptween2', 'blackdown', 500, 0.5, 'linear')
        setProperty('defaultCamZoom', 1.2);
    end,
    [1024] = function()
        doTweenY('droptween1', 'blackup', -1250, 0.5, 'linear')
        doTweenY('droptween2', 'blackdown', 800, 0.5, 'linear')
        setProperty('defaultCamZoom', 1);
    end,
    [1040] = function()
        setProperty('defaultCamZoom', 0.7);
    end,
    [1280] = function()
        doTweenY('droptween1', 'blackup', -850, 0.5, 'linear')
        doTweenY('droptween2', 'blackdown', 500, 0.5, 'linear')
        setProperty('defaultCamZoom', 1.2);
    end,
    [1296] = function()
        doTweenY('droptween1', 'blackup', -1250, 0.5, 'linear')
        doTweenY('droptween2', 'blackdown', 800, 0.5, 'linear')
        setProperty('defaultCamZoom', 1);
    end,
    [1408] = function()
        setProperty('defaultCamZoom', 0.8);
    end
    


}