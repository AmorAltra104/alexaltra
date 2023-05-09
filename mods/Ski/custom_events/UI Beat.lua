local canBopUI = 'false'

function onEvent(name, value1, value2)
   if name == 'UI Beat' then
           canBopUI = value1
		   bopUIint = value2
end
end

function onBeatHit()
      if canBopUI == 'true' then
	        triggerEvent('Add Camera Zoom', bopUIint / 2, bopUIint)
end
end