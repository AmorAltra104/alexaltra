function onCreatePost()
    setProperty('ellie.visible', false)
end

function onStepHit()
    if curStep == 697 then
        setProperty('ellie.visible', true)
        objectPlayAnimation('ellie', 'enter', true);
    end
    if curStep == 703 then
        setProperty('ellie.y', 225)
    end
end