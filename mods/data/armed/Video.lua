local allowCountdown = false
function onEndSong()
    if not allowCountdown and isStoryMode and not seenCutscene then 
        startVideo('henryend');
        allowCountdown = true;
     return Function_Stop;
     end
return Function_Continue;
end
