local curDays = {'SUN', 'MON', 'TUE', 'WED', 'THU', 'FRI', 'SAT'}  

function onCreate()
	makeLuaSprite('room', 'papyrus_Room', -700, -550)
    setProperty('room.antialiasing', false)
	scaleObject('room', 10, 10)
	addLuaSprite('room', false)
	
	if os.date('*t').hour >= 6 and os.date('*t').hour <= 18 then 
		makeLuaSprite('timeIcon', 'DATE/sun', 450, -20)
		setProperty('timeIcon.antialiasing', false)
		scaleObject('timeIcon', 5, 5)
		setObjectCamera('timeIcon', 'hud')
		addLuaSprite('timeIcon', true)
	else
		makeLuaSprite('timeIcon', 'DATE/moon', 450, -20)
		setProperty('timeIcon.antialiasing', false)
		scaleObject('timeIcon', 5, 5)
		setObjectCamera('timeIcon', 'hud')
		addLuaSprite('timeIcon', true)
end
	doTweenAngle('timeIconAngleTween', 'timeIcon', 70, 10, 'smootherStepInOut')

		makeLuaSprite('bar', 'DATE/bar', 35, 200)
		setProperty('bar.antialiasing', false)
		scaleObject('bar', 1.5, 1.5)
		setObjectCamera('bar', 'hud')
		addLuaSprite('bar', true)	
		
		makeLuaSprite('bar1', 'DATE/barBlack', 38, 203)
		setProperty('bar1.antialiasing', false)
		scaleObject('bar1', 1.5, 1.5)
		setObjectCamera('bar1', 'hud')
		addLuaSprite('bar1', true)
		doTweenX('bar1TweenScale', 'bar1.scale', 0.25, 1, 'smootherStepInOut') 

		makeLuaSprite('egg', 'DATE/egg', 90, 250)
		setProperty('egg.antialiasing', false)
		scaleObject('egg', 5, 5)
		setObjectCamera('egg', 'hud')
		addLuaSprite('egg', true)		
	
	makeLuaText('dayText', curDays[os.date('*t').wday], 500, 450, 70)
	setTextFont('dayText', 'sans.otf')
	setTextSize('dayText', 40)
	setTextBorder('dayText', 4, '000000')
	addLuaText('dayText')
	
	makeLuaText('text1', "REEL IT IN!", 500, -100, 150)
	setTextFont('text1', 'sans.otf')
	setTextSize('text1', 40)
	setTextBorder('text1', 4, '000000')
	addLuaText('text1')
end

function onTweenCompleted(tag)
	if tag == 'timeIconAngleTween' then
		doTweenAngle('timeIconAngleTween1', 'timeIcon', 0, 10, 'smootherStepInOut')
	elseif tag == 'timeIconAngleTween1' then
		doTweenAngle('timeIconAngleTween', 'timeIcon', 70, 10, 'smootherStepInOut') 		
end
	if tag == 'bar1TweenScale' then
		doTweenX('bar1TweenScale1', 'bar1.scale', 1.5, 1, 'smootherStepInOut') 	
	elseif tag == 'bar1TweenScale1' then
		doTweenX('bar1TweenScale', 'bar1.scale', 0.25, 1, 'smootherStepInOut') 			
end
end

function onUpdate()
	updateHitbox('bar1')
end
			  
	         

		          