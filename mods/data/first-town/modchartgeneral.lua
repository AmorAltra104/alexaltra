--Arrow swap Enemy with player Repeating

local sidetoside = false
local sidechange = false
local centerdancebf = false

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

if sidechange == true then

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

stepHitFuncs = {
	[768] = function()
		sidechange = true
	end,

	[900] = function()
		sidechange = false
	end,

	[1028] = function()
		centerdancebf = true
	end,

	[1276] = function()
		centerdancebf = false
	end,

	[1921] = function()
		sidechange = true
	end,

	[2176] = function()
		sidechange = false
	end


}
function onStepHit()
if boyfriendName == 'bfm' then
	if stepHitFuncs[curStep] then
		stepHitFuncs[curStep]()
	end
end

end
end