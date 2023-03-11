local floatD = 5
local dadY = 0
function onCreate()

	makeLuaSprite('cheaterbackground', 'cheater', -400, -300)
    addLuaSprite('cheaterbackground')
    addGlitchEffect('cheaterbackground',2,5,0.1)

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

function opponentNoteHit()
    setProperty('health', getProperty('health') - 0.005)
end

function onUpdate()
	floatD = floatD + 25
	dadY = getProperty('dad.y')
	setProperty('dad.y',  dadY + math.sin(floatD))
end