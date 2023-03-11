local sidetosidecame = false

function onUpdate(elapsed)
songPos = getSongPosition()
local currentBeat = (songPos/5000)*(curBpm/60)

if sidetosidecame == true then

noteTweenX(defaultOpponentStrumX0, 0, defaultOpponentStrumX0 + 320 - 2000*math.sin((currentBeat+4*0.25)*math.pi), 3)
noteTweenX(defaultOpponentStrumX1, 1, defaultOpponentStrumX1 + 320 - 2000*math.sin((currentBeat+4*0.25)*math.pi), 3)
noteTweenX(defaultOpponentStrumX2, 2, defaultOpponentStrumX2 + 320 - 2000*math.sin((currentBeat+4*0.25)*math.pi), 3)
noteTweenX(defaultOpponentStrumX3, 3, defaultOpponentStrumX3 + 320 - 2000*math.sin((currentBeat+4*0.25)*math.pi), 3)
end
end

function onStepHit()
if boyfriendName == 'bfm' then
if curStep == 1 then
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 + 320, 1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX1', 1 , defaultOpponentStrumX1 + 320, 1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 + 320, 1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 + 320, 1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 - 320, 1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 - 320, 1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 - 320, 1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 - 320, 1 , 'quadInOut');
noteTweenAlpha('balls0', 0 , 0, 0.1 , 'quadInOut');
noteTweenAlpha('balls1', 1 , 0, 0.1 , 'quadInOut');
noteTweenAlpha('balls2', 2 , 0, 0.1 , 'quadInOut');
noteTweenAlpha('balls3', 3 , 0, 0.1 , 'quadInOut');
noteTweenAlpha('balls4', 4 , 0, 0.1 , 'quadInOut');
noteTweenAlpha('balls5', 5 , 0, 0.1 , 'quadInOut');
noteTweenAlpha('balls6', 6 , 0, 0.1 , 'quadInOut');
noteTweenAlpha('balls7', 7 , 0, 0.1 , 'quadInOut');
end

if curStep == 127 then
noteTweenAlpha('balls0', 0 , 1, 0.4 , 'quadInOut');
noteTweenAlpha('balls1', 1 , 1, 0.4 , 'quadInOut');
noteTweenAlpha('balls2', 2 , 1, 0.4 , 'quadInOut');
noteTweenAlpha('balls3', 3 , 1, 0.4 , 'quadInOut');
noteTweenAlpha('balls4', 4 , 1, 0.4 , 'quadInOut');
noteTweenAlpha('balls5', 5 , 1, 0.4 , 'quadInOut');
noteTweenAlpha('balls6', 6 , 1, 0.4 , 'quadInOut');
noteTweenAlpha('balls7', 7 , 1, 0.4 , 'quadInOut');
end

if curStep == 156 then
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 - 640, 0.4 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 - 600, 0.4 , 'quadInOut');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 - 30, 0.4 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 + 10, 0.4 , 'quadInOut');
noteTweenAngle('defaultPlayerStrum0',4 , - 360 , 0.4, 'quadInOut');
noteTweenAngle('defaultPlayerStrum1',5 , - 360 , 0.4, 'quadInOut');
noteTweenAngle('defaultPlayerStrum2',6 , 360 , 0.4, 'quadInOut');
noteTweenAngle('defaultPlayerStrum3',7 , 360 , 0.4, 'quadInOut');
end

if curStep == 220 then
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 - 10, 0.4 , 'quadInOut');
noteTweenX('defaultOpponentStrumX1', 1 , defaultOpponentStrumX1 + 30, 0.4 , 'quadInOut');
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 + 600, 0.4 , 'quadInOut');
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 + 640, 0.4 , 'quadInOut');
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 - 320, 0.4 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 - 320, 0.4 , 'quadInOut');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 - 320, 0.4 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 - 320, 0.4 , 'quadInOut');
noteTweenAngle('defaultPlayerStrum0',4 , 360 , 0.4, 'quadInOut');
noteTweenAngle('defaultPlayerStrum1',5 , 360 , 0.4, 'quadInOut');
noteTweenAngle('defaultPlayerStrum2',6 , - 360 , 0.4, 'quadInOut');
noteTweenAngle('defaultPlayerStrum3',7 , - 360 , 0.4, 'quadInOut');
noteTweenAngle('defaultOpponentStrum0',0 , - 360 , 0.4, 'quadInOut');
noteTweenAngle('defaultOpponentStrum1',1 , - 360 , 0.4, 'quadInOut');
noteTweenAngle('defaultOpponentStrum2',2 , 360 , 0.4, 'quadInOut');
noteTweenAngle('defaultOpponentStrum3',3 , 360 , 0.4, 'quadInOut');
end

if curStep == 284 or curStep == 476 then
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 + 50, 0.4 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 + 20, 0.4 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 20, 0.4 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 - 50, 0.4 , 'quadInOut');
end

if curStep == 316 or curStep == 380 or curStep == 444 or curStep == 508 then
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 0, 0.4 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 - 0, 0.4 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 0, 0.4 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 - 0, 0.4 , 'quadInOut');
end

if curStep == 348 or curStep == 476 then
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 50, 0.4 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 - 20, 0.4 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 + 20, 0.4 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 + 50, 0.4 , 'quadInOut');
end

if curStep == 380 then
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 + 320, 0.4 , 'quadInOut');
noteTweenX('defaultOpponentStrumX1', 1 , defaultOpponentStrumX1 + 320, 0.4 , 'quadInOut');
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 + 320, 0.4 , 'quadInOut');
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 + 320, 0.4 , 'quadInOut');
noteTweenAlpha('balls0', 0 , 0.3, 0.4 , 'quadInOut');
noteTweenAlpha('balls1', 1 , 0.3, 0.4 , 'quadInOut');
noteTweenAlpha('balls2', 2 , 0.3, 0.4 , 'quadInOut');
noteTweenAlpha('balls3', 3 , 0.3, 0.4 , 'quadInOut');
end

if curStep == 384 then
sidetosidecame = true
end

if curStep == 500 then
sidetosidecame = false
end

if curStep == 514 then
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 + 320, 0.3 , 'quadInOut');
noteTweenX('defaultOpponentStrumX1', 1 , defaultOpponentStrumX1 + 320, 0.3 , 'quadInOut');
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 + 320, 0.3 , 'quadInOut');
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 + 320, 0.3 , 'quadInOut');
end

if curStep == 516 then
noteTweenAlpha('balls0', 0 , 0, 1.4 , 'quadInOut');
noteTweenAlpha('balls1', 1 , 0, 1.4 , 'quadInOut');
noteTweenAlpha('balls2', 2 , 0, 1.4 , 'quadInOut');
noteTweenAlpha('balls3', 3 , 0, 1.4 , 'quadInOut');
noteTweenAlpha('balls4', 4 , 0, 1.4 , 'quadInOut');
noteTweenAlpha('balls5', 5 , 0, 1.4 , 'quadInOut');
noteTweenAlpha('balls6', 6 , 0, 1.4 , 'quadInOut');
noteTweenAlpha('balls7', 7 , 0, 1.4 , 'quadInOut');
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 - 0, 12.82 , 'quadInOut');
noteTweenX('defaultOpponentStrumX1', 1 , defaultOpponentStrumX1 - 0, 12.82 , 'quadInOut');
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 - 0, 12.82 , 'quadInOut');
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 - 0, 12.82 , 'quadInOut');
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 - 0, 12.82 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 - 0, 12.82 , 'quadInOut');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 - 0, 12.82 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 - 0, 12.82 , 'quadInOut');
end

if curStep == 528 or curStep == 560 or curStep == 592 or curStep == 624 then 
noteTweenAlpha('balls0', 0 , 1, 1.7 , 'quadInOut');
noteTweenAlpha('balls1', 1 , 1, 1.7 , 'quadInOut');
noteTweenAlpha('balls2', 2 , 1, 1.7 , 'quadInOut');
noteTweenAlpha('balls3', 3 , 1, 1.7 , 'quadInOut');
noteTweenAlpha('balls4', 4 , 1, 1.7 , 'quadInOut');
noteTweenAlpha('balls5', 5 , 1, 1.7 , 'quadInOut');
noteTweenAlpha('balls6', 6 , 1, 1.7 , 'quadInOut');
noteTweenAlpha('balls7', 7 , 1, 1.7 , 'quadInOut');
end

if curStep == 544 or curStep == 576 or curStep == 608 then 
noteTweenAlpha('balls0', 0 , 0, 1.7 , 'quadInOut');
noteTweenAlpha('balls1', 1 , 0, 1.7 , 'quadInOut');
noteTweenAlpha('balls2', 2 , 0, 1.7 , 'quadInOut');
noteTweenAlpha('balls3', 3 , 0, 1.7 , 'quadInOut');
noteTweenAlpha('balls4', 4 , 0, 1.7 , 'quadInOut');
noteTweenAlpha('balls5', 5 , 0, 1.7 , 'quadInOut');
noteTweenAlpha('balls6', 6 , 0, 1.7 , 'quadInOut');
noteTweenAlpha('balls7', 7 , 0, 1.7 , 'quadInOut');
end

-- moving arrows part 1
if curStep == 640 then
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 80, 1.3 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 - 80, 1.3 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 80, 1.3 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 - 80, 1.3 , 'quadInOut');
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 + 80, 1.3 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 + 80, 1.3 , 'quadInOut');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 + 80, 1.3 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 + 80, 1.3 , 'quadInOut');
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 - 80, 1.3 , 'quadInOut');
noteTweenX('defaultOpponentStrumX1', 1 , defaultOpponentStrumX1 - 80, 1.3 , 'quadInOut');
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 - 80, 1.3 , 'quadInOut');
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 - 80, 1.3 , 'quadInOut');
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 + 80, 1.3 , 'quadInOut');
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 + 80, 1.3 , 'quadInOut');
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 + 80, 1.3 , 'quadInOut');
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 + 80, 1.3 , 'quadInOut');
end

if curStep == 652 then
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 + 40, 0.1 , 'quadInOut');
end

if curStep == 654 then
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 - 0, 0.1 , 'quadInOut');
end

if curStep == 656 then
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 - 40, 0.1 , 'quadInOut');
end

if curStep == 658 then
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 - 0, 0.8 , 'quadInOut');
noteTweenX('defaultOpponentStrumX1', 1 , defaultOpponentStrumX1 - 0, 0.8 , 'quadInOut');
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 - 0, 0.8 , 'quadInOut');
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 - 0, 0.8 , 'quadInOut');
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 - 0, 0.8 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 - 0, 0.8 , 'quadInOut');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 - 0, 0.8 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 - 0, 0.8 , 'quadInOut');
end

if curStep == 666 then
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 + 40, 0.1 , 'quadInOut');
end

if curStep == 668 then
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 - 0, 0.1 , 'quadInOut');
end

--moving arrows on beat
if curStep == 672 then
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 40, 0.1 , 'quadInOut');
end

if curStep == 673 then
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 - 40, 0.1 , 'quadInOut');
end

if curStep == 674 then
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 40, 0.1 , 'quadInOut');
end

if curStep == 675 then
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 - 40, 0.1 , 'quadInOut');
end

if curStep == 677 then
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 + 40, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 - 40, 0.1 , 'quadInOut');
end

if curStep == 678 then
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 + 40, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 - 40, 0.1 , 'quadInOut');
end

if curStep == 679 then
noteTweenX('defaultOpponentStrumX1', 1 , defaultOpponentStrumX1 - 40, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 + 40, 0.1 , 'quadInOut');
end

if curStep == 680 then
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 - 40, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 + 40, 0.1 , 'quadInOut');
end

if curStep == 682 then
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 + 40, 0.1 , 'quadInOut');
end

if curStep == 683 then
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 + 40, 0.1 , 'quadInOut');
end

if curStep == 684 then
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 + 40, 0.1 , 'quadInOut');
end

if curStep == 685 then
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 + 40, 0.1 , 'quadInOut');
end

if curStep == 687 then
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX1', 1 , defaultOpponentStrumX1 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 - 0, 0.1 , 'quadInOut');
end

if curStep == 688 then
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 + 40, 0.1 , 'quadInOut');
end

if curStep == 689 then
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 + 40, 0.1 , 'quadInOut');
end

if curStep == 690 then
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 + 40, 0.1 , 'quadInOut');
end

if curStep == 691 then
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 + 40, 0.1 , 'quadInOut');
end

if curStep == 693 then
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 + 40, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 - 40, 0.1 , 'quadInOut');
end

if curStep == 694 then
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 + 40, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 - 40, 0.1 , 'quadInOut');
end

if curStep == 695 then
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 + 40, 0.1 , 'quadInOut');
end

if curStep == 696 then
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 - 40, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 + 40, 0.1 , 'quadInOut');
end

if curStep == 698 then
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 40, 0.1 , 'quadInOut');
end

if curStep == 699 then
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 - 40, 0.1 , 'quadInOut');
end

if curStep == 700 then
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 40, 0.1 , 'quadInOut');
end

if curStep == 701 then
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 - 40, 0.1 , 'quadInOut');
end

if curStep == 703 then
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX1', 1 , defaultOpponentStrumX1 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 - 0, 0.1 , 'quadInOut');
end

--moving arrows part 2
if curStep == 704 then
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 80, 1.3 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 - 80, 1.3 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 80, 1.3 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 - 80, 1.3 , 'quadInOut');
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 + 80, 1.3 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 + 80, 1.3 , 'quadInOut');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 + 80, 1.3 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 + 80, 1.3 , 'quadInOut');
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 - 80, 1.3 , 'quadInOut');
noteTweenX('defaultOpponentStrumX1', 1 , defaultOpponentStrumX1 - 80, 1.3 , 'quadInOut');
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 - 80, 1.3 , 'quadInOut');
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 - 80, 1.3 , 'quadInOut');
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 + 80, 1.3 , 'quadInOut');
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 + 80, 1.3 , 'quadInOut');
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 + 80, 1.3 , 'quadInOut');
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 + 80, 1.3 , 'quadInOut');
end

if curStep == 716 then
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 + 40, 0.1 , 'quadInOut');
end

if curStep == 718 then
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 - 0, 0.1 , 'quadInOut');
end

if curStep == 720 then
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 - 40, 0.1 , 'quadInOut');
end

if curStep == 722 then
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 - 0, 0.8 , 'quadInOut');
noteTweenX('defaultOpponentStrumX1', 1 , defaultOpponentStrumX1 - 0, 0.8 , 'quadInOut');
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 - 0, 0.8 , 'quadInOut');
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 - 0, 0.8 , 'quadInOut');
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 - 0, 0.8 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 - 0, 0.8 , 'quadInOut');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 - 0, 0.8 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 - 0, 0.8 , 'quadInOut');
end

if curStep == 732 then
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 + 40, 0.1 , 'quadInOut');
end

if curStep == 733 then
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 - 40, 0.1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX1', 1 , defaultOpponentStrumX1 - 40, 0.1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 - 40, 0.1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 - 40, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 + 40, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 + 40, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 + 40, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 + 40, 0.1 , 'quadInOut');
end

if curStep == 735 then
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX1', 1 , defaultOpponentStrumX1 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 - 0, 0.1 , 'quadInOut');
end

--arrow moving on beat part 2
if curStep == 736 then
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 + 40, 0.1 , 'quadInOut');
end

if curStep == 737 then
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 + 40, 0.1 , 'quadInOut');
end

if curStep == 738 then
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 40, 0.1 , 'quadInOut');
end

if curStep == 739 then
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 - 40, 0.1 , 'quadInOut');
end

if curStep == 741 then
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 + 40, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 - 40, 0.1 , 'quadInOut');
end

if curStep == 742 then
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 + 40, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 - 40, 0.1 , 'quadInOut');
end

if curStep == 743 then
noteTweenX('defaultOpponentStrumX1', 1 , defaultOpponentStrumX1 - 40, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 + 40, 0.1 , 'quadInOut');
end

if curStep == 744 then
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 - 40, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 + 40, 0.1 , 'quadInOut');
end

if curStep == 746 then
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 40, 0.1 , 'quadInOut');
end

if curStep == 747 then
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 - 40, 0.1 , 'quadInOut');
end

if curStep == 748 then
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 + 40, 0.1 , 'quadInOut');
end

if curStep == 749 then
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 + 40, 0.1 , 'quadInOut');
end

if curStep == 751 then
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX1', 1 , defaultOpponentStrumX1 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 - 0, 0.1 , 'quadInOut');
end

if curStep == 752 then
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 40, 0.1 , 'quadInOut');
end

if curStep == 753 then
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 - 40, 0.1 , 'quadInOut');
end

if curStep == 754 then
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 + 40, 0.1 , 'quadInOut');
end

if curStep == 755 then
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 + 40, 0.1 , 'quadInOut');
end

if curStep == 757 then
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 + 40, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 - 40, 0.1 , 'quadInOut');
end

if curStep == 758 then
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 + 40, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 - 40, 0.1 , 'quadInOut');
end

if curStep == 759 then
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 + 40, 0.1 , 'quadInOut');
end

if curStep == 760 then
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 - 40, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 + 40, 0.1 , 'quadInOut');
end

if curStep == 762 then
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 + 40, 0.1 , 'quadInOut');
end

if curStep == 763 then
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 + 40, 0.1 , 'quadInOut');
end

if curStep == 764 then
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 40, 0.1 , 'quadInOut');
end

if curStep == 765 then
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 - 40, 0.1 , 'quadInOut');
end

if curStep == 767 then
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX1', 1 , defaultOpponentStrumX1 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 - 0, 0.1 , 'quadInOut');
end

--moving arrows part 3
if curStep == 768 then
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 80, 1.3 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 - 80, 1.3 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 80, 1.3 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 - 80, 1.3 , 'quadInOut');
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 + 80, 1.3 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 + 80, 1.3 , 'quadInOut');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 + 80, 1.3 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 + 80, 1.3 , 'quadInOut');
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 - 80, 1.3 , 'quadInOut');
noteTweenX('defaultOpponentStrumX1', 1 , defaultOpponentStrumX1 - 80, 1.3 , 'quadInOut');
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 - 80, 1.3 , 'quadInOut');
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 - 80, 1.3 , 'quadInOut');
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 + 80, 1.3 , 'quadInOut');
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 + 80, 1.3 , 'quadInOut');
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 + 80, 1.3 , 'quadInOut');
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 + 80, 1.3 , 'quadInOut');
end

if curStep == 780 then
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 + 40, 0.1 , 'quadInOut');
end

if curStep == 782 then
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 - 0, 0.1 , 'quadInOut');
end

if curStep == 784 then
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 - 40, 0.1 , 'quadInOut');
end

if curStep == 786 then
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 - 0, 0.8 , 'quadInOut');
noteTweenX('defaultOpponentStrumX1', 1 , defaultOpponentStrumX1 - 0, 0.8 , 'quadInOut');
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 - 0, 0.8 , 'quadInOut');
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 - 0, 0.8 , 'quadInOut');
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 - 0, 0.8 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 - 0, 0.8 , 'quadInOut');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 - 0, 0.8 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 - 0, 0.8 , 'quadInOut');
end

if curStep == 794 then
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 + 40, 0.1 , 'quadInOut');
end

if curStep == 796 then
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX1', 1 , defaultOpponentStrumX1 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 - 0, 0.1 , 'quadInOut');
end

--arrows moving on beat part 3
if curStep == 800 then
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 + 40, 0.1 , 'quadInOut');
end

if curStep == 801 then
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 - 40, 0.1 , 'quadInOut');
end

if curStep == 802 then
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 40, 0.1 , 'quadInOut');
end

if curStep == 803 then
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 + 40, 0.1 , 'quadInOut');
end

if curStep == 805 then
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 + 40, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 - 40, 0.1 , 'quadInOut');
end

if curStep == 806 then
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 + 40, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 - 40, 0.1 , 'quadInOut');
end

if curStep == 807 then
noteTweenX('defaultOpponentStrumX1', 1 , defaultOpponentStrumX1 - 40, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 + 40, 0.1 , 'quadInOut');
end

if curStep == 808 then
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 - 40, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 + 40, 0.1 , 'quadInOut');
end

if curStep == 810 then
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 40, 0.1 , 'quadInOut');
end

if curStep == 811 then
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 + 40, 0.1 , 'quadInOut');
end

if curStep == 812 then
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 40, 0.1 , 'quadInOut');
end

if curStep == 813 then
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 + 40, 0.1 , 'quadInOut');
end

if curStep == 815 then
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX1', 1 , defaultOpponentStrumX1 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 - 0, 0.1 , 'quadInOut');
end

if curStep == 816 then
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 40, 0.1 , 'quadInOut');
end

if curStep == 817 then
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 + 40, 0.1 , 'quadInOut');
end

if curStep == 818 then
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 40, 0.1 , 'quadInOut');
end

if curStep == 819 then
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 + 40, 0.1 , 'quadInOut');
end

if curStep == 821 then
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 + 40, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 - 40, 0.1 , 'quadInOut');
end

if curStep == 822 then
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 + 40, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 - 40, 0.1 , 'quadInOut');
end

if curStep == 823 then
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 + 40, 0.1 , 'quadInOut');
end

if curStep == 824 then
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 - 40, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 + 40, 0.1 , 'quadInOut');
end

if curStep == 826 then
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 + 40, 0.1 , 'quadInOut');
end

if curStep == 827 then
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 + 40, 0.1 , 'quadInOut');
end

if curStep == 828 then
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 40, 0.1 , 'quadInOut');
end

if curStep == 829 then
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 - 40, 0.1 , 'quadInOut');
end

if curStep == 831 then
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX1', 1 , defaultOpponentStrumX1 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 - 0, 0.1 , 'quadInOut');
end

--finally the end of those parts

if curStep == 894 then
noteTweenAlpha('balls4', 4 , 0, 3.5 , 'quadInOut');
noteTweenAlpha('balls5', 5 , 0, 3.5 , 'quadInOut');
noteTweenAlpha('balls6', 6 , 0, 3.5 , 'quadInOut');
noteTweenAlpha('balls7', 7 , 0, 3.5 , 'quadInOut');
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 + 320, 3.5 , 'quadInOut');
noteTweenX('defaultOpponentStrumX1', 1 , defaultOpponentStrumX1 + 320, 3.5 , 'quadInOut');
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 + 320, 3.5 , 'quadInOut');
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 + 320, 3.5 , 'quadInOut');
end

if curStep == 952 then
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 - 0, 0.85 , 'quadInOut');
noteTweenX('defaultOpponentStrumX1', 1 , defaultOpponentStrumX1 - 0, 0.85 , 'quadInOut');
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 - 0, 0.85 , 'quadInOut');
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 - 0, 0.85 , 'quadInOut');
noteTweenAlpha('balls4', 4 , 1, 0.85 , 'quadInOut');
noteTweenAlpha('balls5', 5 , 1, 0.85 , 'quadInOut');
noteTweenAlpha('balls6', 6 , 1, 0.85 , 'quadInOut');
noteTweenAlpha('balls7', 7 , 1, 0.85 , 'quadInOut');
end

if curStep == 1008 then
noteTweenAlpha('balls0', 1 , 0, 0.1 , 'quadInOut');
noteTweenAlpha('balls4', 4 , 0, 0.1 , 'quadInOut');
noteTweenAlpha('balls3', 3 , 0, 0.1 , 'quadInOut');
noteTweenAlpha('balls5', 5 , 0, 0.1 , 'quadInOut');
noteTweenAlpha('balls7', 6 , 0, 0.1 , 'quadInOut');
end

if curStep == 1011 then
noteTweenAlpha('balls1', 0 , 0, 0.1 , 'quadInOut');
noteTweenAlpha('balls6', 7 , 0, 0.1 , 'quadInOut');
noteTweenAlpha('balls2', 2 , 1, 0.1 , 'quadInOut');
noteTweenAlpha('balls5', 5 , 1, 0.1 , 'quadInOut');
end

if curStep == 1014 then
noteTweenAlpha('balls2', 2 , 0, 0.1 , 'quadInOut');
noteTweenAlpha('balls5', 5 , 0, 0.1 , 'quadInOut');
noteTweenAlpha('balls0', 1 , 1, 0.1 , 'quadInOut');
noteTweenAlpha('balls7', 6 , 1, 0.1 , 'quadInOut');
end

if curStep == 1017 then
noteTweenAlpha('balls0', 1 , 0, 0.1 , 'quadInOut');
noteTweenAlpha('balls7', 6 , 0, 0.1 , 'quadInOut');
noteTweenAlpha('balls4', 3 , 1, 0.1 , 'quadInOut');
noteTweenAlpha('balls6', 4 , 1, 0.1 , 'quadInOut');
end

if curStep == 1020 then
noteTweenAlpha('balls0', 0 , 1, 0.1 , 'quadInOut');
noteTweenAlpha('balls1', 1 , 1, 0.1 , 'quadInOut');
noteTweenAlpha('balls2', 2 , 1, 0.1 , 'quadInOut');
noteTweenAlpha('balls3', 3 , 1, 0.1 , 'quadInOut');
noteTweenAlpha('balls4', 4 , 1, 0.1 , 'quadInOut');
noteTweenAlpha('balls5', 5 , 1, 0.1 , 'quadInOut');
noteTweenAlpha('balls6', 6 , 1, 0.1 , 'quadInOut');
noteTweenAlpha('balls7', 7 , 1, 0.1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 + 90, 0.5 , 'quadInOut');
noteTweenX('defaultOpponentStrumX1', 1 , defaultOpponentStrumX1 + 90, 0.5 , 'quadInOut');
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 + 90, 0.5 , 'quadInOut');
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 + 90, 0.5 , 'quadInOut');
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 - 90, 0.5 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 - 90, 0.5 , 'quadInOut');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 - 90, 0.5 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 - 90, 0.5 , 'quadInOut');
end

if curStep == 1052 then
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 + 50, 0.4 , 'quadInOut');
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 + 20, 0.4 , 'quadInOut');
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 - 20, 0.4 , 'quadInOut');
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 - 50, 0.4 , 'quadInOut');
end

if curStep == 1084 then
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 + 50, 0.4 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 + 20, 0.4 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 20, 0.4 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 - 50, 0.4 , 'quadInOut');
end

if curStep == 1116 then
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 - 50, 0.4 , 'quadInOut');
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 - 20, 0.4 , 'quadInOut');
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 + 20, 0.4 , 'quadInOut');
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 + 50, 0.4 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 + 50, 0.4 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 + 20, 0.4 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 20, 0.4 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 - 50, 0.4 , 'quadInOut');
end

if curStep == 1144 then
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 + 560, 0.4 , 'quadInOut');
noteTweenX('defaultOpponentStrumX1', 1 , defaultOpponentStrumX1 + 560, 0.4 , 'quadInOut');
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 + 560, 0.4 , 'quadInOut');
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 + 560, 0.4 , 'quadInOut');
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 - 560, 0.4 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 - 560, 0.4 , 'quadInOut');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 - 560, 0.4 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 - 560, 0.4 , 'quadInOut');
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 + 50, 0.8 , 'quadInOut');
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 + 20, 0.8 , 'quadInOut');
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 - 20, 0.8 , 'quadInOut');
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 - 50, 0.8 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 50, 0.8 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 - 20, 0.8 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 + 20, 0.8 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 + 50, 0.8 , 'quadInOut');
end

if curStep == 1180 then
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 + 50, 0.8 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 + 20, 0.8 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 20, 0.8 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 - 50, 0.8 , 'quadInOut');
end

if curStep == 1216 then
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 - 50, 0.8 , 'quadInOut');
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 - 20, 0.8 , 'quadInOut');
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 + 20, 0.8 , 'quadInOut');
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 + 50, 0.8 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 50, 0.8 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 - 20, 0.8 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 + 20, 0.8 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 + 50, 0.8 , 'quadInOut');
end

if curStep == 1224 then
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 - 0, 0.1 , 'quadInOut');
end

--arrows moving on beat part 4
if curStep == 1248 then
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 - 20, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 + 20, 0.1 , 'quadInOut');
end

if curStep == 1249 then
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 + 20, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 - 20, 0.1 , 'quadInOut');
end

if curStep == 1250 then
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 + 20, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 20, 0.1 , 'quadInOut');
end

if curStep == 1251 then
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 - 20, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 + 20, 0.1 , 'quadInOut');
end

if curStep == 1252 then
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 + 20, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 20, 0.1 , 'quadInOut');
end

if curStep == 1253 then
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 + 20, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 - 20, 0.1 , 'quadInOut');
end

if curStep == 1254 then
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 + 20, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 20, 0.1 , 'quadInOut');
end

if curStep == 1255 then
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 + 20, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 - 20, 0.1 , 'quadInOut');
end

if curStep == 1256 then
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 +560 + 20, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 -560 - 20, 0.1 , 'quadInOut');
end

if curStep == 1257 then
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 +560 + 20, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 -560 - 20, 0.1 , 'quadInOut');
end

if curStep == 1258 then
noteTweenX('defaultOpponentStrumX1', 1 , defaultOpponentStrumX1 +560 + 40, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 -560 - 40, 0.1 , 'quadInOut');
end

if curStep == 1259 then
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 +560 + 20, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX2', 7 , defaultPlayerStrumX2 -560 - 20, 0.1 , 'quadInOut');
end

if curStep == 1260 then
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 + 20, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 20, 0.1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 +560 - 20, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 - 560 - 20, 0.1 , 'quadInOut');
end

if curStep == 1261 then
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 + 20, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY2 - 20, 0.1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 +560 - 20, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX2 - 560 - 20, 0.1 , 'quadInOut');
end

if curStep == 1262 then
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 + 20, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 20, 0.1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX1', 1 , defaultOpponentStrumX1 +560 + 20, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 - 560 + 20, 0.1 , 'quadInOut');
end

if curStep == 1263 then
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 - 40, 0.1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 +560 + 20, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 - 560 + 20, 0.1 , 'quadInOut');
end

if curStep == 1264 then
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 +560 , 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 - 560 , 0.1 , 'quadInOut');
end

if curStep == 1265 then
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 +560, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 -560, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 - 0, 0.1 , 'quadInOut');
end

if curStep == 1266 then
noteTweenX('defaultOpponentStrumX1', 1 , defaultOpponentStrumX1 +560 , 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 - 560, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 0, 0.1 , 'quadInOut');
end

if curStep == 1267 then
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 + 0, 0.1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 +560 , 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 - 560, 0.1 , 'quadInOut');
end

if curStep == 1268 then
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 + 20, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 20, 0.1 , 'quadInOut');
end

if curStep == 1269 then
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 + 20, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 - 20, 0.1 , 'quadInOut');
end

if curStep == 1270 then
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 + 20, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 20, 0.1 , 'quadInOut');
end

if curStep == 1271 then
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 + 20, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 - 20, 0.1 , 'quadInOut');
end

if curStep == 1272 then
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 +560 + 20, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 -560 - 20, 0.1 , 'quadInOut');
end

if curStep == 1273 then
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 +560 + 20, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 -560 - 20, 0.1 , 'quadInOut');
end

if curStep == 1274 then
noteTweenX('defaultOpponentStrumX1', 1 , defaultOpponentStrumX1 +560 + 20, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 -560 - 20, 0.1 , 'quadInOut');
end

if curStep == 1275 then
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 +560 + 20, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 -560 - 20, 0.1 , 'quadInOut');
end

if curStep == 1276 then
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 +560 , 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 - 560 , 0.1 , 'quadInOut');
end

if curStep == 1277 then
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 +560, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 -560, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 - 0, 0.1 , 'quadInOut');
end

if curStep == 1278 then
noteTweenX('defaultOpponentStrumX1', 1 , defaultOpponentStrumX1 +560 , 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 - 560, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 0, 0.1 , 'quadInOut');
end

if curStep == 1279 then
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 + 0, 0.1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 +560 , 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 - 560, 0.1 , 'quadInOut');
end
--end why are we still here... just to suffer
--more diagonal >:)
if curStep == 1280 then
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 - 50, 0.8 , 'quadInOut');
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 - 20, 0.8 , 'quadInOut');
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 + 20, 0.8 , 'quadInOut');
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 + 50, 0.8 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 + 50, 0.8 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 + 20, 0.8 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 20, 0.8 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 - 50, 0.8 , 'quadInOut');
end

if curStep == 1312 then
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 + 50, 0.8 , 'quadInOut');
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 + 20, 0.8 , 'quadInOut');
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 - 20, 0.8 , 'quadInOut');
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 - 50, 0.8 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 50, 0.8 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 - 20, 0.8 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 + 20, 0.8 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 + 50, 0.8 , 'quadInOut');
end

if curStep == 1328 then
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 - 0, 0.5 , 'quadInOut');
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 - 0, 0.5 , 'quadInOut');
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 - 0, 0.5 , 'quadInOut');
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 - 0, 0.5 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 0, 0.5 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 - 0, 0.5 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 0, 0.5 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 - 0, 0.5 , 'quadInOut');
end

if curStep == 1332 then
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 - 50, 0.8 , 'quadInOut');
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 - 20, 0.8 , 'quadInOut');
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 + 20, 0.8 , 'quadInOut');
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 + 50, 0.8 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 + 50, 0.8 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 + 20, 0.8 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 20, 0.8 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 - 50, 0.8 , 'quadInOut');
end

if curStep == 1336 then -- og arrows pos
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 - 0, 0.5 , 'quadInOut');
noteTweenX('defaultOpponentStrumX1', 1 , defaultOpponentStrumX1 - 0, 0.5 , 'quadInOut');
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 - 0, 0.5 , 'quadInOut');
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 - 0, 0.5 , 'quadInOut');
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 - 0, 0.5 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 - 0, 0.5 , 'quadInOut');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 - 0, 0.5 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 - 0, 0.5 , 'quadInOut');
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 + 50, 0.8 , 'quadInOut');
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 + 20, 0.8 , 'quadInOut');
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 - 20, 0.8 , 'quadInOut');
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 - 50, 0.8 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 50, 0.8 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 - 20, 0.8 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 + 20, 0.8 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 + 50, 0.8 , 'quadInOut');
end

if curStep == 1340 then
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 - 0, 0.1 , 'quadInOut');
end

if curStep == 1392 then
noteTweenAlpha('balls0', 0 , 0, 0.1 , 'quadInOut');
noteTweenAlpha('balls1', 1 , 0, 0.1 , 'quadInOut');
noteTweenAlpha('balls2', 2 , 0, 0.1 , 'quadInOut');
noteTweenAlpha('balls3', 3 , 0, 0.1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 + 320, 1.2 , 'quadInOut');
noteTweenX('defaultOpponentStrumX1', 1 , defaultOpponentStrumX1 + 320, 1.2 , 'quadInOut');
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 + 320, 1.2 , 'quadInOut');
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 + 320, 1.2 , 'quadInOut');
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 - 320, 1.2 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 - 320, 1.2 , 'quadInOut');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 - 320, 1.2 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 - 320, 1.2 , 'quadInOut');
end

--beggining part
if curStep == 1404 then
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 - 10, 0.4 , 'quadInOut');
noteTweenX('defaultOpponentStrumX1', 1 , defaultOpponentStrumX1 + 30, 0.4 , 'quadInOut');
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 + 600, 0.4 , 'quadInOut');
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 + 640, 0.4 , 'quadInOut');
noteTweenAngle('defaultOpponentStrum0',0 , - 360 , 0.4, 'quadInOut');
noteTweenAngle('defaultOpponentStrum1',1 , - 360 , 0.4, 'quadInOut');
noteTweenAngle('defaultOpponentStrum2',2 ,  360 , 0.4, 'quadInOut');
noteTweenAngle('defaultOpponentStrum3',3 ,  360 , 0.4, 'quadInOut');
noteTweenAlpha('balls0', 0 , 1, 0.4 , 'quadInOut');
noteTweenAlpha('balls1', 1 , 1, 0.4 , 'quadInOut');
noteTweenAlpha('balls2', 2 , 1, 0.4 , 'quadInOut');
noteTweenAlpha('balls3', 3 , 1, 0.4 , 'quadInOut');
end

if curStep == 1436 or curStep == 1500 then
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 + 50, 0.8 , 'quadInOut');
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 + 20, 0.8 , 'quadInOut');
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 - 20, 0.8 , 'quadInOut');
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 - 50, 0.8 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 50, 0.8 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 - 20, 0.8 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 + 20, 0.8 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 + 50, 0.8 , 'quadInOut');
end

if curStep == 1468 then
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 - 50, 0.8 , 'quadInOut');
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 - 20, 0.8 , 'quadInOut');
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 + 20, 0.8 , 'quadInOut');
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 + 50, 0.8 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 + 50, 0.8 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 + 20, 0.8 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 20, 0.8 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 - 50, 0.8 , 'quadInOut');
end

if curStep == 1535 then
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 - 0, 0.5 , 'quadInOut');
noteTweenX('defaultOpponentStrumX1', 1 , defaultOpponentStrumX1 - 0, 0.5 , 'quadInOut');
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 - 0, 0.5 , 'quadInOut');
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 - 0, 0.5 , 'quadInOut');
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 - 0, 0.5 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 - 0, 0.5 , 'quadInOut');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 - 0, 0.5 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 - 0, 0.5 , 'quadInOut');
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 - 0, 0.5 , 'quadInOut');
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 - 0, 0.5 , 'quadInOut');
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 - 0, 0.5 , 'quadInOut');
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 - 0, 0.5 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 0, 0.5 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 - 0, 0.5 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 0, 0.5 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 - 0, 0.5 , 'quadInOut');
end

if curStep == 1540 then
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 + 560, 12.8 , 'quadInOut');
noteTweenX('defaultOpponentStrumX1', 1 , defaultOpponentStrumX1 + 560, 12.8 , 'quadInOut');
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 + 560, 12.8 , 'quadInOut');
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 + 560, 12.8 , 'quadInOut');
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 - 560, 12.8 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 - 560, 12.8 , 'quadInOut');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 - 560, 12.8 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 - 560, 12.8 , 'quadInOut');
noteTweenAlpha('balls0', 0 , 0, 1.7 , 'quadInOut');
noteTweenAlpha('balls1', 1 , 0, 1.7 , 'quadInOut');
noteTweenAlpha('balls2', 2 , 0, 1.7 , 'quadInOut');
noteTweenAlpha('balls3', 3 , 0, 1.7 , 'quadInOut');
noteTweenAlpha('balls4', 4 , 0, 1.7 , 'quadInOut');
noteTweenAlpha('balls5', 5 , 0, 1.7 , 'quadInOut');
noteTweenAlpha('balls6', 6 , 0, 1.7 , 'quadInOut');
noteTweenAlpha('balls7', 7 , 0, 1.7 , 'quadInOut');
end

if curStep == 1552 or curStep == 1584 or curStep == 1616 or curStep == 1648 then
noteTweenAlpha('balls0', 0 , 1, 1.7 , 'quadInOut');
noteTweenAlpha('balls1', 1 , 1, 1.7 , 'quadInOut');
noteTweenAlpha('balls2', 2 , 1, 1.7 , 'quadInOut');
noteTweenAlpha('balls3', 3 , 1, 1.7 , 'quadInOut');
noteTweenAlpha('balls4', 4 , 1, 1.7 , 'quadInOut');
noteTweenAlpha('balls5', 5 , 1, 1.7 , 'quadInOut');
noteTweenAlpha('balls6', 6 , 1, 1.7 , 'quadInOut');
noteTweenAlpha('balls7', 7 , 1, 1.7 , 'quadInOut');
end

if curStep == 1568 or curStep == 1600 or curStep == 1632 then
noteTweenAlpha('balls0', 0 , 0, 1.7 , 'quadInOut');
noteTweenAlpha('balls1', 1 , 0, 1.7 , 'quadInOut');
noteTweenAlpha('balls2', 2 , 0, 1.7 , 'quadInOut');
noteTweenAlpha('balls3', 3 , 0, 1.7 , 'quadInOut');
noteTweenAlpha('balls4', 4 , 0, 1.7 , 'quadInOut');
noteTweenAlpha('balls5', 5 , 0, 1.7 , 'quadInOut');
noteTweenAlpha('balls6', 6 , 0, 1.7 , 'quadInOut');
noteTweenAlpha('balls7', 7 , 0, 1.7 , 'quadInOut');
end

--moving arrows again, weeeeeee more code
if curStep == 1664 then
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 80, 1.3 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 - 80, 1.3 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 80, 1.3 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 - 80, 1.3 , 'quadInOut');
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 + 80, 1.3 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 + 80, 1.3 , 'quadInOut');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 + 80, 1.3 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 + 80, 1.3 , 'quadInOut');
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 - 80, 1.3 , 'quadInOut');
noteTweenX('defaultOpponentStrumX1', 1 , defaultOpponentStrumX1 - 80, 1.3 , 'quadInOut');
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 - 80, 1.3 , 'quadInOut');
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 - 80, 1.3 , 'quadInOut');
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 + 80, 1.3 , 'quadInOut');
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 + 80, 1.3 , 'quadInOut');
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 + 80, 1.3 , 'quadInOut');
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 + 80, 1.3 , 'quadInOut');
end

if curStep == 1676 then
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 + 40, 0.1 , 'quadInOut');
end

if curStep == 1678 then
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 - 0, 0.1 , 'quadInOut');
end

if curStep == 1680 then
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 - 40, 0.1 , 'quadInOut');
end

if curStep == 1682 then
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 - 0, 0.8 , 'quadInOut');
noteTweenX('defaultOpponentStrumX1', 1 , defaultOpponentStrumX1 - 0, 0.8 , 'quadInOut');
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 - 0, 0.8 , 'quadInOut');
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 - 0, 0.8 , 'quadInOut');
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 - 0, 0.8 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 - 0, 0.8 , 'quadInOut');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 - 0, 0.8 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 - 0, 0.8 , 'quadInOut');
end

if curStep == 1690 then
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 + 40, 0.1 , 'quadInOut');
end

if curStep == 1692 then
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 - 0, 0.1 , 'quadInOut');
end

-- more moving arrows on beat
if curStep == 1696 then
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 40, 0.1 , 'quadInOut');
end

if curStep == 1697 then
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 - 40, 0.1 , 'quadInOut');
end

if curStep == 1698 then
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 40, 0.1 , 'quadInOut');
end

if curStep == 1699 then
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 - 40, 0.1 , 'quadInOut');
end

if curStep == 1701 then
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 + 40, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 - 40, 0.1 , 'quadInOut');
end

if curStep == 1702 then
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 + 40, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 - 40, 0.1 , 'quadInOut');
end

if curStep == 1703 then
noteTweenX('defaultOpponentStrumX1', 1 , defaultOpponentStrumX1 - 40, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 + 40, 0.1 , 'quadInOut');
end

if curStep == 1704 then
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 - 40, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 + 40, 0.1 , 'quadInOut');
end

if curStep == 1706 then
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 + 40, 0.1 , 'quadInOut');
end

if curStep == 1707 then
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 + 40, 0.1 , 'quadInOut');
end

if curStep == 1708 then
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 + 40, 0.1 , 'quadInOut');
end

if curStep == 1709 then
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 + 40, 0.1 , 'quadInOut');
end

if curStep == 1711 then
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX1', 1 , defaultOpponentStrumX1 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 - 0, 0.1 , 'quadInOut');
end

if curStep == 1712 then
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 + 40, 0.1 , 'quadInOut');
end

if curStep == 1713 then
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 + 40, 0.1 , 'quadInOut');
end

if curStep == 1714 then
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 + 40, 0.1 , 'quadInOut');
end

if curStep == 1715 then
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 + 40, 0.1 , 'quadInOut');
end

if curStep == 1717 then
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 + 40, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 - 40, 0.1 , 'quadInOut');
end

if curStep == 1718 then
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 + 40, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 - 40, 0.1 , 'quadInOut');
end

if curStep == 1719 then
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 + 40, 0.1 , 'quadInOut');
end

if curStep == 1720 then
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 - 40, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 + 40, 0.1 , 'quadInOut');
end

if curStep == 1722 then
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 40, 0.1 , 'quadInOut');
end

if curStep == 1723 then
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 - 40, 0.1 , 'quadInOut');
end

if curStep == 1724 then
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 40, 0.1 , 'quadInOut');
end

if curStep == 1725 then
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 - 40, 0.1 , 'quadInOut');
end

if curStep == 1727 then
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX1', 1 , defaultOpponentStrumX1 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 - 0, 0.1 , 'quadInOut');
end

--moving arrows part 2
if curStep == 1728 then
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 80, 1.3 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 - 80, 1.3 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 80, 1.3 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 - 80, 1.3 , 'quadInOut');
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 + 80, 1.3 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 + 80, 1.3 , 'quadInOut');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 + 80, 1.3 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 + 80, 1.3 , 'quadInOut');
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 - 80, 1.3 , 'quadInOut');
noteTweenX('defaultOpponentStrumX1', 1 , defaultOpponentStrumX1 - 80, 1.3 , 'quadInOut');
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 - 80, 1.3 , 'quadInOut');
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 - 80, 1.3 , 'quadInOut');
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 + 80, 1.3 , 'quadInOut');
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 + 80, 1.3 , 'quadInOut');
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 + 80, 1.3 , 'quadInOut');
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 + 80, 1.3 , 'quadInOut');
end

if curStep == 1740 then
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 + 40, 0.1 , 'quadInOut');
end

if curStep == 1742 then
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 - 0, 0.1 , 'quadInOut');
end

if curStep == 1744 then
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 - 40, 0.1 , 'quadInOut');
end

if curStep == 1746 then
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 - 0, 0.8 , 'quadInOut');
noteTweenX('defaultOpponentStrumX1', 1 , defaultOpponentStrumX1 - 0, 0.8 , 'quadInOut');
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 - 0, 0.8 , 'quadInOut');
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 - 0, 0.8 , 'quadInOut');
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 - 0, 0.8 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 - 0, 0.8 , 'quadInOut');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 - 0, 0.8 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 - 0, 0.8 , 'quadInOut');
end

if curStep == 1754 then
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 + 40, 0.1 , 'quadInOut');
end

if curStep == 1756 then
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 - 40, 0.1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX1', 1 , defaultOpponentStrumX1 - 40, 0.1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 - 40, 0.1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 - 40, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 + 40, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 + 40, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 + 40, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 + 40, 0.1 , 'quadInOut');
end

if curStep == 1757 then
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX1', 1 , defaultOpponentStrumX1 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 - 0, 0.1 , 'quadInOut');
end

--arrow moving on beat part 2
if curStep == 1760 then
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 + 40, 0.1 , 'quadInOut');
end

if curStep == 1761 then
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 + 40, 0.1 , 'quadInOut');
end

if curStep == 1762 then
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 40, 0.1 , 'quadInOut');
end

if curStep == 1763 then
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 - 40, 0.1 , 'quadInOut');
end

if curStep == 1765 then
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 + 40, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 - 40, 0.1 , 'quadInOut');
end

if curStep == 1766 then
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 + 40, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 - 40, 0.1 , 'quadInOut');
end

if curStep == 1767 then
noteTweenX('defaultOpponentStrumX1', 1 , defaultOpponentStrumX1 - 40, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 + 40, 0.1 , 'quadInOut');
end

if curStep == 1768 then
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 - 40, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 + 40, 0.1 , 'quadInOut');
end

if curStep == 1770 then
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 40, 0.1 , 'quadInOut');
end

if curStep == 1771 then
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 - 40, 0.1 , 'quadInOut');
end

if curStep == 1772 then
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 + 40, 0.1 , 'quadInOut');
end

if curStep == 1773 then
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 + 40, 0.1 , 'quadInOut');
end

if curStep == 1775 then
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX1', 1 , defaultOpponentStrumX1 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 - 0, 0.1 , 'quadInOut');
end

if curStep == 1776 then
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 40, 0.1 , 'quadInOut');
end

if curStep == 1777 then
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 - 40, 0.1 , 'quadInOut');
end

if curStep == 1778 then
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 + 40, 0.1 , 'quadInOut');
end

if curStep == 1779 then
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 + 40, 0.1 , 'quadInOut');
end

if curStep == 1781 then
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 + 40, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 - 40, 0.1 , 'quadInOut');
end

if curStep == 1782 then
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 + 40, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 - 40, 0.1 , 'quadInOut');
end

if curStep == 1783 then
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 + 40, 0.1 , 'quadInOut');
end

if curStep == 1784 then
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 - 40, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 + 40, 0.1 , 'quadInOut');
end

if curStep == 1786 then
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 + 40, 0.1 , 'quadInOut');
end

if curStep == 1787 then
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 + 40, 0.1 , 'quadInOut');
end

if curStep == 1788 then
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 40, 0.1 , 'quadInOut');
end

if curStep == 1789 then
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 - 40, 0.1 , 'quadInOut');
end

if curStep == 1791 then
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX1', 1 , defaultOpponentStrumX1 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 - 0, 0.1 , 'quadInOut');
end

--more moving arrows, not big surprise
if curStep == 1792 then
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 80, 1.3 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 - 80, 1.3 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 80, 1.3 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 - 80, 1.3 , 'quadInOut');
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 + 80, 1.3 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 + 80, 1.3 , 'quadInOut');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 + 80, 1.3 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 + 80, 1.3 , 'quadInOut');
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 - 80, 1.3 , 'quadInOut');
noteTweenX('defaultOpponentStrumX1', 1 , defaultOpponentStrumX1 - 80, 1.3 , 'quadInOut');
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 - 80, 1.3 , 'quadInOut');
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 - 80, 1.3 , 'quadInOut');
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 + 80, 1.3 , 'quadInOut');
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 + 80, 1.3 , 'quadInOut');
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 + 80, 1.3 , 'quadInOut');
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 + 80, 1.3 , 'quadInOut');
end

if curStep == 1804 then
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 + 40, 0.1 , 'quadInOut');
end

if curStep == 1806 then
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 - 0, 0.1 , 'quadInOut');
end

if curStep == 1808 then
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 - 40, 0.1 , 'quadInOut');
end

if curStep == 1810 then
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 - 0, 0.8 , 'quadInOut');
noteTweenX('defaultOpponentStrumX1', 1 , defaultOpponentStrumX1 - 0, 0.8 , 'quadInOut');
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 - 0, 0.8 , 'quadInOut');
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 - 0, 0.8 , 'quadInOut');
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 - 0, 0.8 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 - 0, 0.8 , 'quadInOut');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 - 0, 0.8 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 - 0, 0.8 , 'quadInOut');
end

if curStep == 1818 then
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 + 40, 0.1 , 'quadInOut');
end

if curStep == 1820 then
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX1', 1 , defaultOpponentStrumX1 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 - 0, 0.1 , 'quadInOut');
end

--more arrows on beat
if curStep == 1824 then
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 + 40, 0.1 , 'quadInOut');
end

if curStep == 1825 then
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 + 40, 0.1 , 'quadInOut');
end

if curStep == 1826 then
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 40, 0.1 , 'quadInOut');
end

if curStep == 1827 then
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 - 40, 0.1 , 'quadInOut');
end

if curStep == 1829 then
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 + 40, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 - 40, 0.1 , 'quadInOut');
end

if curStep == 1830 then
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 + 40, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 - 40, 0.1 , 'quadInOut');
end

if curStep == 1831 then
noteTweenX('defaultOpponentStrumX1', 1 , defaultOpponentStrumX1 - 40, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 + 40, 0.1 , 'quadInOut');
end

if curStep == 1832 then
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 - 40, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 + 40, 0.1 , 'quadInOut');
end

if curStep == 1834 then
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 40, 0.1 , 'quadInOut');
end

if curStep == 1835 then
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 - 40, 0.1 , 'quadInOut');
end

if curStep == 1836 then
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 + 40, 0.1 , 'quadInOut');
end

if curStep == 1837 then
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 + 40, 0.1 , 'quadInOut');
end

if curStep == 1839 then
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX1', 1 , defaultOpponentStrumX1 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 - 0, 0.1 , 'quadInOut');
end

if curStep == 1840 then
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 40, 0.1 , 'quadInOut');
end

if curStep == 1841 then
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 - 40, 0.1 , 'quadInOut');
end

if curStep == 1842 then
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 + 40, 0.1 , 'quadInOut');
end

if curStep == 1843 then
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 + 40, 0.1 , 'quadInOut');
end

if curStep == 1845 then
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 + 40, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 - 40, 0.1 , 'quadInOut');
end

if curStep == 1846 then
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 + 40, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 - 40, 0.1 , 'quadInOut');
end

if curStep == 1847 then
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 + 40, 0.1 , 'quadInOut');
end

if curStep == 1848 then
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 - 40, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 + 40, 0.1 , 'quadInOut');
end

if curStep == 1850 then
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 + 40, 0.1 , 'quadInOut');
end

if curStep == 1851 then
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 - 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 + 40, 0.1 , 'quadInOut');
end

if curStep == 1852 then
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 40, 0.1 , 'quadInOut');
end

if curStep == 1853 then
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 + 40, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 - 40, 0.1 , 'quadInOut');
end

if curStep == 1855 then
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX1', 1 , defaultOpponentStrumX1 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 - 0, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 0, 0.1 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 - 0, 0.1 , 'quadInOut');
end


if curStep == 1918 then
noteTweenAlpha('balls4', 4 , 0, 3.8 , 'quadInOut');
noteTweenAlpha('balls5', 5 , 0, 3.8 , 'quadInOut');
noteTweenAlpha('balls6', 6 , 0, 3.8 , 'quadInOut');
noteTweenAlpha('balls7', 7 , 0, 3.8 , 'quadInOut');
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 + 320, 3.5 , 'quadInOut');
noteTweenX('defaultOpponentStrumX1', 1 , defaultOpponentStrumX1 + 320, 3.5 , 'quadInOut');
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 + 320, 3.5 , 'quadInOut');
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 + 320, 3.5 , 'quadInOut');
end

if curStep == 1976 then
noteTweenAlpha('balls0', 0 , 0, 0.1 , 'quadInOut');
noteTweenAlpha('balls1', 1 , 0, 0.1 , 'quadInOut');
noteTweenAlpha('balls2', 2 , 0, 0.1 , 'quadInOut');
noteTweenAlpha('balls3', 3 , 0, 0.1 , 'quadInOut');
noteTweenAlpha('balls4', 4 , 1, 0.5 , 'quadInOut');
noteTweenAlpha('balls5', 5 , 1, 0.5 , 'quadInOut');
noteTweenAlpha('balls6', 6 , 1, 0.5 , 'quadInOut');
noteTweenAlpha('balls7', 7 , 1, 0.5 , 'quadInOut');
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 - 320, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 - 320, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 - 320, 0.1 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 - 320, 0.1 , 'quadInOut');
end

if curStep == 2032 then
noteTweenAlpha('balls4', 4 , 0, 0.1 , 'quadInOut');
noteTweenAlpha('balls5', 5 , 0, 0.1 , 'quadInOut');
noteTweenAlpha('balls6', 6 , 0, 0.1 , 'quadInOut');
noteTweenAlpha('balls7', 7 , 1, 0.1 , 'quadInOut');
end

if curStep == 2034 then
noteTweenAlpha('balls6', 6 , 1, 0.1 , 'quadInOut');
noteTweenAlpha('balls7', 7 , 0, 0.1 , 'quadInOut');
end

if curStep == 2038 then
noteTweenAlpha('balls5', 5 , 1, 0.1 , 'quadInOut');
noteTweenAlpha('balls6', 6 , 0, 0.1 , 'quadInOut');
end

if curStep == 2044 then
noteTweenAlpha('balls4', 4 , 1, 0.4 , 'quadInOut');
noteTweenAlpha('balls5', 5 , 1, 0.4 , 'quadInOut');
noteTweenAlpha('balls6', 6 , 1, 0.4 , 'quadInOut');
noteTweenAlpha('balls7', 7 , 1, 0.4 , 'quadInOut');
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 + 320, 0.1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX1', 1 , defaultOpponentStrumX1 + 320, 0.1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 + 320, 0.1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 + 320, 0.1 , 'quadInOut');
end

if curStep == 2048 then
sidetosidecame = true
end
-- last chorus
if curStep == 2076 then
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 - 320 -50, 0.4 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 - 320 -15, 0.4 , 'quadInOut');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 - 320 +15, 0.4 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 - 320 +50, 0.4 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 + 50, 0.4 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 + 20, 0.4 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 20, 0.4 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 - 50, 0.4 , 'quadInOut');
end

if curStep == 2108 then
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 50, 0.4 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 - 20, 0.4 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 + 20, 0.4 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 + 50, 0.4 , 'quadInOut');
end

if curStep == 2140 then --bf reset pos (center)
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 - 320, 0.4 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 - 320, 0.4 , 'quadInOut');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 - 320, 0.4 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 - 320, 0.4 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 0, 0.4 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 - 0, 0.4 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 0, 0.4 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 - 0, 0.4 , 'quadInOut');
end

if curStep == 2160 then --camellia invisible
noteTweenAlpha('balls0', 0 , 0, 0.4 , 'quadInOut');
noteTweenAlpha('balls1', 1 , 0, 0.4 , 'quadInOut');
noteTweenAlpha('balls2', 2 , 0, 0.4 , 'quadInOut');
noteTweenAlpha('balls3', 3 , 0, 0.4 , 'quadInOut');
end

if curStep == 2192 then
noteTweenAlpha('balls0', 0 , 0.3, 0.4 , 'quadInOut');
noteTweenAlpha('balls1', 1 , 0.3, 0.4 , 'quadInOut');
noteTweenAlpha('balls2', 2 , 0.3, 0.4 , 'quadInOut');
noteTweenAlpha('balls3', 3 , 0.3, 0.4 , 'quadInOut');
end

if curStep == 2204 then
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 - 620, 0.4 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 - 620, 0.4 , 'quadInOut');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 - 620, 0.4 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 - 620, 0.4 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 + 50, 0.4 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 + 20, 0.4 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 20, 0.4 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 - 50, 0.4 , 'quadInOut');
end

if curStep == 2236 then
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 0, 0.4 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 - 0, 0.4 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 0, 0.4 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 - 0, 0.4 , 'quadInOut');
end

if curStep == 2268 then
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 - 320, 0.4 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 - 320, 0.4 , 'quadInOut');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 - 320, 0.4 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 - 320, 0.4 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 50, 0.4 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 - 20, 0.4 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 + 20, 0.4 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 + 50, 0.4 , 'quadInOut');
end

if curStep == 2304 then
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 0, 0.4 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 - 0, 0.4 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 0, 0.4 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 - 0, 0.4 , 'quadInOut');
end

if curStep == 2364 then
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 - 320 -50, 0.4 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 - 320 -15, 0.4 , 'quadInOut');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 - 320 +15, 0.4 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 - 320 +50, 0.4 , 'quadInOut');
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 50, 0.4 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 - 20, 0.4 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 + 20, 0.4 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 + 50, 0.4 , 'quadInOut');
end

if curStep == 2396 then
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 + 50, 0.4 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 + 20, 0.4 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 20, 0.4 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 - 50, 0.4 , 'quadInOut');
end

if curStep == 2400 then
sidetosidecame = false
end

if curStep == 2416 then
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 - 0, 0.4 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 - 0, 0.4 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 - 0, 0.4 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 - 0, 0.4 , 'quadInOut');
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 - 320, 0.4 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 - 320, 0.4 , 'quadInOut');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 - 320, 0.4 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 - 320, 0.4 , 'quadInOut');
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 + 320, 0.5 , 'quadInOut');
noteTweenX('defaultOpponentStrumX1', 1 , defaultOpponentStrumX1 + 320, 0.5 , 'quadInOut');
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 + 320, 0.5 , 'quadInOut');
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 + 320, 0.5 , 'quadInOut');
noteTweenAlpha('balls0', 0 , 1, 0.4 , 'quadInOut');
noteTweenAlpha('balls1', 1 , 1, 0.4 , 'quadInOut');
noteTweenAlpha('balls2', 2 , 1, 0.4 , 'quadInOut');
noteTweenAlpha('balls3', 3 , 1, 0.4 , 'quadInOut');
end

if curStep == 2428 then
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 - 10, 0.4 , 'quadInOut');
noteTweenX('defaultOpponentStrumX1', 1 , defaultOpponentStrumX1 + 30, 0.4 , 'quadInOut');
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 + 600, 0.4 , 'quadInOut');
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 + 640, 0.4 , 'quadInOut');
noteTweenAngle('defaultOpponentStrum0',0 , 0 , 0.4, 'quadInOut');
noteTweenAngle('defaultOpponentStrum1',1 , 0 , 0.4, 'quadInOut');
noteTweenAngle('defaultOpponentStrum2',2 , 0 , 0.4, 'quadInOut');
noteTweenAngle('defaultOpponentStrum3',3 , 0 , 0.4, 'quadInOut');
end

--ending

if curStep == 2688 then
noteTweenY('defaultPlayerStrumY0', 4 , defaultPlayerStrumY0 + 900, 5.4 , 'quadInOut');
noteTweenY('defaultPlayerStrumY1', 5 , defaultPlayerStrumY1 + 900, 5.4 , 'quadInOut');
noteTweenY('defaultPlayerStrumY2', 6 , defaultPlayerStrumY2 + 900, 5.4 , 'quadInOut');
noteTweenY('defaultPlayerStrumY3', 7 , defaultPlayerStrumY3 + 900, 5.4 , 'quadInOut');
noteTweenX('defaultPlayerStrumX0', 4 , defaultPlayerStrumX0 - 320 - 300, 5.4 , 'quadInOut');
noteTweenX('defaultPlayerStrumX1', 5 , defaultPlayerStrumX1 - 320 - 100, 5.4 , 'quadInOut');
noteTweenX('defaultPlayerStrumX2', 6 , defaultPlayerStrumX2 - 320 + 100, 5.4 , 'quadInOut');
noteTweenX('defaultPlayerStrumX3', 7 , defaultPlayerStrumX3 - 320 + 300, 5.4 , 'quadInOut');
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 + 320, 10.4 , 'quadInOut');
noteTweenX('defaultOpponentStrumX1', 1 , defaultOpponentStrumX1 + 320, 10.4 , 'quadInOut');
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 + 320, 10.4 , 'quadInOut');
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 + 320, 10.4 , 'quadInOut');
noteTweenAngle('defaultOpponentStrum0',0 , 360 , 10.4, 'quadInOut');
noteTweenAngle('defaultOpponentStrum1',1 , 360 , 10.4, 'quadInOut');
noteTweenAngle('defaultOpponentStrum2',2 , 360 , 10.4, 'quadInOut');
noteTweenAngle('defaultOpponentStrum3',3 , 360 , 10.4, 'quadInOut');
end

if curStep == 2842 then
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 + 320 -100, 4.4 , 'quadInOut');
noteTweenX('defaultOpponentStrumX1', 1 , defaultOpponentStrumX1 + 320 -50, 4.4 , 'quadInOut');
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 + 320 +50, 4.4 , 'quadInOut');
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 + 320 +100, 4.4 , 'quadInOut');
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 + 900, 4.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 + 900, 4.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 + 900, 4.1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 + 900, 4.1 , 'quadInOut');
end
end
end
