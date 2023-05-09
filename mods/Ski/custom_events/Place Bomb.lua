function onEvent(name, value1, value2)
   if name == "Place Bomb" then
			doTweenY('blockTweenY', 'block', 0, 0.8, 'linear')
end
end

canShoot = true

function onCreate()
	makeLuaSprite('yellowHeart', 'yellowHeart', 890, 30)
	setObjectCamera('yellowHeart', 'hud')
	scaleObject('yellowHeart', 0.8, 0.8)
	addLuaSprite('yellowHeart', false)
	
	makeLuaSprite('yellowBullet', 'yellowBullet', 940, 100)
	setObjectCamera('yellowBullet', 'hud')
	setProperty('yellowBullet.antialiasing', false)
	scaleObject('yellowBullet', 5, 5)
	setProperty('yellowBullet.flipY', true)
	setProperty('yellowBullet.alpha', 0)
	addLuaSprite('yellowBullet', false)
	
	makeLuaSprite('block', 'block', 900, 700)
	setObjectCamera('block', 'hud')
	setProperty('block.antialiasing', false)
	scaleObject('block', 0.8, 0.8)
	addLuaSprite('block', true)
end

function onUpdate()
	if keyboardJustPressed('SPACE') and curStep > 219 and canShoot == true then
		updateHitbox('yellowBullet')
		playSound('shoot', 0.7, 'yellowShoot')
		doTweenY('yellowBulletTweenY', 'yellowBullet', 700, 0.5, 'linear')
		setProperty('yellowBullet.alpha', 1)
		canShoot = false
end
	if getProperty('yellowBullet.y') >= getProperty('block.y') and canShoot == false then
		cancelTween('blockTweenY')
        cancelTween('yellowBulletTweenY')
		setProperty('yellowBullet.y', 50)
		setProperty('yellowBullet.y', 50)	
		setProperty('yellowBullet.alpha', 0)
		setProperty('block.y', 700)
        canShoot = true
		playSound('blockBreak', 1, 'breakBlock')			
end
end	

function onTweenCompleted(tag)
		if tag == 'yellowBulletTweenY' then
			setProperty('yellowBullet.y', 50)
			setProperty('yellowBullet.alpha', 0)
			canShoot = true
end
end
					   