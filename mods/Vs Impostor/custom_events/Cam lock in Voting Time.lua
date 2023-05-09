function onEvent(name,value1,value2)
if name == 'Cam lock in Voting Time' then
if value1 == 'in' then
setProperty("camGame.zoom",1.2)
setProperty("defaultCamZoom",getProperty('camGame.zoom'))
if value2 == 'dad' then
triggerEvent('Camera Follow Pos',460,700)
else
triggerEvent('Camera Follow Pos',1470,700)
end
elseif value1 == 'close' then
triggerEvent('Camera Follow Pos',1450,680)
setProperty("camGame.zoom",1.25)
setProperty("defaultCamZoom",getProperty('camGame.zoom'))
if value2 == 'dad' then
triggerEvent('Camera Follow Pos',480,680)
end
else
triggerEvent('Camera Follow Pos',1450,680)
end
if value1 == '' then
triggerEvent('Camera Follow Pos',960,540)
setProperty("camGame.zoom",0.7)
setProperty("defaultCamZoom",getProperty('camGame.zoom'))
end
end
end