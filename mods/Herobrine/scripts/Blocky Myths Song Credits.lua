function onSongStart()
    if songName == 'New World' then
    makeLuaSprite('Credit', 'SongCredits/New World_Credit', -420, 500)
    end
 if songName == 'empty-eyes' then
    makeLuaSprite('Credit', 'SongCredits/Empty Eyes_Credit', -420, 500)
end
 if songName == 'Danger' then
    makeLuaSprite('Credit', 'SongCredits/Danger_Credit', -420, 500)
end
 if songName == 'Exitium' then
    makeLuaSprite('Credit', 'SongCredits/Exitium_Credit', -420, 500)
end
 if songName == 'Unknown Being' then
    makeLuaSprite('Credit', 'SongCredits/Unkown Being_Credit', -420, 500)
end
 if songName == 'A Familiar Face' then
    makeLuaSprite('Credit', 'SongCredits/Familiar Face_Credit', -420, 500)
end
if songName == 'Apparition' then
    makeLuaSprite('Credit', 'SongCredits/Apparition_Credit', -420, 500)
end
if songName == 'Alert' then
    makeLuaSprite('Credit', 'SongCredits/Alert_Credit', -420, 500)
end
 if songName == 'Removed' then
    makeLuaSprite('Credit', 'SongCredits/Removed_Credit', -420, 500)
end
 if songName == 'Shadows' then
    makeLuaSprite('Credit', 'SongCredits/Shadows_Credit', -420, 500)
end
    setObjectCamera('Credit', 'other')
    scaleObject('Credit', 0.3, 0.3)
    addLuaSprite('Credit', true)
    doTweenX('movetween', 'Credit', -5, 1, 'CircInOut')
    runTimer('Lag', 4, 1)
end
        function onTweenCompleted(tag)
            if tag == 'movetween2' then
                removeLuaSprite('Creditt', true)
            end
        end
        function onTimerCompleted(tag, loops, loopsLeft)
            if tag == 'Lag' then
            doTweenX('movetween2', 'Credit', -699, 1, 'CircInOut')
            end
        end

        function onCreatePost()
            --death animation
            if songName == 'Removed' then
            setPropertyFromClass('GameOverSubstate', 'characterName', 'Notch-dead');
            else
                setPropertyFromClass('GameOverSubstate', 'characterName', 'bfmine-dead');
            end
        end