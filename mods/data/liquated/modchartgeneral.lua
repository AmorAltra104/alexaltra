--Arrow swap Enemy with player Repeating

local sidetoside = false
local sidechangefast = false
local sidechangeslow = false
local centerdancebf = false
local arrowslide = false

function onUpdate(elapsed)
songPos = getSongPosition()
local currentBeat = (songPos/5000)*(curBpm/60)

if sidetoside == true then


--Player Notes

noteTweenX(defaultPlayerStrumX0, 4, defaultPlayerStrumX0 - 320 + 2000*math.sin((currentBeat+8*0.25)*math.pi), 3)
noteTweenX(defaultPlayerStrumX1, 5, defaultPlayerStrumX1 - 320 + 2000*math.sin((currentBeat+8*0.25)*math.pi), 3)
noteTweenX(defaultPlayerStrumX2, 6, defaultPlayerStrumX2 - 320 + 2000*math.sin((currentBeat+8*0.25)*math.pi), 3)
noteTweenX(defaultPlayerStrumX3, 7, defaultPlayerStrumX3 - 320 + 2000*math.sin((currentBeat+8*0.25)*math.pi), 3)

--Opponent Notes

noteTweenX(defaultOpponentStrumX0, 0, defaultOpponentStrumX0 + 320 - 2000*math.sin((currentBeat+8*0.25)*math.pi), 3)
noteTweenX(defaultOpponentStrumX1, 1, defaultOpponentStrumX1 + 320 - 2000*math.sin((currentBeat+8*0.25)*math.pi), 3)
noteTweenX(defaultOpponentStrumX2, 2, defaultOpponentStrumX2 + 320 - 2000*math.sin((currentBeat+8*0.25)*math.pi), 3)
noteTweenX(defaultOpponentStrumX3, 3, defaultOpponentStrumX3 + 320 - 2000*math.sin((currentBeat+8*0.25)*math.pi), 3)
end

if sidechangefast == true then

noteTweenX(defaultPlayerStrumX0, 4, defaultPlayerStrumX0 - 620 + 50*math.sin((currentBeat+8*0.25)*math.pi), 0.3)
noteTweenX(defaultPlayerStrumX1, 5, defaultPlayerStrumX1 - 620 + 50*math.sin((currentBeat+8*0.25)*math.pi), 0.3)
noteTweenX(defaultPlayerStrumX2, 6, defaultPlayerStrumX2 - 620 + 50*math.sin((currentBeat+8*0.25)*math.pi), 0.3)
noteTweenX(defaultPlayerStrumX3, 7, defaultPlayerStrumX3 - 620 + 50*math.sin((currentBeat+8*0.25)*math.pi), 0.3)

noteTweenX(defaultOpponentStrumX0, 0, defaultOpponentStrumX0 + 620 - 50*math.sin((currentBeat+8*0.25)*math.pi), 0.3)
noteTweenX(defaultOpponentStrumX1, 1, defaultOpponentStrumX1 + 620 - 50*math.sin((currentBeat+8*0.25)*math.pi), 0.3)
noteTweenX(defaultOpponentStrumX2, 2, defaultOpponentStrumX2 + 620 - 50*math.sin((currentBeat+8*0.25)*math.pi), 0.3)
noteTweenX(defaultOpponentStrumX3, 3, defaultOpponentStrumX3 + 620 - 50*math.sin((currentBeat+8*0.25)*math.pi), 0.3)

noteTweenY('defaultPlayerStrumY0', 4, defaultPlayerStrumY0 - 40*math.sin((currentBeat+4*0.25)*math.pi), 0.5)
noteTweenY('defaultPlayerStrumY1', 5, defaultPlayerStrumY1 - 40*math.sin((currentBeat+5*0.25)*math.pi), 0.5)
noteTweenY('defaultPlayerStrumY2', 6, defaultPlayerStrumY2 - 40*math.sin((currentBeat+6*0.25)*math.pi), 0.5)
noteTweenY('defaultPlayerStrumY3', 7, defaultPlayerStrumY3 - 40*math.sin((currentBeat+7*0.25)*math.pi), 0.5)

noteTweenY('defaultOpponentStrumY0', 0, defaultOpponentStrumY0 + 40*math.sin((currentBeat+0*0.25)*math.pi), 0.5)
noteTweenY('defaultOpponentStrumY1', 1, defaultOpponentStrumY1 + 40*math.sin((currentBeat+1*0.25)*math.pi), 0.5)
noteTweenY('defaultOpponentStrumY2', 2, defaultOpponentStrumY2 + 40*math.sin((currentBeat+2*0.25)*math.pi), 0.5)
noteTweenY('defaultOpponentStrumY3', 3, defaultOpponentStrumY3 + 40*math.sin((currentBeat+3*0.25)*math.pi), 0.5)
end

if sidechangeslow == true then

noteTweenX(defaultPlayerStrumX0, 4, defaultPlayerStrumX0 - 620 + 50*math.sin((currentBeat+8*0.25)*math.pi), 2)
noteTweenX(defaultPlayerStrumX1, 5, defaultPlayerStrumX1 - 620 + 50*math.sin((currentBeat+8*0.25)*math.pi), 2)
noteTweenX(defaultPlayerStrumX2, 6, defaultPlayerStrumX2 - 620 + 50*math.sin((currentBeat+8*0.25)*math.pi), 2)
noteTweenX(defaultPlayerStrumX3, 7, defaultPlayerStrumX3 - 620 + 50*math.sin((currentBeat+8*0.25)*math.pi), 2)

noteTweenX(defaultOpponentStrumX0, 0, defaultOpponentStrumX0 + 620 - 50*math.sin((currentBeat+8*0.25)*math.pi), 2)
noteTweenX(defaultOpponentStrumX1, 1, defaultOpponentStrumX1 + 620 - 50*math.sin((currentBeat+8*0.25)*math.pi), 2)
noteTweenX(defaultOpponentStrumX2, 2, defaultOpponentStrumX2 + 620 - 50*math.sin((currentBeat+8*0.25)*math.pi), 2)
noteTweenX(defaultOpponentStrumX3, 3, defaultOpponentStrumX3 + 620 - 50*math.sin((currentBeat+8*0.25)*math.pi), 2)

noteTweenY('defaultPlayerStrumY0', 4, defaultPlayerStrumY0 - 40*math.sin((currentBeat+4*0.25)*math.pi), 0.5)
noteTweenY('defaultPlayerStrumY1', 5, defaultPlayerStrumY1 - 40*math.sin((currentBeat+5*0.25)*math.pi), 0.5)
noteTweenY('defaultPlayerStrumY2', 6, defaultPlayerStrumY2 - 40*math.sin((currentBeat+6*0.25)*math.pi), 0.5)
noteTweenY('defaultPlayerStrumY3', 7, defaultPlayerStrumY3 - 40*math.sin((currentBeat+7*0.25)*math.pi), 0.5)

noteTweenY('defaultOpponentStrumY0', 0, defaultOpponentStrumY0 + 40*math.sin((currentBeat+0*0.25)*math.pi), 0.5)
noteTweenY('defaultOpponentStrumY1', 1, defaultOpponentStrumY1 + 40*math.sin((currentBeat+1*0.25)*math.pi), 0.5)
noteTweenY('defaultOpponentStrumY2', 2, defaultOpponentStrumY2 + 40*math.sin((currentBeat+2*0.25)*math.pi), 0.5)
noteTweenY('defaultOpponentStrumY3', 3, defaultOpponentStrumY3 + 40*math.sin((currentBeat+3*0.25)*math.pi), 0.5)
end

if centerdancebf == true then

--Player Notes

noteTweenX(defaultPlayerStrumX0, 4, defaultPlayerStrumX0 - 320 + 50*math.sin((currentBeat+8*0.25)*math.pi), 0.5)
noteTweenX(defaultPlayerStrumX1, 5, defaultPlayerStrumX1 - 320 + 50*math.sin((currentBeat+8*0.25)*math.pi), 0.5)
noteTweenX(defaultPlayerStrumX2, 6, defaultPlayerStrumX2 - 320 + 50*math.sin((currentBeat+8*0.25)*math.pi), 0.5)
noteTweenX(defaultPlayerStrumX3, 7, defaultPlayerStrumX3 - 320 + 50*math.sin((currentBeat+8*0.25)*math.pi), 0.5)

--Opponent Notes

noteTweenX(defaultOpponentStrumX0, 0, defaultOpponentStrumX0 - 10 - 50*math.sin((currentBeat+8*0.25)*math.pi), 0.5)
noteTweenX(defaultOpponentStrumX1, 1, defaultOpponentStrumX1 + 30 - 50*math.sin((currentBeat+8*0.25)*math.pi), 0.5)
noteTweenX(defaultOpponentStrumX2, 2, defaultOpponentStrumX2 + 600 - 50*math.sin((currentBeat+8*0.25)*math.pi), 0.5)
noteTweenX(defaultOpponentStrumX3, 3, defaultOpponentStrumX3 + 640 - 50*math.sin((currentBeat+8*0.25)*math.pi), 0.5)
end

if arrowslide == true then

noteTweenX(defaultPlayerStrumX0, 4, defaultPlayerStrumX0 - 40*math.sin((currentBeat+4*0.25)*math.pi), 0.5)
noteTweenX(defaultPlayerStrumX1, 5, defaultPlayerStrumX1 - 40*math.sin((currentBeat+5*0.25)*math.pi), 0.5)
noteTweenX(defaultPlayerStrumX2, 6, defaultPlayerStrumX2 - 40*math.sin((currentBeat+6*0.25)*math.pi), 0.5)
noteTweenX(defaultPlayerStrumX3, 7, defaultPlayerStrumX3 - 40*math.sin((currentBeat+7*0.25)*math.pi), 0.5)

noteTweenX(defaultOpponentStrumX0, 0, defaultOpponentStrumX0 - 40*math.sin((currentBeat+0*0.25)*math.pi), 0.5)
noteTweenX(defaultOpponentStrumX1, 1, defaultOpponentStrumX1 - 40*math.sin((currentBeat+1*0.25)*math.pi), 0.5)
noteTweenX(defaultOpponentStrumX2, 2, defaultOpponentStrumX2 - 40*math.sin((currentBeat+2*0.25)*math.pi), 0.5)
noteTweenX(defaultOpponentStrumX3, 3, defaultOpponentStrumX3 - 40*math.sin((currentBeat+3*0.25)*math.pi), 0.5)
end

if bfcamdvd == true then
currentBeat = (songPos/1000)*(bpm/60)
noteTweenX(defaultPlayerStrumX0, 4, defaultPlayerStrumX0 - 0 + 100*math.sin((currentBeat)), 1)
noteTweenX(defaultPlayerStrumX1, 5, defaultPlayerStrumX1 - 0 + 100*math.sin((currentBeat)), 1)
noteTweenX(defaultPlayerStrumX2, 6, defaultPlayerStrumX2 - 0 + 100*math.sin((currentBeat)), 1)
noteTweenX(defaultPlayerStrumX3, 7, defaultPlayerStrumX3 - 0 + 100*math.sin((currentBeat)), 1)
noteTweenY('defaultPlayerStrumY0', 4, defaultPlayerStrumY0 - 50*math.sin((currentBeat+8*32)*math.pi), 0.5)
noteTweenY('defaultPlayerStrumY1', 5, defaultPlayerStrumY1 - 50*math.sin((currentBeat+8*32)*math.pi), 0.5)
noteTweenY('defaultPlayerStrumY2', 6, defaultPlayerStrumY2 - 50*math.sin((currentBeat+8*32)*math.pi), 0.5)
noteTweenY('defaultPlayerStrumY3', 7, defaultPlayerStrumY3 - 50*math.sin((currentBeat+8*32)*math.pi), 0.5)

noteTweenX(defaultOpponentStrumX0, 4, defaultOpponentStrumX0 - 0 + 100*math.sin((currentBeat)), 1)
noteTweenX(defaultOpponentStrumX1, 5, defaultOpponentStrumX1 - 0 + 100*math.sin((currentBeat)), 1)
noteTweenX(defaultOpponentStrumX2, 6, defaultOpponentStrumX2 - 0 + 100*math.sin((currentBeat)), 1)
noteTweenX(defaultOpponentStrumX3, 7, defaultOpponentStrumX3 - 0 + 100*math.sin((currentBeat)), 1)
noteTweenY('defaultOpponentStrumY0', 0, defaultOpponentStrumY0 + 50*math.sin((currentBeat+8*32)*math.pi), 0.5)
noteTweenY('defaultOpponentStrumY1', 1, defaultOpponentStrumY1 + 50*math.sin((currentBeat+8*32)*math.pi), 0.5)
noteTweenY('defaultOpponentStrumY2', 2, defaultOpponentStrumY2 + 50*math.sin((currentBeat+8*32)*math.pi), 0.5)
noteTweenY('defaultOpponentStrumY3', 3, defaultOpponentStrumY3 + 50*math.sin((currentBeat+8*32)*math.pi), 0.5)
end
end


stepHitFuncs = {

}
function onStepHit()
if boyfriendName == 'bfm' then
	if stepHitFuncs[curStep] then
		stepHitFuncs[curStep]()
	end
if curStep == 324 then
arrowslide = true
end

if curStep == 358 then
arrowslide = false
sidechangeslow = true
end

if curStep == 486 then
sidechangeslow = false
noteTweenX(defaultPlayerStrumX0, 4, defaultPlayerStrumX0 - 0, 2 , 'quadInOut');
noteTweenX(defaultPlayerStrumX1, 5, defaultPlayerStrumX1 - 0, 2 , 'quadInOut');
noteTweenX(defaultPlayerStrumX2, 6, defaultPlayerStrumX2 - 0, 2 , 'quadInOut');
noteTweenX(defaultPlayerStrumX3, 7, defaultPlayerStrumX3 - 0, 2 , 'quadInOut');
noteTweenX(defaultOpponentStrumX0, 0, defaultOpponentStrumX0 - 0, 2 , 'quadInOut');
noteTweenX(defaultOpponentStrumX1, 1, defaultOpponentStrumX1 - 0, 2 , 'quadInOut');
noteTweenX(defaultOpponentStrumX2, 2, defaultOpponentStrumX2 - 0, 2 , 'quadInOut');
noteTweenX(defaultOpponentStrumX3, 3, defaultOpponentStrumX3 - 0, 2 , 'quadInOut');
end

if curStep == 2558 then
arrowslide = true
end

end
end


