function onEvent(n)
    if n == 'BF go away' then
        doTweenAlpha('bfAlpha', 'boyfriend', 0, 0.001)
        triggerEvent('Change Character', 'gf', 'gf-car')
        setProperty('gff.visible', true)
        setProperty('bf.visible', true)
        objectPlayAnimation('gff', 'idle', true);
        objectPlayAnimation('bf', 'idle', true);
        triggerEvent('Change Character', 'dad', 'impostor3')
        triggerEvent('Play Animation', 'liveReaction', 'dad')
        doTweenAlpha('hudAlpha', 'camHUD', 0, 0.5)
        runTimer('666', 2.5, 1)
    end
end

function onTimerCompleted(tag)
    if tag == '666' then
        setProperty('bf.visible', false)
    end
end