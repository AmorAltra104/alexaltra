function onEndSong()
    if isStoryMode and not seenCutscene then
        startVideo('ending screen')
        seenCutscene = true
        return Function_Stop
    end
    return Function_Continue
end
