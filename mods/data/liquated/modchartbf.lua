--Arrow swap Enemy with plyaer Repeating
local sidetosidebf = false
local bfdvd = false
local funnyup = false
local fadeoutbf = false
local fadeinbf = false
local upsolo = false
local rightsolo = false
local leftbf = false
local rightbf = false

function onUpdate(elapsed)
songPos = getSongPosition()
local currentBeat = (songPos/5000)*(curBpm/60)

if sidetosidebf == true then

noteTweenX(defaultPlayerStrumX0, 4, defaultPlayerStrumX0 - 320 + 2000*math.sin((currentBeat+8*0.25)*math.pi), 3)
noteTweenX(defaultPlayerStrumX1, 5, defaultPlayerStrumX1 - 320 + 2000*math.sin((currentBeat+8*0.25)*math.pi), 3)
noteTweenX(defaultPlayerStrumX2, 6, defaultPlayerStrumX2 - 320 + 2000*math.sin((currentBeat+8*0.25)*math.pi), 3)
noteTweenX(defaultPlayerStrumX3, 7, defaultPlayerStrumX3 - 320 + 2000*math.sin((currentBeat+8*0.25)*math.pi), 3)
end

if bfdvd == true then
currentBeat = (songPos/1000)*(bpm/60)
noteTweenX(defaultPlayerStrumX0, 4, defaultPlayerStrumX0 - 0 + 100*math.sin((currentBeat)), 1)
noteTweenX(defaultPlayerStrumX1, 5, defaultPlayerStrumX1 - 0 + 100*math.sin((currentBeat)), 1)
noteTweenX(defaultPlayerStrumX2, 6, defaultPlayerStrumX2 - 0 + 100*math.sin((currentBeat)), 1)
noteTweenX(defaultPlayerStrumX3, 7, defaultPlayerStrumX3 - 0 + 100*math.sin((currentBeat)), 1)
noteTweenY('defaultPlayerStrumY0', 4, defaultPlayerStrumY0 - 50*math.sin((currentBeat+8*32)*math.pi), 0.5)
noteTweenY('defaultPlayerStrumY1', 5, defaultPlayerStrumY1 - 50*math.sin((currentBeat+8*32)*math.pi), 0.5)
noteTweenY('defaultPlayerStrumY2', 6, defaultPlayerStrumY2 - 50*math.sin((currentBeat+8*32)*math.pi), 0.5)
noteTweenY('defaultPlayerStrumY3', 7, defaultPlayerStrumY3 - 50*math.sin((currentBeat+8*32)*math.pi), 0.5)
end

if upsolo == true then

noteTweenAlpha('bols4', 4 , 0, 0.1 , 'quadInOut');
noteTweenAlpha('bols5', 5 , 0, 0.1 , 'quadInOut');
noteTweenAlpha('bols7', 7 , 0, 0.1 , 'quadInOut');
end

if rightsolo == true then

noteTweenX(defaultPlayerStrumX3, 7, defaultPlayerStrumX3 - 420 + 2000*math.sin((currentBeat+8*0.25)*math.pi), 1)
noteTweenAlpha('bols4', 4 , 0, 0.1 , 'quadInOut');
noteTweenAlpha('bols5', 5 , 0, 0.1 , 'quadInOut');
noteTweenAlpha('bols7', 6 , 0, 0.1 , 'quadInOut');
end

if fadeoutbf == true then

noteTweenAlpha('bols4', 4 , 0, 0.01 , 'quadInOut');
noteTweenAlpha('bols5', 5 , 0, 0.01 , 'quadInOut');
noteTweenAlpha('bols6', 6 , 0, 0.01 , 'quadInOut');
noteTweenAlpha('bols7', 7 , 0, 0.01 , 'quadInOut');

end

if fadeinbf == true then

noteTweenAlpha('buls4', 4 , 1, 0.01 , 'quadInOut');
noteTweenAlpha('buls5', 5 , 1, 0.01 , 'quadInOut');
noteTweenAlpha('buls6', 6 , 1, 0.01 , 'quadInOut');
noteTweenAlpha('buls7', 7 , 1, 0.01 , 'quadInOut');
end

stepHitFuncs = {

}
function onStepHit()
if boyfriendName == 'bfm' then
	if stepHitFuncs[curStep] then
		stepHitFuncs[curStep]()
	end

if curStep == 1 then
noteTweenAlpha('buls4', 4 , 0, 0.01 , 'quadInOut');
noteTweenAlpha('buls5', 5 , 0, 0.01 , 'quadInOut');
noteTweenAlpha('buls6', 6 , 0, 0.01 , 'quadInOut');
noteTweenAlpha('buls7', 7 , 0, 0.01 , 'quadInOut');
end

if curStep == 55 then
noteTweenAlpha('buls4', 4 , 1, 1 , 'quadInOut');
noteTweenAlpha('buls5', 5 , 1, 1 , 'quadInOut');
noteTweenAlpha('buls6', 6 , 1, 1 , 'quadInOut');
noteTweenAlpha('buls7', 7 , 1, 1 , 'quadInOut');
end

if curStep == 128 then --move left
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 + 100, 1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 + 100, 1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 + 100, 1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 + 100, 1 , 'quadInOut');
end

if curStep == 144 then --move right
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 - 100, 1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 - 100, 1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 - 100, 1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 - 100, 1 , 'quadInOut')
end

if curStep == 160 then --move down
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 + 50, 1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 + 50, 1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 + 50, 1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 + 50, 1 , 'quadInOut');
end

if curStep == 176 then -- move up
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 50, 1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 - 50, 1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 50, 1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 - 50, 1 , 'quadInOut');
end

if curStep == 184 then
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 0, 1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 - 0, 1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 0, 1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 - 0, 1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 - 0, 1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 - 0, 1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 - 0, 1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 - 0, 1 , 'quadInOut');
end

if curStep == 254 then
noteTweenAlpha('buls4', 4 , 0, 0.5 , 'quadInOut');
noteTweenAlpha('buls5', 5 , 0, 0.5 , 'quadInOut');
noteTweenAlpha('buls6', 6 , 0, 0.5 , 'quadInOut');
noteTweenAlpha('buls7', 7 , 0, 2.5 , 'quadInOut');
end

if curStep == 320 then
noteTweenAlpha('buls4', 4 , 1, 0.5 , 'quadInOut');
noteTweenAlpha('buls5', 5 , 1, 0.5 , 'quadInOut');
noteTweenAlpha('buls6', 6 , 1, 0.5 , 'quadInOut');
noteTweenAlpha('buls7', 7 , 1, 0.5 , 'quadInOut');
end

if curStep == 488 then
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 0, 1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 - 0, 1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 0, 1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 - 0, 1 , 'quadInOut');
end

if curStep == 512 then
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 + 100, 1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 + 100, 1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 + 100, 1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 + 100, 1 , 'quadInOut');
end

if curStep == 522 then
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 50, 0.3 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 - 50, 0.3 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 50, 0.3 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 - 50, 0.3 , 'quadInOut');
end

if curStep == 526 then
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 + 100, 1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 + 100, 1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 + 100, 1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 + 100, 1 , 'quadInOut');
end

if curStep == 532 then
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 0, 0.7 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 - 0, 0.7 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 0, 0.7 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 - 0, 0.7 , 'quadInOut');
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 - 0, 0.7 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 - 0, 0.7 , 'quadInOut');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 - 0, 0.7 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 - 0, 0.7 , 'quadInOut');
end

if curStep == 544 then
bfdvd = true
end

if curStep == 576 then
bfdvd = false
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 0, 1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 - 0, 1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 0, 1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 - 0, 1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 - 100, 1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 - 100, 1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 - 100, 1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 - 100, 1 , 'quadInOut');
end

if curStep == 586 then
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 + 100, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 + 100, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 + 100, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 + 100, 0.1 , 'quadInOut');
end

if curStep == 588 then
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 50, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 - 50, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 50, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 - 50, 0.1 , 'quadInOut');
end

if curStep == 590 then
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 + 50, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 + 50, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 + 50, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 + 50, 0.1 , 'quadInOut');
end

if curStep == 608 then
bfdvd = true
end

if curStep == 640 then
bfdvd = false
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 - 0, 1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 - 0, 1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 - 0, 1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 - 0, 1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 + 50, 1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 + 50, 1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 + 50, 1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 + 50, 1 , 'quadInOut');
end

if curStep == 650 then
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 50, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 - 50, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 50, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 - 50, 0.1 , 'quadInOut');
end

if curStep == 652 then
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 - 100, 1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 - 100, 1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 - 100, 1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 - 100, 1 , 'quadInOut');
end

if curStep == 654 then
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 + 100, 1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 + 100, 1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 + 100, 1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 + 100, 1 , 'quadInOut');
end

if curStep == 662 then
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 0, 0.7 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 - 0, 0.7 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 0, 0.7 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 - 0, 0.7 , 'quadInOut');
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 - 0, 0.7 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 - 0, 0.7 , 'quadInOut');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 - 0, 0.7 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 - 0, 0.7 , 'quadInOut');
end

if curStep == 672 then
bfdvd = true
end

if curStep == 704 then
bfdvd = false
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 - 100, 1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 - 100, 1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 - 100, 1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 - 100, 1 , 'quadInOut');
end

if curStep == 714 then
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 + 100, 0.01 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 + 100, 0.01 , 'quadInOut');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 + 100, 0.01 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 + 100, 0.01 , 'quadInOut');
end

if curStep == 716 then
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 50, 0.01 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 - 50, 0.01 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 50, 0.01 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 - 50, 0.01 , 'quadInOut');
end

if curStep == 718 then
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 + 150, 2 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 + 150, 2 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 + 150, 2 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 + 150, 2 , 'quadInOut');
end

if curStep == 730 then
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 + 50, 0.01 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 + 50, 0.01 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 + 50, 0.01 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 + 50, 0.01 , 'quadInOut');
end

if curStep == 732 then
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 + 100, 0.01 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 + 100, 0.01 , 'quadInOut');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 + 100, 0.01 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 + 100, 0.01 , 'quadInOut');
end

if curStep == 734 then
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 + 150, 2 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 + 150, 2 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 + 150, 2 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 + 150, 2 , 'quadInOut');
noteTweenAlpha('buls4', 4 , 0, 1 , 'quadInOut');
noteTweenAlpha('buls5', 5 , 0, 1 , 'quadInOut');
noteTweenAlpha('buls6', 6 , 0, 1 , 'quadInOut');
noteTweenAlpha('buls7', 7 , 0, 1 , 'quadInOut');
end

if curStep == 742 then
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 - 320, 1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 - 320, 1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 - 320, 1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 - 320, 1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 0, 1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 - 0, 1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 0, 1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 - 0, 1 , 'quadInOut');
end

if curStep == 805 then
noteTweenAlpha('buls4', 4 , 1, 1 , 'quadInOut');
noteTweenAlpha('buls5', 5 , 1, 1 , 'quadInOut');
noteTweenAlpha('buls6', 6 , 1, 1 , 'quadInOut');
noteTweenAlpha('buls7', 7 , 1, 1 , 'quadInOut');
end

if curStep == 880 then
noteTweenAlpha('buls4', 4 , 0, 0.01 , 'quadInOut');
noteTweenAlpha('buls5', 5 , 0, 0.01 , 'quadInOut');
noteTweenAlpha('buls6', 6 , 0, 0.01 , 'quadInOut');
noteTweenAlpha('buls7', 7 , 0, 0.01 , 'quadInOut');
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 - 0, 1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 - 0, 1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 - 0, 1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 - 0, 1 , 'quadInOut');
end

if curStep == 890 then
noteTweenAlpha('buls4', 4 , 1, 1 , 'quadInOut');
noteTweenAlpha('buls5', 5 , 1, 1 , 'quadInOut');
noteTweenAlpha('buls6', 6 , 1, 1 , 'quadInOut');
noteTweenAlpha('buls7', 7 , 1, 1 , 'quadInOut');
end

if curStep == 896 then
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 + 100, 1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 + 100, 1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 + 100, 1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 + 100, 1 , 'quadInOut');
end

if curStep == 920 then
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 - 100, 1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 - 100, 1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 - 100, 1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 - 100, 1 , 'quadInOut');
end

if curStep == 926 then
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 50, 1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 - 50, 1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 50, 1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 - 50, 1 , 'quadInOut');
end

if curStep == 952 then
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 + 100, 0.5 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 + 100, 0.5 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 + 100, 0.5 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 + 100, 0.5 , 'quadInOut');
end

if curStep == 955 then
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 + 100, 0.5 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 + 100, 0.5 , 'quadInOut');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 + 100, 0.5 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 + 100, 0.5 , 'quadInOut');
end

if curStep == 958 then
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 - 100, 0.5 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 - 100, 0.5 , 'quadInOut');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 - 100, 0.5 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 - 100, 0.5 , 'quadInOut');
end

if curStep == 964 then
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 + 100, 0.5 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 + 100, 0.5 , 'quadInOut');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 + 100, 0.5 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 + 100, 0.5 , 'quadInOut');
end

if curStep == 970 then
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 + 50, 1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 + 50, 1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 + 50, 1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 + 50, 1 , 'quadInOut');
end

if curStep == 978 then
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 + 150, 0.5 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 + 150, 0.5 , 'quadInOut');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 + 150, 0.5 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 + 150, 0.5 , 'quadInOut');
end

if curStep == 984 then
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 50, 1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 - 50, 1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 50, 1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 - 50, 1 , 'quadInOut');
end

if curStep == 990 then
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 + 90, 0.5 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 + 90, 0.5 , 'quadInOut');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 + 90, 0.5 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 + 90, 0.5 , 'quadInOut');
end

if curStep == 1018 then --move down
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 + 50, 1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 + 50, 1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 + 50, 1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 + 50, 1 , 'quadInOut');
end

if curStep == 1021 then
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 - 100, 1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 - 100, 1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 - 100, 1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 - 100, 1 , 'quadInOut')
end

if curStep == 1032 then --move left
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 + 100, 1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 + 100, 1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 + 100, 1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 + 100, 1 , 'quadInOut');
end

if curStep == 1048 then --move right
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 - 50, 1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 - 50, 1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 - 50, 1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 - 50, 1 , 'quadInOut')
end

if curStep == 1054 then --move down
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 + 50, 1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 + 50, 1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 + 50, 1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 + 50, 1 , 'quadInOut');
end

if curStep == 1060 then --move right
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 - 100, 1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 - 100, 1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 - 100, 1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 - 100, 1 , 'quadInOut')
end

if curStep == 1088 then --move down
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 + 50, 1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 + 50, 1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 + 50, 1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 + 50, 1 , 'quadInOut');
end

if curStep == 1092 then -- move up
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 50, 1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 - 50, 1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 50, 1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 - 50, 1 , 'quadInOut');
end

if curStep == 1112 then --move down
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 + 100, 1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 + 100, 1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 + 100, 1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 + 100, 1 , 'quadInOut');
end

if curStep == 1118 then -- move up
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 50, 1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 - 50, 1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 50, 1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 - 50, 1 , 'quadInOut');
end

if curStep == 1128 then
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 - 0, 2 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 - 0, 2 , 'quadInOut');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 - 0, 2 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 - 0, 2 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 0, 2 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 - 0, 2 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 0, 2 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 - 0, 2 , 'quadInOut');
end

if curStep == 1152 then
bfdvd = true
end

if curStep == 1342 then
bfdvd = false
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 - 0, 2 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 - 0, 2 , 'quadInOut');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 - 0, 2 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 - 0, 2 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 0, 2 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 - 0, 2 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 0, 2 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 - 0, 2 , 'quadInOut');
end

if curStep == 1374 then
noteTweenAlpha('buls4', 4 , 0, 0.5 , 'quadInOut');
noteTweenAlpha('buls5', 5 , 0, 0.5 , 'quadInOut');
noteTweenAlpha('buls6', 6 , 0, 0.5 , 'quadInOut');
noteTweenAlpha('buls7', 7 , 0, 3 , 'quadInOut');
end

if curStep == 1414 then
noteTweenAlpha('buls4', 4 , 1, 1 , 'quadInOut');
noteTweenAlpha('buls5', 5 , 1, 1 , 'quadInOut');
noteTweenAlpha('buls6', 6 , 1, 1 , 'quadInOut');
noteTweenAlpha('buls7', 7 , 1, 1 , 'quadInOut');
end

if curStep == 1504 then
noteTweenAlpha('buls4', 4 , 0, 0.5 , 'quadInOut');
noteTweenAlpha('buls5', 5 , 0, 0.5 , 'quadInOut');
noteTweenAlpha('buls6', 6 , 0, 3 , 'quadInOut');
noteTweenAlpha('buls7', 7 , 0, 0.5 , 'quadInOut');
end

if curStep == 1599 then
noteTweenAlpha('buls4', 4 , 1, 0.5 , 'quadInOut');
noteTweenAlpha('buls5', 5 , 1, 0.5 , 'quadInOut');
noteTweenAlpha('buls6', 6 , 1, 0.5 , 'quadInOut');
noteTweenAlpha('buls7', 7 , 1, 0.5 , 'quadInOut');
end

if curStep >= 1920 and curStep < 2176 then

if keyPressed('left') then
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 -320 - 20, 0.05 , 'linear');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 -320 - 20, 0.05 , 'linear');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 -320 - 20, 0.05 , 'linear');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 -320 - 20, 0.05 , 'linear');
end

if keyPressed('down') then
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 + 20, 0.05 , 'linear');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 + 20, 0.05 , 'linear');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 + 20, 0.05 , 'linear');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 + 20, 0.05 , 'linear');
end

if keyPressed('up') then
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 20, 0.05 , 'linear');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 - 20, 0.05 , 'linear');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 20, 0.05 , 'linear');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 - 20, 0.05 , 'linear');
end

if keyPressed('right') then
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 -320  + 20, 0.05 , 'linear');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 -320  + 20, 0.05 , 'linear');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 -320  + 20, 0.05 , 'linear');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 -320  + 20, 0.05 , 'linear');
end
end

if curStep >= 2176 and curStep < 2416 then

if keyPressed('left') then
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 -320 - 40, 0.05 , 'linear');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 -320  - 40, 0.05 , 'linear');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 -320  - 40, 0.05 , 'linear');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 -320  - 40, 0.05 , 'linear');
end

if keyPressed('down') then
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 + 40, 0.05 , 'linear');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 + 40, 0.05 , 'linear');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 + 40, 0.05 , 'linear');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 + 40, 0.05 , 'linear');
end

if keyPressed('up') then
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 40, 0.05 , 'linear');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 - 40, 0.05 , 'linear');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 40, 0.05 , 'linear');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 - 40, 0.05 , 'linear');
end

if keyPressed('right') then
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 -320  + 40, 0.05 , 'linear');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 -320  + 40, 0.05 , 'linear');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 -320  + 40, 0.05 , 'linear');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 -320  + 40, 0.05 , 'linear');
end
end

if curStep == 2418 then
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 - 0, 1 , 'linear');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 - 0, 1 , 'linear');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 - 0, 1 , 'linear');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 - 0, 1 , 'linear');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 0, 1 , 'linear');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 - 0, 1 , 'linear');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 0, 1 , 'linear');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 - 0, 1 , 'linear');
noteTweenAlpha('buls4', 4 , 0, 1 , 'quadInOut');
noteTweenAlpha('buls5', 5 , 0, 1 , 'quadInOut');
noteTweenAlpha('buls6', 6 , 0, 1 , 'quadInOut');
noteTweenAlpha('buls7', 7 , 0, 1 , 'quadInOut');
end

if curStep == 2556 then
noteTweenAlpha('buls4', 4 , 1, 1 , 'quadInOut');
noteTweenAlpha('buls5', 5 , 1, 1 , 'quadInOut');
noteTweenAlpha('buls6', 6 , 1, 1 , 'quadInOut');
noteTweenAlpha('buls7', 7 , 1, 1 , 'quadInOut');
end
end
end
end





