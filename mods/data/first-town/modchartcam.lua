--Arrow swap Enemy with plyaer Repeating

local sidetosidecame = false
local cameghost = false
local camenormal = false
local arrowresetcam = false

function onUpdate(elapsed)
songPos = getSongPosition()
local currentBeat = (songPos/5000)*(curBpm/60)

if sidetosidecame == true then

--Opponent Notes

noteTweenX(defaultOpponentStrumX0, 0, defaultOpponentStrumX0 + 320 - 2000*math.sin((currentBeat+8*0.25)*math.pi), 3)
noteTweenX(defaultOpponentStrumX1, 1, defaultOpponentStrumX1 + 320 - 2000*math.sin((currentBeat+8*0.25)*math.pi), 3)
noteTweenX(defaultOpponentStrumX2, 2, defaultOpponentStrumX2 + 320 - 2000*math.sin((currentBeat+8*0.25)*math.pi), 3)
noteTweenX(defaultOpponentStrumX3, 3, defaultOpponentStrumX3 + 320 - 2000*math.sin((currentBeat+8*0.25)*math.pi), 3)
end

if cameghost == true then

noteTweenAlpha('balls0', 0 , 0, 0.1 , 'quadInOut');
noteTweenAlpha('balls1', 1 , 0, 0.1 , 'quadInOut');
noteTweenAlpha('balls2', 2 , 0, 0.1 , 'quadInOut');
noteTweenAlpha('balls3', 3 , 0, 0.1 , 'quadInOut');
end

if camenormal == true then
noteTweenAlpha('balls0', 0 , 1, 0.1 , 'quadInOut');
noteTweenAlpha('balls1', 1 , 1, 0.1 , 'quadInOut');
noteTweenAlpha('balls2', 2 , 1, 0.1 , 'quadInOut');
noteTweenAlpha('balls3', 3 , 1, 0.1 , 'quadInOut');
end

if camecenter == true then
noteTweenX(defaultOpponentStrumX0, 0, defaultOpponentStrumX0 + 320 - 50*math.sin((currentBeat+8*0.25)*math.pi), 0.1)
noteTweenX(defaultOpponentStrumX1, 1, defaultOpponentStrumX1 + 320 - 50*math.sin((currentBeat+8*0.25)*math.pi), 0.1)
noteTweenX(defaultOpponentStrumX2, 2, defaultOpponentStrumX2 + 320 - 50*math.sin((currentBeat+8*0.25)*math.pi), 0.1)
noteTweenX(defaultOpponentStrumX3, 3, defaultOpponentStrumX3 + 320 - 50*math.sin((currentBeat+8*0.25)*math.pi), 0.1)
end

stepHitFuncs = {
	[1280] = function()
		camecenter = true
	end,

	[1400] = function()
		camecenter = false
	end,

	[2432] = function()
		cameghost = true
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