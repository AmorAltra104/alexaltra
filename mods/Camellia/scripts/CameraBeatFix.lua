local onBeat = false
function onBeatHit()
if onBeat then
if getProperty('curBeat') % 4 == 0 then
triggerEvent('Add Camera Zoom','-0.015','-0.03')
end
end
end
function opponentNoteHit(id,direction,noteType,isSustainNote)
if direction == 0 then
onBeat = true
end
if direction == 3 then
onBeat = true
end
if direction == 2 then
onBeat = true
end
if direction == 1 then
onBeat = true
end
end