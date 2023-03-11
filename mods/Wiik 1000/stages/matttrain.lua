function onCreate()

makeLuaSprite('bg','sky',-600,-250)
addLuaSprite('bg')
scaleObject('bg', 2,2)
makeAnimatedLuaSprite('building', 'wiik1000building', -2900, -100)
addAnimationByPrefix('building',  'moving', 'building moving', 24, true)
addLuaSprite('building', false)
scaleObject('building', 1.2,1.2)
makeAnimatedLuaSprite('train', 'wiik1000train',750, 700)
addAnimationByPrefix('train',  'vroom', 'train', 24, true)
addLuaSprite('train', true)
makeAnimatedLuaSprite('train2', 'wiik1000train',-530, 700)
addAnimationByPrefix('train2',  'vroom1', 'train', 24, true)
addLuaSprite('train2', true)
makeAnimatedLuaSprite('train3', 'wiik1000train',2250, 700)
addAnimationByPrefix('train3',  'vroom', 'train', 24, true)
addLuaSprite('train3', true)

end

function onStepHit()

    if (curStep) == 4 then
        objectPlayAnimation('building', 'moving')
        objectPlayAnimation('train', 'vroom')
        objectPlayAnimation('train2', 'vroom1')
    end
end