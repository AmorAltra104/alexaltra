function onCreate()
    setProperty('camHUD.alpha', 0)
    setProperty('boyfriendGroup.alpha', 0)
    setProperty('skipCountdown', true)
	
		 makeAnimatedLuaSprite('room', 'charaHall', -700, -800)
		 addAnimationByPrefix('room', 'BG LOOP', 'BG LOOP', 8, true)
	     objectPlayAnimation('room', 'BG LOOP', true)
		 setProperty('room.alpha', 0)
		 setProperty('room.antialiasing', false)
		 scaleObject('room', 2, 2)
		 addLuaSprite('room', false)
	
	makeLuaSprite('empty', 'empty', 0, 0)
	setObjectCamera('empty', 'other')
	scaleObject('empty', 0.8, 0.8)
	addLuaSprite('empty', false)
	
	makeLuaSprite('skiDark', 'skiDark', 450, 650)
	addLuaSprite('skiDark', true)
	
	makeLuaSprite('fade', 'fadeFG', 450, 400)
	addLuaSprite('fade', true)
end

function onSongStart()
        doTweenAlpha('emptyTweenAlpha', 'empty', 0, 5, 'linear')
		doTweenZoom('camGameTweenZoom', 'camGame', 1, 25, 'linear')
end

function onStepHit()
            if curStep == 240 then
			            doTweenAlpha('emptyTweenAlpha1', 'empty', 1, 3, 'linear')
            elseif curStep == 268 then
			            doTweenAlpha('emptyTweenAlpha', 'empty', 0, 0.1, 'linear')
end
end

function onTweenCompleted(tag)
        if tag == 'emptyTweenAlpha1' then
		        removeLuaSprite('skiDark', true)
		        removeLuaSprite('fade', true)
				setProperty('camHUD.alpha', 1)
                setProperty('boyfriendGroup.alpha', 1)
			    setProperty('room.alpha', 1)
end
end
			        
			  
	         

		          