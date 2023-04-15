dir = -5
function onCreatePost() --onCreatePost to be infront of the stage stuff
  makeLuaSprite('spotlight', 'spotlight', getMidpointX('dad') - getProperty('dad.width') + 50, getProperty('dad.y') - 650)
  scaleObject('spotlight', 0.9, 0.9)
  setProperty('spotlight.visible', false)
  setProperty('spotlight.alpha', 0.75)
  addLuaSprite('spotlight', true)
  doTweenAngle('spotlight', 'spotlight', dir, 1, 'cubeInOut')
end
idiot = {
  ['boyfriend'] = {125, -600},
  ['dad'] = {50, -650}
}
function onMoveCamera(what)
  doTweenX('asdf', 'spotlight', getMidpointX(what) - getProperty(what..'.width') + idiot[what][1], 0.5, 'cubeInOut')
  doTweenY('ok', 'spotlight', getProperty(what..'.y') + idiot[what][2], 0.5, 'cubeInOut')
end
function onEvent(n)
  if n == 'stageLightToggle' then
    if not getProperty('spotlight.visible') then
      setProperty('spotlight.visible', true)
    else
      doTweenAlpha('spotsagd', 'spotlight', 0, 1)
    end
  end
end
function onTweenCompleted(tag)
  if tag == 'spotlight' then
    dir = dir*-1
    ezTimer('wtf', 1, function()
      doTweenAngle('spotlight', 'spotlight', dir, 1, 'cubeInOut')
    end)
  end
end

timers = {blankTags = 0}
function ezTimer(tag, timer, callback)
  if tag == nil then
    tag = 'blank_tags-'..tostring(timers.blankTags)
    timers.blankTags = timers.blankTags + 1
  end
  timers[tag] = callback
  runTimer(tag, timer)
end
function onTimerCompleted(tag)
  if timers[tag] ~= nil then
    timers[tag]()
    timers[tag] = nil
    if stringStartsWith(tag, 'blank_tags-') then
      timers.blankTags = tonumber(stringSplit(tag, '-')[2])
    end
  end
end