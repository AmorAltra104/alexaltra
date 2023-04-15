function onCreate()
  makeLuaSprite('sky', 'backgrounds/shared/sky_space', -1724, -971)
  setProperty('sky.antialiasing', false)
  scaleObject('sky', 10, 10)
  setScrollFactor('sky', 1.2, 1.2)
  addLuaSprite('sky')
  
  makeLuaSprite('ground', 'backgrounds/dave-house/land', 675, 555)
  scaleObject('ground', 0.9, 0.9)
  addLuaSprite('ground')
end
function onBeatHit()
  if curBeat == 142 then
    
    playSound('dead')
  end
  if curBeat == 143 then
    setProperty('dad.skipDance', true)
  end
end