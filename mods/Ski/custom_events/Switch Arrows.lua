local currentBeat = 1

function onCreatePost()
	if difficultyName == "Normal" then
		noteTweenX('asdfTweenX1', 4, 460, 0.01, 'linear')		
		noteTweenX('asdfTweenX2', 5, 570, 0.01, 'linear')		
		noteTweenX('asdfTweenX3', 6, 680, 0.01, 'linear')		
		noteTweenX('asdfTweenX4', 7, 790, 0.01, 'linear')
end
end

function onEvent(name, value1, value2)
if difficultyName == "Normal" then
   if name == "Switch Arrows" then
			canSwitch = value1
			currentBeat = 1
end
end
end
					   
function onBeatHit(value1)
		if canSwitch == 'true' then
			if currentBeat == 1 then
				noteTweenX('asdfTweenX1', 4, 260, 1, 'smootherStepInOut')		
				noteTweenX('asdfTweenX2', 5, 370, 1, 'smootherStepInOut')
				noteTweenX('asdfTweenX3', 6, 880, 1, 'smootherStepInOut')	
				noteTweenX('asdfTweenX4', 7, 990, 1, 'smootherStepInOut')
			elseif currentBeat == 3 then
				noteTweenX('asdfTweenX1', 4, 460, 1, 'smootherStepInOut')		
				noteTweenX('asdfTweenX2', 5, 570, 1, 'smootherStepInOut')	
				noteTweenX('asdfTweenX3', 6, 680, 1, 'smootherStepInOut')	
				noteTweenX('asdfTweenX4', 7, 790, 1, 'smootherStepInOut')
end
		if canSwitch == 'false' then
				noteTweenX('asdfTweenX1', 4, 460, 1, 'smootherStepInOut')		
				noteTweenX('asdfTweenX2', 5, 570, 1, 'smootherStepInOut')	
				noteTweenX('asdfTweenX3', 6, 680, 1, 'smootherStepInOut')	
				noteTweenX('asdfTweenX4', 7, 790, 1, 'smootherStepInOut')
end
end
				currentBeat = currentBeat + 1
end

function onUpdate()
	if currentBeat == 5 then
		currentBeat = 1
end
end