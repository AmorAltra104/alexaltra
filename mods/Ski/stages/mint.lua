function onCreate()	
	makeLuaSprite('room', 'mint', -900, -400)
    setProperty('room.antialiasing', false)
	scaleObject('room', 10, 10)
	addLuaSprite('room', false)
	
	makeLuaSprite('tower', 'mintTower', 430, -8000)
    setProperty('tower.antialiasing', false)
	scaleObject('tower', 10, 10)
	setProperty('tower.alpha', 0)
	addLuaSprite('tower', false)
	
	makeAnimatedLuaSprite('jetpack', 'jetpack', 530, 800)
	addAnimationByPrefix('jetpack', 'boost', 'boost', 12, true)
	scaleObject('jetpack', 15, 15)
	setProperty('jetpack.antialiasing', false)
	objectPlayAnimation('jetpack', 'boost', true)
	setProperty('jetpack.alpha', 0)
	addLuaSprite('jetpack', false)
	
	doTweenY('towerTweenY', 'tower', 0, 5, 'linear')
end
			  
function onStepHit()
		if curStep == 127 then
			cameraFlash('game', 'FFFFFF', 1, true)
			setProperty('defaultCamZoom', 0.6)
			setProperty('room.alpha', 0)
			setProperty('tower.alpha', 1)
			setProperty('jetpack.alpha', 1)
			triggerEvent('Change Character', '0', 'ski-bird')
end
end

function onTweenCompleted(tag)
	if tag == 'towerTweenY' then
		setProperty('tower.y', -8000)
		doTweenY('towerTweenY', 'tower', 0, 5, 'linear')
end
end
		
	         

		          