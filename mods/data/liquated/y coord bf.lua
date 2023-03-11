--keep Y coordinate
local resetycord = false
local upbf = false
local downbf = false

function onUpdate(elapsed)
songPos = getSongPosition()
local currentBeat = (songPos/5000)*(curBpm/60)

if resetycord == true and boyfriendName == 'bfm' then
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

if upbf == true and boyfriendName == 'bfm' then

noteTweenY(defaultPlayerStrumY0, 4, defaultPlayerStrumY0 + 100*math.sin((currentBeat+4*0.25)*math.pi), 0.5)
noteTweenY(defaultPlayerStrumY1, 5, defaultPlayerStrumY1 + 100*math.sin((currentBeat+5*0.25)*math.pi), 0.5)
noteTweenY(defaultPlayerStrumY2, 6, defaultPlayerStrumY2 + 100*math.sin((currentBeat+6*0.25)*math.pi), 0.5)
noteTweenY(defaultPlayerStrumY3, 7, defaultPlayerStrumY3 + 100*math.sin((currentBeat+7*0.25)*math.pi), 0.5)

end

if downbf == true and boyfriendName == 'bfm' then

noteTweenY(defaultPlayerStrumY0, 4, defaultPlayerStrumY0 - 50 - 1*math.sin((currentBeat+4*0.25)*math.pi), 0.5)
noteTweenY(defaultPlayerStrumY1, 5, defaultPlayerStrumY1 - 50 - 1*math.sin((currentBeat+5*0.25)*math.pi), 0.5)
noteTweenY(defaultPlayerStrumY2, 6, defaultPlayerStrumY2 - 50 - 1*math.sin((currentBeat+6*0.25)*math.pi), 0.5)
noteTweenY(defaultPlayerStrumY3, 7, defaultPlayerStrumY3 - 50 - 1*math.sin((currentBeat+7*0.25)*math.pi), 0.5)

end

stepHitFuncs = {
	[160] = function()
		downbf = true
	end,

	[176] = function()
		downbf = false
		upbf = true
	end,

	[184] = function()
		upbf = false
	end,
}


end

