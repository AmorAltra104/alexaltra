function onEndSong()
    if not allowCountdown and not seenCutscene then 
        allowCountdown = true;  
        doTweenAlpha('HUDGoAway', 'camHUD', 0, 0.5)
        playSound('rhm_crash', 1)
        triggerEvent('Play Animation', 'armed', 'dad')
        objectPlayAnimation('ellie', 'armed', true);
        runTimer('icu', 2, 1)
        pos = getPropertyFromClass('Conductor', 'songPosition') 
		setPropertyFromClass('Conductor', 'songPosition', pos) -- it is counted by milliseconds, 1000 = 1 second
		setPropertyFromClass('flixel.FlxG', 'sound.music.time', pos)
		setProperty('vocals.time', pos)
		setPropertyFromClass('flixel.FlxG', 'sound.music.volume', 0)
		setProperty('vocals.volume', 0)
        return Function_Stop;
    end
return Function_Continue;
end

function onCreatePost()
    makeAnimatedLuaSprite('icu', 'bg/images/henry/i_schee_u_enry', 235, 490)--创建一个普通图层 设定图层的内容和位置
    addLuaSprite('icu', true)--设定图层的标签(既标签)
    setScrollFactor('icu', 1, 1)--设定图层的滚动速度 让图层看起来立体一点
    scaleObject('icu', 1, 1);--设置图层的大小
    addAnimationByPrefix('icu', 'idle', 'rhm intro shadow', 24, true)--添加一个动作
    setProperty('icu.visible', false)
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'icu' then
        setProperty('icu.visible', true)
        objectPlayAnimation('icu', 'idle', true);
        runTimer('black', 0.5, 1)
        triggerEvent('Screen Shake', '0.5,0.5', '0.5,0.5')
    end
    if tag == 'black' then
        makeLuaSprite('black', nil, 0, 0)
        makeGraphic('black', 1280, 720, '000000')
        addLuaSprite('black', true)
        setObjectCamera('black', 'other')
	    setProperty('black.alpha', 0)
	    doTweenAlpha('black', 'black', 1, 0.2)
	    runTimer('endSong', 1.5, 1)
	end
	if tag == 'endSong' then
	    endSong()
	end
end
	