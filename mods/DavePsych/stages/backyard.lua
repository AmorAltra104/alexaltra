--rano stage

sprs = {'boyfriend', 'dad', 'gf'}
function onCreatePost()
  makeLuaSprite('sky', 'backgrounds/shared/sky', 0, -300)
  setScrollFactor('sky', 0.3, 0.3)
  addLuaSprite('sky')
  
  makeLuaSprite('sky_sunset', 'backgrounds/shared/sky_sunset', 0, -250)
  setScrollFactor('sky_sunset', 0.3, 0.3)
  addLuaSprite('sky_sunset')
  
  makeLuaSprite('sky_night', 'backgrounds/shared/sky_festival', 0, -300)
  setScrollFactor('sky_night', 0.3, 0.3)
  addLuaSprite('sky_night')
  
  makeSpr('hills', 'hills', -2110.6, -375.95)
  setScrollFactor('hills', 0.5, 0.5)
  add('hills')
  
  makeSpr('grass', 'supergrass', -1517, 221)
  add('grass')
  
  makeSpr('gates', 'gates', -814, -57)
  add('gates')
  
  makeSpr('house', 'house', -1755, -254)
  add('house')
  
  makeSpr('grill', 'grill', -1219, 520)
  add('grill')
  
  for k,v in pairs(sprs) do
    setProperty(v..'.color', getColorFromHex('0xFF878787'))
  end
  
  callOnLuas('setRatingSetting', {'offset', {-600, 0}})
end
stupidIdiotLength = 75
function onSongStart()
  for k,v in pairs(sprs) do
    doTweenColor(v..'_sunset', v, 'FF8FB2', stupidIdiotLength)
  end
  doTweenAlpha('fuckin', 'sky_night', 0, stupidIdiotLength)
  runTimer('sunsetTween', stupidIdiotLength)
end
function onBeatHit()
  if curBeat == 448 then
    setProperty('dad.skipDance', true)
  end
end
function onTimerCompleted(tag)
  if tag == 'sunsetTween' then
    for k,v in pairs(sprs) do
      doTweenColor(v..'_sunset', v, 'FFFFFF', stupidIdiotLength)
    end
    doTweenAlpha('fuckin2', 'sky_sunset', 0, stupidIdiotLength)
  end
end
function add(tag)
  addLuaSprite(tag)
end
function makeSpr(tag, image, x, y, penis)
  local path = penis and image or 'backgrounds/backyard/'..image
  makeLuaSprite(tag, path, x, y)
  table.insert(sprs, tag)
end