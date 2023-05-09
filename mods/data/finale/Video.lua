local allowCountdown = false

function onEndSong()
    if not allowCountdown and not seenCutscene then
        allowCountdown = true;
        startVideo('credits')
        return Function_Stop;
    end
return Function_Continue;
end