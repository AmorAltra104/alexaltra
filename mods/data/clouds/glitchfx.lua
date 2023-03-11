function onCreate()
    
end

function onStepHit()
    if stepHitFuncs[curStep] then 
        stepHitFuncs[curStep]()
    end
end

stepHitFuncs = {
    [256] = function()

            addChromaticAbberationEffect('camgame')
            addChromaticAbberationEffect('camhud', false)
            
    end
}