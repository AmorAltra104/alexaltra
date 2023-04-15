
function onEvent(name, value1, value2)
    if name == 'Text Event' then
        text = value1;
        duration = tonumber(value2);
        runTimer('duration', duration);
        if duration == 0 then
        end

        if duration < 0 then
        end

        if duration > 0 then
            makeLuaText('le_text', text, 800, -500, 500)
            setTextSize('le_text', 50)
            setTextFont('le_text', 'vcr.ttf')
            setTextAlignment('le_text', 'center')
            addLuaText('le_text');
            doTweenX('linear', 'le_text', 250, -1, 'linear')
            runTimer('le_text_wait', duration, 0.5) 
        end
    end
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'le_text_wait' then
        removeLuaText('le_text', text, 250, -1)
    end
end