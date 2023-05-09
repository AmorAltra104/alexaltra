function onCreatePost()
    makeLuaSprite('stag2e', 'bg/space', -620, 680)
    addLuaSprite('stag2e', false)
    scaleObject('stag2e',3, 3);

    makeLuaSprite('stage', 'bg/normalOne', -670, 700)
    addLuaSprite('stage', false)
    scaleObject('stage', 3, 3);

    makeAnimatedLuaSprite('snow', 'bg/stockingFire', -670, 700)
	addLuaSprite('snow', true)
    addAnimationByPrefix('snow', 'idle', 'stocking fire', 24, true)
	scaleObject('snow', 3, 3);

    makeAnimatedLuaSprite('guys', 'bg/people', -670, 700)
	addLuaSprite('guys', true)
    addAnimationByPrefix('guys', 'idle', 'the guys', 24, true)
	scaleObject('guys', 3, 3);
end

function onUpdate()
    setProperty('gf.alpha', 0)
end