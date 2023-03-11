--Arrow swap Enemy with plyaer Repeating
local sidetosidebf = false
local funnyup = false
local fadeoutbf = false
local fadeinbf = false
local upsolo = false
local rightsolo = false
local arrowresetbf = false

function onUpdate(elapsed)
songPos = getSongPosition()
local currentBeat = (songPos/5000)*(curBpm/60)

if sidetosidebf == true then

--Player Notes

noteTweenX(defaultPlayerStrumX0, 4, defaultPlayerStrumX0 - 320 + 2000*math.sin((currentBeat+8*0.25)*math.pi), 3)
noteTweenX(defaultPlayerStrumX1, 5, defaultPlayerStrumX1 - 320 + 2000*math.sin((currentBeat+8*0.25)*math.pi), 3)
noteTweenX(defaultPlayerStrumX2, 6, defaultPlayerStrumX2 - 320 + 2000*math.sin((currentBeat+8*0.25)*math.pi), 3)
noteTweenX(defaultPlayerStrumX3, 7, defaultPlayerStrumX3 - 320 + 2000*math.sin((currentBeat+8*0.25)*math.pi), 3)

end

if funnyup == true then
currentBeat = (songPos/1000)*(bpm/60)
noteTweenX(defaultPlayerStrumX2, 6, defaultPlayerStrumX2 - 320 + 1000*math.sin((currentBeat)), 1)
noteTweenY('defaultPlayerStrumY2', 6, defaultPlayerStrumY2 - 40*math.sin((currentBeat+6*32)*math.pi), 0.5)
end

if upsolo == true then

noteTweenAlpha('bols4', 4 , 0, 0.1 , 'quadInOut');
noteTweenAlpha('bols5', 5 , 0, 0.1 , 'quadInOut');
noteTweenAlpha('bols7', 7 , 0, 0.1 , 'quadInOut');
end

if rightsolo == true then

noteTweenX(defaultPlayerStrumX3, 7, defaultPlayerStrumX3 - 420 + 2000*math.sin((currentBeat+8*0.25)*math.pi), 3)
noteTweenAlpha('bols4', 4 , 0, 0.1 , 'quadInOut');
noteTweenAlpha('bols5', 5 , 0, 0.1 , 'quadInOut');
noteTweenAlpha('bols7', 6 , 0, 0.1 , 'quadInOut');
end

if fadeoutbf == true then

noteTweenAlpha('bols4', 4 , 0, 0.1 , 'quadInOut');
noteTweenAlpha('bols5', 5 , 0, 0.1 , 'quadInOut');
noteTweenAlpha('bols6', 6 , 0, 0.1 , 'quadInOut');
noteTweenAlpha('bols7', 7 , 0, 0.1 , 'quadInOut');

end

if fadeinbf == true then

noteTweenAlpha('buls4', 4 , 1, 0.1 , 'quadInOut');
noteTweenAlpha('buls5', 5 , 1, 0.1 , 'quadInOut');
noteTweenAlpha('buls6', 6 , 1, 0.1 , 'quadInOut');
noteTweenAlpha('buls7', 7 , 1, 0.1 , 'quadInOut');
end

if arrowresetbf == true then
            setPropertyFromGroup('playerStrums', 0, 'y', defaultPlayerStrumy0 - 0);
            setPropertyFromGroup('playerStrums', 1, 'y', defaultPlayerStrumy1 - 0);
            setPropertyFromGroup('playerStrums', 2, 'y', defaultPlayerStrumy2 - 0);
            setPropertyFromGroup('playerStrums', 3, 'y', defaultPlayerStrumy3 - 0);

            setPropertyFromGroup('playerStrums', 0, 'x', defaultPlayerStrumX0 - 0);
            setPropertyFromGroup('playerStrums', 1, 'x', defaultPlayerStrumX1 - 0);
            setPropertyFromGroup('playerStrums', 2, 'x', defaultPlayerStrumX2 - 0);
            setPropertyFromGroup('playerStrums', 3, 'x', defaultPlayerStrumX3 - 0);
end


stepHitFuncs = {
	[127] = function()
		funnyup = true
	end,

	[128] = function()
		upsolo = true
	end,

	[133] = function()
		upsolo = false
	end,

	[188] = function()
		funnyup = false
	end,

	[190] = function()
		fadeoutbf = true
	end,

	[195] = function()
		fadeoutbf = false
	end,

	[253] = function()
		fadeinbf = true
	end,

	[268] = function()
		fadeinbf = false
	end,

	[384] = function()
		funnyup = true
	end,

	[495] = function()
		funnyup = false
	end,

	[1281] = function()
		rightsolo = true
	end,

	[1318] = function()
		rightsolo = false
	end,

	[1319] = function()
		fadeoutbf = true
	end,

	[1339] = function()
		fadeoutbf = false
	end,

	[1394] = function()
		fadeinbf = true
	end,

	[1404] = function()
		fadeinbf = false
	end,

	[1536] = function()
		funnyup = true
	end,

	[1658] = function()
		funnyup = false
	end,

	[2432] = function()
		rightsolo = true
	end,

	[2460] = function()
		fadeoutbf = true
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