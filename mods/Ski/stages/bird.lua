function onCreate()	
	makeLuaSprite('room', 'duck', -3000, -550)
    setProperty('room.antialiasing', false)
	scaleObject('room', 10, 10)
	addLuaSprite('room', false)
	
	makeAnimatedLuaSprite('bird', 'bird', 500, 800)
	addAnimationByPrefix('bird', 'idle', 'idle', 2, true)
	addAnimationByPrefix('bird', 'fly', 'fly', 8, true)
	scaleObject('bird', 15, 15)
	setProperty('bird.antialiasing', false)
	objectPlayAnimation('bird', 'idle', true)
	addLuaSprite('bird', false)
end

function onCreatePost()
	setProperty('timeTxt.visible', false)
	setProperty('showRating', false)
	setProperty('showComboNum', false)
	setProperty('boyfriendGroup.alpha', 0)
	
	makeLuaSprite('barTop', 'bars', 0, -50)
    setObjectCamera('barTop', 'hud')
	scaleObject('barTop', 0.8, 0.8, true)
	addLuaSprite('barTop', false)
	
	makeLuaSprite('barBottom', 'bars', 0, 650)
    setObjectCamera('barBottom', 'hud')
	scaleObject('barBottom', 0.8, 0.8)
	setObjectOrder('barBottom', 20)
	addLuaSprite('barBottom', true)
end

function onSongStart()
	doTweenZoom('camGameTweenZoom', 'camGame', 1, 6.27, 'linear')
end

function onStepHit()
		if curStep == 64 then
			cameraFlash('hud', 'FFFFFF', 0.3, true)
			removeLuaSprite('barTop', true)
			removeLuaSprite('barBottom', true)
			setProperty('timeBar.visible', true)
			setProperty('timeBarBG.visible', true)
			setProperty('showRating', true)
			setProperty('showComboNum', true)
			setProperty('boyfriendGroup.alpha', 1)
			objectPlayAnimation('bird', 'fly', true)
			setProperty('bird.y', 100)
			doTweenX('BGTweenX', 'room', -1500, 12.55, 'linear')
			setProperty('defaultCamZoom', 0.8)
end
end

function onTweenCompleted(tag)
	if tag == 'BGTweenX' then
			doTweenY('BGTweenY', 'room', -800, 6, 'linear')
end
end
		
			  
	         

		          