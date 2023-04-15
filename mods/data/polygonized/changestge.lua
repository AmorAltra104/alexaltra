sprs = {'dad', 'boyfriend', 'gf'}
houseSprs = {}
nightSongs = {'bonus-song', 'glitch'}
function onCreatePost()
  runTimer('bigch', 0.01)
end
function onTimerCompleted(tag)
  if tag == 'bigch' then
    makeSpr = makeLuaSprite
    -- add = addLuaSprite
    isNight = true
    
    makeSpr('sky', 'backgrounds/shared/'..(isNight and 'sky_night' or 'sky'), -600, -300)
    setScrollFactor('sky', 0.6, 0.6)
    add('sky')
    
    
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
end
function onBeatHit()
  if curBeat == 608 then
    for k,v in pairs(sprs) do
      setProperty(v..'.color', getColorFromHex('0xFF878787'))
    end
    for k,v in pairs(houseSprs) do
      doTweenAlpha('asdfasg'..k, v, 1, 1)
    end
    runHaxeCode[[
      for(bitch in game.opponentStrums)
      {
        bitch.kill();
        bitch.destroy();
      }
      game.generateStaticArrows(0);
    ]]
    doTweenX('sdfgsdh', 'boyfriendGroup', 843, 1)
    doTweenY('agfdsgfd', 'boyfriendGroup', 270, 1)
    doTweenX('asdhsdfgghdf', 'gfGroup', 300, 1)
    doTweenY('adhfdfgfds', 'gfGroup', -60, 1)
    doTweenX('agsdgds', 'dadGroup', 50, 1)
    doTweenY('sfasdgdf', 'dadGroup', 270, 1)
    setProperty('boyfriend.skipDance', true)
    setProperty('gf.skipDance', true)
    playAnim('gf', 'cheer')
    playAnim('boyfriend', 'hey')
  end
end
function bgPath(img)
  if isNight then
    return 'backgrounds/dave-house/night/'..img;
  end
  return 'backgrounds/dave-house/'..img;
end
function add(tag)
  setProperty(tag..'.alpha', 0)
  addLuaSprite(tag)
  table.insert(houseSprs, tag)
end
function contains(tab, what)
  for k,v in pairs(tab) do
    if what == v then
      return true;
    end
  end
  return;
end