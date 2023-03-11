function onCreate()
    triggerEvent('Camera Follow Pos',getProperty('boyfriend.x') - 300,getProperty('boyfriend.y') + 100)
end
function onStepHit()
    if curStep == 128 then
        triggerEvent('Camera Follow Pos','','')
    end
end