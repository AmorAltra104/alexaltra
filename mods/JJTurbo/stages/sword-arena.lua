function onCreate()
    makeLuaSprite('sky', 'arena-new/sky', -1200, -700)
    setScrollFactor('sky', 0.8, 0.8)
    scaleObject('sky', 1.3, 1.3)

    makeLuaSprite('bg', 'arena-new/bg', -880, -500)
    setScrollFactor('bg', 0.9, 0.9)
    scaleObject('bg', 0.8, 0.9)

    makeAnimatedLuaSprite('crew1', 'arena-new/crowdLeft',  -1080, -600)
    addAnimationByPrefix('crew1', 'cheer1', 'Crowd Left', 24, false)
    scaleObject('crew1', 0.8, 0.8)

    makeAnimatedLuaSprite('crew2', 'arena-new/crowdRight',  460, -600)
    addAnimationByPrefix('crew2', 'cheer2', 'L Crowd Right', 24, false)
    scaleObject('crew2', 0.8, 0.8)


    makeLuaSprite('water', 'arena-new/water', -1200, 200)


    makeLuaSprite('platform', 'arena-new/platform', -500, 170)

    addLuaSprite('sky', false)
    addLuaSprite('bg', false)
    addLuaSprite('water', false)
    addLuaSprite('crew1', false)
    addLuaSprite('crew2', false)
    addLuaSprite('platform', false)
end

local beatHit = false
function onUpdate()
  if not beatHit then
    if (curBeat % 2 == 1) then
      playAnim('crew1', 'cheer1', true)
    elseif (curBeat % 2 == 0) then
      playAnim('crew2', 'cheer2', true)
    end
    beatHit = true
  end
end
function onBeatHit()
  beatHit = false
end