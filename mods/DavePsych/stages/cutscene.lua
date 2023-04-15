--broken?????
seenCutscene = false
function onCreate()
  setProperty('camHUD.visible', false)
  setProperty('camGame.visible', false)
end
function onStartCountdown()
initSaveData(dofile('mods/'..currentModDirectory..'/saveData.lua'))
  -- debugPrint('hii')
  stuff = save.get('cutsceneHandler')
  if not seenCutscene then
    setProperty('inCutscene', true) --stops charting mode from shitting and ghsdfklzghdfjklshgjkldf
    if stuff == nil then
      debugPrint('uh oh cutscene data is nil!!!! exit the song plz')
      setProperty('inCutscene', false)
    else
      seenCutscene = true
      runTimer('startitwithoutcuttingitoffactuallypleasethankyou', 0.2)
    end
  else
    loadSong(stuff.song, -1)
  end
  -- debugPrint('returnr')
  return Function_Stop;
end
function onTimerCompleted(tag)
  if tag == 'startitwithoutcuttingitoffactuallypleasethankyou' then
    startVideo(stuff.cutscene)
  end
end
save = {}
function save.get(field, other)
if field == nil then return nil end
return getDataFromSave(dofile('mods/'..currentModDirectory..'/saveData.lua'), field, other)
end
function save.set(field, value)
setDataFromSave(dofile('mods/'..currentModDirectory..'/saveData.lua'), field, value)
end