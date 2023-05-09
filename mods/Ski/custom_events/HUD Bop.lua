local beatUI = 'false'
local beatNumber = 0

function onEvent(name, value1, value2)
   if name == 'HUD Bop' then
           beatUI = value1
end
end

function onBeatHit()
		if beatUI == 'true' then
			if beatNumber == 0 then
				doTweenAngle('camHUDTweenAngle', 'camHUD', 1, 0.001, 'circInOut')
				triggerEvent('Add Camera Zoom', '', 0.1) 
				beatNumber = 1
			elseif beatNumber == 1 then
				doTweenAngle('camHUDTweenAngle1', 'camHUD', -1, 0.001, 'circInOut')
				triggerEvent('Add Camera Zoom', '', 0.1) 
				beatNumber = 0
end
end
		if beatUI == 'false' then
				doTweenAngle('camHUDTweenAngle', 'camHUD', 0, 0.05, 'circInOut')
end
end