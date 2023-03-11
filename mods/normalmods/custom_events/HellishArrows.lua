function onEvent(name, value1, value2)
    if name == 'HellishArrows' then

function onUpdate(elapsed)

if curStep >= 0 and curStep < 999999999999999999 then
songPos = getSongPosition()
local currentBeat = (songPos/9000)*(curBpm/14)

        noteTweenX(defaultPlayerStrumX0, 4, 450 + 844*math.sin((currentBeat+4*0.25)*math.pi), 0.6)
        noteTweenX(defaultPlayerStrumX1, 5, 550 + 834*math.sin((currentBeat+5*0.25)*math.pi), 0.6)
        noteTweenX(defaultPlayerStrumX2, 6, 650 + 424*math.sin((currentBeat+6*0.25)*math.pi), 0.6)
        noteTweenX(defaultPlayerStrumX3, 7, 750 + 414*math.sin((currentBeat+7*0.25)*math.pi), 0.6)
       end
   end
end
end