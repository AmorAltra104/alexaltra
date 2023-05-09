function onEvent(name, value1, value2)
	if difficultyName == "Normal" then
		if name == "Flip Strumline" then
			if value1 == 'true' then
				playSound('cameraFlip', 1, 'flip')
				doTweenAngle('camHUDTweenAngle', 'camHUD', 180, 0.1, 'smootherStepInOut')
				noteTweenX('note1FlipTween', 4, 1080, 0.01, 'linear')
				noteTweenX('note2FlipTween', 5, 970, 0.01, 'linear')
				noteTweenX('note3FlipTween', 6, 860, 0.01, 'linear')
				noteTweenX('note4FlipTween', 7, 750, 0.01, 'linear')
				setPropertyFromGroup('playerStrums', 0, 'flipX', true)
				setPropertyFromGroup('playerStrums', 1, 'flipX', true)
				setPropertyFromGroup('playerStrums', 2, 'flipX', true)
				setPropertyFromGroup('playerStrums', 3, 'flipX', true)
			for i= 0, getProperty('unspawnNotes.length')-1 do
				setPropertyFromGroup('unspawnNotes', i, 'flipX', true)
end
end
			if value1 == 'false' then
				playSound('cameraFlip', 1, 'flip')
				doTweenAngle('camHUDTweenAngle', 'camHUD', 0, 0.1, 'smootherStepInOut')
				noteTweenX('note1FlipTween', 4, 750, 0.01, 'linear')
				noteTweenX('note2FlipTween', 5, 860, 0.01, 'linear')
				noteTweenX('note3FlipTween', 6, 970, 0.01, 'linear')
				noteTweenX('note4FlipTween', 7, 1080, 0.01, 'linear')
				setPropertyFromGroup('playerStrums', 0, 'flipX', false)
				setPropertyFromGroup('playerStrums', 1, 'flipX', false)
				setPropertyFromGroup('playerStrums', 2, 'flipX', false)
				setPropertyFromGroup('playerStrums', 3, 'flipX', false)
			for i= 0, getProperty('unspawnNotes.length')-1 do
				setPropertyFromGroup('unspawnNotes', i, 'flipX', false)
end
end
end
end
end