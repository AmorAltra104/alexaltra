local floatD = 5
local dadY = 0
function onCreate()

	makeLuaSprite('unfairnessbackground','unfairbg',-400,-300)
	addLuaSprite('unfairnessbackground',false)
	addGlitchEffect('unfairnessbackground',2,5,0.1)

end

function onBeatHit( ... )--for every beat
   -- body
end

function onStepHit( ... )--for every step
	-- body
end

function onUpdate( ... )
	-- body
end

function onUpdate()
	floatD = floatD + 25
	dadY = getProperty('dad.y')
	setProperty('dad.y',  dadY + math.sin(floatD))
end