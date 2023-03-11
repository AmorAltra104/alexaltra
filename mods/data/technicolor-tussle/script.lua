--change "2" to name of vid 
--local allowcountdown = true
local allowCountdown = false
function onStartCountdown()
    if not allowCountdown and isStoryMode and not seenCutscene then 
        startVideo('2');
        allowCountdown = true;
        return Function_Stop;
    end
    return Function_Continue;
end