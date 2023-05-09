function onUpdate()
if curBeat >= 356 and curBeat < 420 then
setProperty('defaultCamZoom',1.1)
end
if curBeat == 420 then
setProperty('defaultCamZoom',0.8)
end
if curBeat >= 552 and curBeat < 556 then
setProperty('defaultCamZoom',1.2)
end
if curBeat == 916 then
doTweenZoom('camGame','camGame',0.4,20)
end
end