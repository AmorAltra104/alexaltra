--keep Y and x coordinate
local keepycord = true
local keepxcord = false

function onUpdate(elapsed)
songPos = getSongPosition()
local currentBeat = (songPos/5000)*(curBpm/60)

if keepycord == true and boyfriendName == 'bfm'  then

--Player Notes

noteTweenY('defaultPlayerStrumY0', 4, defaultPlayerStrumY0 - 1*math.sin((currentBeat+4*0.25)*math.pi), 0.5)
noteTweenY('defaultPlayerStrumY1', 5, defaultPlayerStrumY1 - 1*math.sin((currentBeat+5*0.25)*math.pi), 0.5)
noteTweenY('defaultPlayerStrumY2', 6, defaultPlayerStrumY2 - 1*math.sin((currentBeat+6*0.25)*math.pi), 0.5)
noteTweenY('defaultPlayerStrumY3', 7, defaultPlayerStrumY3 - 1*math.sin((currentBeat+7*0.25)*math.pi), 0.5)

--Opponent Notes

noteTweenY('defaultOpponentStrumY0', 0, defaultOpponentStrumY0 + 1*math.sin((currentBeat+0*0.25)*math.pi), 0.5)
noteTweenY('defaultOpponentStrumY1', 1, defaultOpponentStrumY1 + 1*math.sin((currentBeat+1*0.25)*math.pi), 0.5)
noteTweenY('defaultOpponentStrumY2', 2, defaultOpponentStrumY2 + 1*math.sin((currentBeat+2*0.25)*math.pi), 0.5)
noteTweenY('defaultOpponentStrumY3', 3, defaultOpponentStrumY3 + 1*math.sin((currentBeat+3*0.25)*math.pi), 0.5)
end

if keepxcord == true and boyfriendName == 'bfm'  then

--Player Notes

noteTweenX('defaultPlayerStrumX0', 4, defaultPlayerStrumX0 - 1*math.sin((currentBeat+4*0.25)*math.pi), 0.5)
noteTweenX('defaultPlayerStrumX1', 5, defaultPlayerStrumX1 - 1*math.sin((currentBeat+5*0.25)*math.pi), 0.5)
noteTweenX('defaultPlayerStrumX2', 6, defaultPlayerStrumX2 - 1*math.sin((currentBeat+6*0.25)*math.pi), 0.5)
noteTweenX('defaultPlayerStrumX3', 7, defaultPlayerStrumX3 - 1*math.sin((currentBeat+7*0.25)*math.pi), 0.5)

--Opponent Notes

noteTweenX('defaultOpponentStrumX0', 0, defaultOpponentStrumX0 + 1*math.sin((currentBeat+0*0.25)*math.pi), 0.5)
noteTweenX('defaultOpponentStrumX1', 1, defaultOpponentStrumX1 + 1*math.sin((currentBeat+1*0.25)*math.pi), 0.5)
noteTweenX('defaultOpponentStrumX2', 2, defaultOpponentStrumX2 + 1*math.sin((currentBeat+2*0.25)*math.pi), 0.5)
noteTweenX('defaultOpponentStrumX3', 3, defaultOpponentStrumX3 + 1*math.sin((currentBeat+3*0.25)*math.pi), 0.5)
end
end



