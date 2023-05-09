
function onUpdate()
    songPos = getSongPosition()
    local currentBeat = (songPos/5000)*(curBpm/60)
    doTweenY('sus', 'camHUD', 35*math.cos((currentBeat+0.9*2)*math.pi), 0.01)
    doTweenAngle('sus2', 'camHUD', 2*math.cos((currentBeat+1.5*2)*math.pi), 0.01)
end
