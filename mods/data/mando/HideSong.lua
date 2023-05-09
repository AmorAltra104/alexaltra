henryWeekList = {'Mando', 'Titular', 'Greatest Plan', 'Reinforcements', 'Armed'}

function onUpdate()
    if Pause == true then
        setPropertyFromClass('Conductor', 'songPosition', pos)
		setPropertyFromClass('flixel.FlxG', 'sound.music.time', pos)
		setProperty('vocals.time', pos)
		setPropertyFromClass('flixel.FlxG', 'sound.music.volume', 0)
		setProperty('vocals.volume', 0)
	end
end

function onCreatePost()
    addCharacterToList('reaction', 'dad');
    
    makeAnimatedLuaSprite('white', 'bg/images/airship/newAirship/white_awkward', 340, 450)
    addLuaSprite('white', false)
    setScrollFactor('white', 1, 1)
    scaleObject('white', 1, 1);
    addAnimationByPrefix('white', 'idle', 'fetal position ', 24, true)
    addAnimationByPrefix('white', '6', 'white stare', 24, true)
end

function onUpdatePost()
    if mouseClicked('left') and (getMouseX('camGame') > 1350 and getMouseX('camGame') < 1460) and (getMouseY('camGame') > 480 and getMouseY('camGame') < 585) and isStoryMode then
        pos = getPropertyFromClass('Conductor', 'songPosition')
        Pause = true
        triggerEvent('Change Character', 'dad', 'reaction');
        triggerEvent('Play Animation', 'first', 'dad'); 
        playSound('teleport_sound', 1)
        doTweenAlpha('HUDA', 'camHUD', 0, 0.5, 'CircInOut')
        runTimer('bfGoAway', 2.5)
        runTimer('EndMENU', 6.5)
        runTimer('secondAnim', 3.2)
        setProperty('Teleporter.visible', false)
        setPropertyFromClass('PlayState', 'storyPlaylist', henryWeekList)
        end
    return Function_Stop
end

function onTimerCompleted(tag)
    if tag == 'EndMENU' then
        endSong()
    end
    if tag == 'bfGoAway' then
        doTweenAlpha('bfA', 'boyfriend', 0, 0.75, 'CircInOut')
        doTweenAlpha('gfA', 'gf', 0, 0.75, 'CircInOut')
        objectPlayAnimation('white', '6', true);
        triggerEvent('Play Animation', 'second', 'dad'); 
    end
    if tag == 'secondAnim' then
        triggerEvent('Play Animation', 'third', 'dad'); 
    end
end
