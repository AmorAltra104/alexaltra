function onStepHit()
    if curStep == 2351 then
        playSound('teleport_sound', 1)
        doTweenAlpha('HUDA', 'camHUD', 0, 0.5, 'CircInOut')
        runTimer('bfGoAway', 2.5)
    end
end

function onTimerCompleted(tag)
    if tag == 'bfGoAway' then
        doTweenAlpha('bfA', 'boyfriend', 0, 0.75, 'CircInOut')
        doTweenAlpha('gfA', 'gf', 0, 0.75, 'CircInOut') 
    end
end