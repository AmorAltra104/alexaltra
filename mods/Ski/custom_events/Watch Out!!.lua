function onCreate()
	makeLuaSprite('dodgeWarning', 'dodgeWarning', 0, 0)
	setObjectCamera('dodgeWarning', 'hud')
	setProperty('dodgeWarning.alpha', 0)
	addLuaSprite('dodgeWarning', true)
end

function onEvent(name, value1, value2)
   if name == "Watch Out!!" then
           setProperty('dodgeWarning.alpha', 1)
		   runTimer('warningTimerDodge', value1, 1)
		   playSound('alert', 1, 'dodgeWarning')
end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'warningTimerDodge' then
         setProperty('dodgeWarning.alpha', 0)
end
end
		