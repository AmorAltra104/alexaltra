function onCreate()

	makeLuaSprite('davebackground','davenightbg',-200,-300)
	addLuaSprite('davebackground',false)

	makeLuaSprite('overlaynight','nightoverlay',-200,-300)
	addLuaSprite('overlaynight',true)
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