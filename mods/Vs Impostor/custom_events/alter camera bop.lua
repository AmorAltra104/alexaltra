aaa = 0
bbb = 0
function onEvent(name,value1,value2)
if name == 'Alter Camera Bop' then
aaa = value1*0.02
bbb = value2*4
end
end
function onStepHit()
if getProperty('curStep') % bbb == 0 then
triggerEvent('Add Camera Zoom',aaa,aaa)
end
end