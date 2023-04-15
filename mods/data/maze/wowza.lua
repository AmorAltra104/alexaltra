function onSongStart()
  makeLuaSprite('coolerSTUFF', '', -1000, -1000)
  makeGraphic('coolerSTUFF', 5000, 5000, '000000')
  setScrollFactor('coolerSTUFF', 0, 0)
  setProperty('coolerSTUFF.alpha', 0)
  addLuaSprite('coolerSTUFF', true)
end
function onStepHit()
  if curStep == 908 then
    doTweenAlpha('coolerSTUFF', 'coolerSTUFF', 1, 1)
  elseif curStep == 912 then
    doTweenAlpha('coolerSTUFF', 'coolerSTUFF', 0, 1)
  end
end