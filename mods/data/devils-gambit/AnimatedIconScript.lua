--SCRIPT BY Kevin Kuntz#7641


function onCreate()
	if dadName == 'nightmare-cuphead' then
	makeAnimatedLuaSprite('animatedicon', 'icons/icon-cupNM', getProperty('iconP2.x'), getProperty('iconP2.y'))
	addAnimationByPrefix('animatedicon', 'normal', 'C-Nightmare instance', 24, true)
	addAnimationByPrefix('animatedicon', 'losing', 'C-Nightmare instance', 24, true)
	setObjectCamera('animatedicon', 'hud')
	setObjectOrder('animatediconBF',getObjectOrder('cuphealthbar'))
	end
end

function onUpdate(elapsed)
	if dadName == 'nightmare-cuphead' then
		addLuaSprite('animatedicon', true)
		setObjectOrder('healthBarBG', 1)
		setObjectOrder('healthBar', 2)
		setObjectOrder('iconP1', 3)
		setProperty('iconP2.visible', false)
			if getProperty('health') > 1.6 then
				objectPlayAnimation('animatedicon', 'normal', false)
			else
				objectPlayAnimation('animatedicon', 'normal', false)
			end
		setProperty('animatedicon.x', getProperty('iconP2.x'))
		setProperty('animatedicon.angle', getProperty('iconP2.angle'))
		setProperty('animatedicon.y', getProperty('iconP2.y')+6)
		setProperty('animatedicon.scale.x', getProperty('iconP2.scale.x'))
		setProperty('animatedicon.scale.y', getProperty('iconP2.scale.y'))
	else
		setProperty('iconP2.visible', true)
		removeLuaSprite('animatedicon', false)
	end
end