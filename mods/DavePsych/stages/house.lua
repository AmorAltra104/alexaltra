sprs = {'dad', 'boyfriend', 'gf'}
nightSongs = {'bonus-song', 'glitch'}
function onCreate()
  makeSpr = makeLuaSprite
  add = addLuaSprite
  isNight = contains(nightSongs, songName:lower())
  
  makeSpr('sky', 'backgrounds/shared/'..(isNight and 'sky_night' or 'sky'), -600, -300)
  setScrollFactor('sky', 0.6, 0.6)
  addLuaSprite('sky')
  
  
  makeSpr('hills', bgPath('hills'), -834, -159)
  setScrollFactor('hills', 0.7, 0.7)
  add('hills')
  
  makeSpr('grassbg', bgPath('grass bg'), -1205, 580)
  add('grassbg')
  
  makeSpr('gates', bgPath('gate'), -755, 250)
  add('gates')
  
  makeSpr('grass', bgPath('grass'), -832, 505)
  add('grass')
  
  callOnLuas('setRatingSetting', {'offset', {0, 250}})
end
function onCreatePost()
  if isNight then
    for k,v in pairs(sprs) do
      setProperty(v..'.color', getColorFromHex('0xFF878787'))
    end
  end
end
function bgPath(img)
  if isNight then
    return 'backgrounds/dave-house/night/'..img;
  end
  return 'backgrounds/dave-house/'..img;
end
function contains(tab, what)
  for k,v in pairs(tab) do
    if what == v then
      return true;
    end
  end
  return;
end