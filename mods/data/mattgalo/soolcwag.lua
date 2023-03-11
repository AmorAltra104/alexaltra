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
    
function onStepHit()
    if stepHitFuncs[curStep] then 
        stepHitFuncs[curStep]()
    end
end

stepHitFuncs = {
    [1] = function()
        doTweenAlpha('megalo', 'elblack', 0, 19, 'linear')
        setProperty('defaultCamZoom', 1);
    end,
    [256] = function()
        doTweenY('droptween1', 'blackup', -850, 0.5, 'linear')
        doTweenY('droptween2', 'blackdown', 450, 0.5, 'linear')
        setProperty('defaultCamZoom', 1.2);
    end,
    [320] = function()
        doTweenY('droptween1', 'blackup', -900, 0.5, 'linear')
        doTweenY('droptween2', 'blackdown', 500, 0.5, 'linear')
    end,
    [384] = function()
        doTweenY('droptween1', 'blackup', -950, 0.5, 'linear')
        doTweenY('droptween2', 'blackdown', 550, 0.5, 'linear')
    end,
    [448] = function()
        doTweenY('droptween1', 'blackup', -1000, 0.5, 'linear')
        doTweenY('droptween2', 'blackdown', 600, 0.5, 'linear')
    end,
    [512] = function()
        doTweenY('droptween1', 'blackup', -950, 0.5, 'linear')
        doTweenY('droptween2', 'blackdown', 550, 0.5, 'linear')
        setProperty('defaultCamZoom', 0.9);
    end,

    [1024] = function()
        doTweenY('droptween1', 'blackup', -900, 0.5, 'linear')
        doTweenY('droptween2', 'blackdown', 500, 0.5, 'linear')
        setProperty('defaultCamZoom', 1);
    end,
    [1536] = function()
        doTweenY('droptween1', 'blackup', -850, 0.5, 'linear')
        doTweenY('droptween2', 'blackdown', 450, 0.5, 'linear')
        setProperty('defaultCamZoom', 1.2);
    end,
    [1600] = function()
        doTweenY('droptween1', 'blackup', -900, 0.5, 'linear')
        doTweenY('droptween2', 'blackdown', 500, 0.5, 'linear')
    end,
    [1664] = function()
        doTweenY('droptween1', 'blackup', -950, 0.5, 'linear')
        doTweenY('droptween2', 'blackdown', 550, 0.5, 'linear')
    end,
    [1728] = function()
        doTweenY('droptween1', 'blackup', -950, 0.5, 'linear')
        doTweenY('droptween2', 'blackdown', 550, 0.5, 'linear')
    end,
    [1792] = function()
        doTweenY('droptween1', 'blackup', -950, 0.5, 'linear')
        doTweenY('droptween2', 'blackdown', 550, 0.5, 'linear')
        setProperty('defaultCamZoom', 0.84);
    end


}