function onCreate()

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
        doTweenY('droptween1', 'blackup', -850, 0.5, 'linear')
        doTweenY('droptween2', 'blackdown', 500, 0.5, 'linear')
        setProperty('defaultCamZoom', 1);
    end,
    [128] = function()
        doTweenY('droptween1', 'blackup', -950, 0.5, 'linear')
        doTweenY('droptween2', 'blackdown', 600, 0.5, 'linear')
        setProperty('defaultCamZoom', 0.8);
    end,
    [256] = function()
        doTweenY('droptween1', 'blackup', -1250, 0.5, 'linear')
        doTweenY('droptween2', 'blackdown', 800, 0.5, 'linear')
        setProperty('defaultCamZoom', 1);
        addChromaticAbberationEffect('camgame')
        addChromaticAbberationEffect('camhud', false)
    end


}