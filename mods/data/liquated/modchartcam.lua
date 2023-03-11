--Arrow swap Enemy with plyaer Repeating

local sidetosidecame = false
local arrowresetcam = false
local camdvd = false

function onUpdate(elapsed)
songPos = getSongPosition()
local currentBeat = (songPos/5000)*(curBpm/60)

if sidetosidecame == true then


--Opponent Notes

noteTweenX(defaultOpponentStrumX0, 0, defaultOpponentStrumX0 + 320 - 2000*math.sin((currentBeat+4*0.25)*math.pi), 3)
noteTweenX(defaultOpponentStrumX1, 1, defaultOpponentStrumX1 + 320 - 2000*math.sin((currentBeat+4*0.25)*math.pi), 3)
noteTweenX(defaultOpponentStrumX2, 2, defaultOpponentStrumX2 + 320 - 2000*math.sin((currentBeat+4*0.25)*math.pi), 3)
noteTweenX(defaultOpponentStrumX3, 3, defaultOpponentStrumX3 + 320 - 2000*math.sin((currentBeat+4*0.25)*math.pi), 3)
end

if camecenter == true then
noteTweenX(defaultOpponentStrumX0, 0, defaultOpponentStrumX0 + 320 - 50*math.sin((currentBeat+8*0.25)*math.pi), 0.1)
noteTweenX(defaultOpponentStrumX1, 1, defaultOpponentStrumX1 + 320 - 50*math.sin((currentBeat+8*0.25)*math.pi), 0.1)
noteTweenX(defaultOpponentStrumX2, 2, defaultOpponentStrumX2 + 320 - 50*math.sin((currentBeat+8*0.25)*math.pi), 0.1)
noteTweenX(defaultOpponentStrumX3, 3, defaultOpponentStrumX3 + 320 - 50*math.sin((currentBeat+8*0.25)*math.pi), 0.1)
end

if camdvd == true then
currentBeat = (songPos/1000)*(bpm/60)
noteTweenX(defaultOpponentStrumX0, 0, defaultOpponentStrumX0 - 0 - 100*math.sin((currentBeat)), 1)
noteTweenX(defaultOpponentStrumX1, 1, defaultOpponentStrumX1 - 0 - 100*math.sin((currentBeat)), 1)
noteTweenX(defaultOpponentStrumX2, 2, defaultOpponentStrumX2 - 0 - 100*math.sin((currentBeat)), 1)
noteTweenX(defaultOpponentStrumX3, 3, defaultOpponentStrumX3 - 0 - 100*math.sin((currentBeat)), 1)
noteTweenY('defaultOpponentStrumY0', 0, defaultOpponentStrumY1 + 50*math.sin((currentBeat+8*32)*math.pi), 0.5)
noteTweenY('defaultOpponentStrumY1', 1, defaultOpponentStrumY2 + 50*math.sin((currentBeat+8*32)*math.pi), 0.5)
noteTweenY('defaultOpponentStrumY2', 2, defaultOpponentStrumY2 + 50*math.sin((currentBeat+8*32)*math.pi), 0.5)
noteTweenY('defaultOpponentStrumY3', 3, defaultOpponentStrumY3 + 50*math.sin((currentBeat+8*32)*math.pi), 0.5)
end

stepHitFuncs = {
}
end
function onStepHit()
if boyfriendName == 'bfm' then
	if stepHitFuncs[curStep] then
		stepHitFuncs[curStep]()
	end

if curStep == 1 then
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 + 320, 0.01 , 'quadInOut');
noteTweenX('defaultOpponentStrumX1', 1 , defaultOpponentStrumX1 + 320, 0.01 , 'quadInOut');
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 + 320, 0.01 , 'quadInOut');
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 + 320, 0.01 , 'quadInOut');
end

if curStep == 55 then
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 - 0, 0.7 , 'quadInOut');
noteTweenX('defaultOpponentStrumX1', 1 , defaultOpponentStrumX1 - 0, 0.7 , 'quadInOut');
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 - 0, 0.7 , 'quadInOut');
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 - 0, 0.7 , 'quadInOut');
end

if curStep == 64 then
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 - 50, 0.8 , 'quadInOut');
noteTweenX('defaultOpponentStrumX1', 1 , defaultOpponentStrumX1 - 50, 0.8 , 'quadInOut');
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 - 50, 0.8 , 'quadInOut');
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 - 50, 0.8 , 'quadInOut');
noteTweenAlpha('balls1', 1 , 0, 0.1 , 'quadInOut');
noteTweenAlpha('balls2', 2 , 0, 0.1 , 'quadInOut');
noteTweenAlpha('balls3', 3 , 0, 0.1 , 'quadInOut');
end

if curStep == 80 then
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 - 50, 0.8 , 'quadInOut');
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 - 50, 0.8 , 'quadInOut');
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 - 50, 0.8 , 'quadInOut');
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 - 50, 0.8 , 'quadInOut');
noteTweenAlpha('balls0', 0 , 0, 0.1 , 'quadInOut');
noteTweenAlpha('balls2', 2 , 1, 0.1 , 'quadInOut');
end

if curStep == 96 then
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 + 50, 0.8 , 'quadInOut');
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 + 50, 0.8 , 'quadInOut');
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 + 50, 0.8 , 'quadInOut');
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 + 50, 0.8 , 'quadInOut');
noteTweenAlpha('balls1', 1 , 1, 0.1 , 'quadInOut');
noteTweenAlpha('balls2', 2 , 0, 0.1 , 'quadInOut');
end

if curStep == 112 then
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 + 50, 0.8 , 'quadInOut');
noteTweenX('defaultOpponentStrumX1', 1 , defaultOpponentStrumX1 + 50, 0.8 , 'quadInOut');
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 + 50, 0.8 , 'quadInOut');
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 + 50, 0.8 , 'quadInOut');
noteTweenAlpha('balls1', 1 , 0, 0.1 , 'quadInOut');
noteTweenAlpha('balls3', 3 , 1, 0.1 , 'quadInOut');
end

if curStep == 120 then
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 - 0, 0.8 , 'quadInOut');
noteTweenX('defaultOpponentStrumX1', 1 , defaultOpponentStrumX1 - 0, 0.8 , 'quadInOut');
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 - 0, 0.8 , 'quadInOut');
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 - 0, 0.8 , 'quadInOut');
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 - 0, 0.8 , 'quadInOut');
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 - 0, 0.8 , 'quadInOut');
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 - 0, 0.8 , 'quadInOut');
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 - 0, 0.8 , 'quadInOut');
noteTweenAlpha('balls0', 0 , 1, 0.1 , 'quadInOut');
noteTweenAlpha('balls1', 1 , 1, 0.1 , 'quadInOut');
noteTweenAlpha('balls2', 2 , 1, 0.1 , 'quadInOut');
end

if curStep == 259 then
camecenter = true
noteTweenAngle('defaultOpponentStrum0',0 , 360 , 0.5, 'quadInOut');
noteTweenAngle('defaultOpponentStrum1',1 , 360 , 0.5, 'quadInOut');
noteTweenAngle('defaultOpponentStrum2',2 , 360 , 0.5, 'quadInOut');
noteTweenAngle('defaultOpponentStrum3',3 , 360 , 0.5, 'quadInOut');
end

if curStep == 320 then
camecenter = false
noteTweenAngle('defaultOpponentStrum0',0 , -360 , 0.5, 'quadInOut');
noteTweenAngle('defaultOpponentStrum1',1 , -360 , 0.5, 'quadInOut');
noteTweenAngle('defaultOpponentStrum2',2 , -360 , 0.5, 'quadInOut');
noteTweenAngle('defaultOpponentStrum3',3 , -360 , 0.5, 'quadInOut');
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 - 0, 0.7 , 'quadInOut');
noteTweenX('defaultOpponentStrumX1', 1 , defaultOpponentStrumX1 - 0, 0.7 , 'quadInOut');
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 - 0, 0.7 , 'quadInOut');
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 - 0, 0.7 , 'quadInOut');
end

if curStep == 374 then
camecenter = false
noteTweenAngle('defaultOpponentStrum0',0 , 360 , 1 , 'quadInOut');
noteTweenAngle('defaultOpponentStrum1',1 , 720 , 1 , 'quadInOut');
noteTweenAngle('defaultOpponentStrum2',2 , 360 , 1 , 'quadInOut');
noteTweenAngle('defaultOpponentStrum3',3 , 720 , 1 , 'quadInOut');
end

if curStep == 486 then
noteTweenY(defaultOpponentStrumY0, 0, defaultOpponentStrumY0 - 0, 1 , 'quadInOut');
noteTweenY(defaultOpponentStrumY1, 1, defaultOpponentStrumY1 - 0, 1 , 'quadInOut');
noteTweenY(defaultOpponentStrumY2, 2, defaultOpponentStrumY2 - 0, 1 , 'quadInOut');
noteTweenY(defaultOpponentStrumY3, 3, defaultOpponentStrumY3 - 0, 1 , 'quadInOut');
end

if curStep == 512 then
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 - 50, 1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 - 50, 1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 - 50, 1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 - 50, 1 , 'quadInOut');
end

if curStep == 544 then
camdvd = true
end

if curStep == 576 then
camdvd = false
end

if curStep == 608 then
camdvd = true
end

if curStep == 640 then
camdvd = false
end

if curStep == 672 then
camdvd = true
end

if curStep == 704 then
camdvd = false
end

if curStep == 734 then
noteTweenAlpha('balls0', 0 , 0, 1 , 'quadInOut');
noteTweenAlpha('balls1', 1 , 0, 1 , 'quadInOut');
noteTweenAlpha('balls2', 2 , 0, 1 , 'quadInOut');
noteTweenAlpha('balls3', 3 , 0, 1 , 'quadInOut');
end

if curStep == 752 then
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 - 10, 0.1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX1', 1 , defaultOpponentStrumX1 + 30, 0.1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 + 600, 0.1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 + 640, 0.1 , 'quadInOut');
end

if curStep == 770 then
noteTweenAlpha('balls0', 0 , 1, 1 , 'quadInOut');
noteTweenAlpha('balls1', 1 , 1, 1 , 'quadInOut');
noteTweenAlpha('balls2', 2 , 1, 1 , 'quadInOut');
noteTweenAlpha('balls3', 3 , 1, 1 , 'quadInOut');
end

--invisible part

if curStep == 772 then
noteTweenAlpha('balls1', 1 , 1, 0.01 , 'quadInOut');
end
if curStep == 774 then
noteTweenAlpha('balls1', 1 , 0, 0.01 , 'quadInOut');
noteTweenAlpha('balls3', 3 , 1, 0.01 , 'quadInOut');
end
if curStep == 776 then
noteTweenAlpha('balls0', 0 , 1, 0.01 , 'quadInOut');
noteTweenAlpha('balls3', 3 , 0, 0.01 , 'quadInOut');
end
if curStep == 778 then
noteTweenAlpha('balls0', 0 , 0, 0.01 , 'quadInOut');
noteTweenAlpha('balls2', 2 , 1, 0.01 , 'quadInOut');
end
if curStep == 780 then
noteTweenAlpha('balls0', 0 , 1, 0.01 , 'quadInOut');
noteTweenAlpha('balls2', 2 , 0, 0.01 , 'quadInOut');
end
if curStep == 782 then
noteTweenAlpha('balls0', 0 , 0, 0.01 , 'quadInOut');
noteTweenAlpha('balls2', 2 , 1, 0.01 , 'quadInOut');
end
if curStep == 784 then
noteTweenAlpha('balls1', 1 , 1, 0.01 , 'quadInOut');
noteTweenAlpha('balls2', 2 , 0, 0.01 , 'quadInOut');
end
if curStep == 786 then
noteTweenAlpha('balls1', 1 , 0, 0.01 , 'quadInOut');
noteTweenAlpha('balls3', 3 , 1, 0.01 , 'quadInOut');
end
if curStep == 788 then
noteTweenAlpha('balls1', 1 , 1, 0.01 , 'quadInOut');
noteTweenAlpha('balls3', 3 , 0, 0.01 , 'quadInOut');
end
if curStep == 790 then
noteTweenAlpha('balls1', 1 , 0, 0.01 , 'quadInOut');
noteTweenAlpha('balls3', 3 , 1, 0.01 , 'quadInOut');
end
if curStep == 792 then
noteTweenAlpha('balls0', 0 , 1, 0.01 , 'quadInOut');
noteTweenAlpha('balls3', 3 , 0, 0.01 , 'quadInOut');
end
if curStep == 794 then
noteTweenAlpha('balls0', 0 , 0, 0.01 , 'quadInOut');
noteTweenAlpha('balls2', 2 , 1, 0.01 , 'quadInOut');
end
if curStep == 796 then
noteTweenAlpha('balls0', 0 , 1, 0.01 , 'quadInOut');
noteTweenAlpha('balls2', 2 , 0, 0.01 , 'quadInOut');
end
if curStep == 798 then
noteTweenAlpha('balls0', 0 , 0, 0.01 , 'quadInOut');
noteTweenAlpha('balls2', 2 , 1, 0.01 , 'quadInOut');
end
if curStep == 800 then
noteTweenAlpha('balls1', 1 , 1, 0.01 , 'quadInOut');
noteTweenAlpha('balls2', 2 , 0, 0.01 , 'quadInOut');
end
if curStep == 802 then
noteTweenAlpha('balls1', 1 , 0, 0.01 , 'quadInOut');
noteTweenAlpha('balls3', 3 , 1, 0.01 , 'quadInOut');
end
if curStep == 804 then
noteTweenAlpha('balls1', 1 , 1, 0.01 , 'quadInOut');
noteTweenAlpha('balls3', 3 , 0, 0.01 , 'quadInOut');
end
if curStep == 805 then
noteTweenAlpha('balls1', 1 , 0, 0.01 , 'quadInOut');
noteTweenAlpha('balls3', 3 , 1, 0.01 , 'quadInOut');
end
if curStep == 806 then
noteTweenAlpha('balls1', 1 , 1, 0.01 , 'quadInOut');
noteTweenAlpha('balls3', 3 , 0, 0.01 , 'quadInOut');
end
if curStep == 808 then
noteTweenAlpha('balls0', 0 , 1, 0.01 , 'quadInOut');
noteTweenAlpha('balls3', 3 , 0, 0.01 , 'quadInOut');
end
if curStep == 810 then
noteTweenAlpha('balls0', 0 , 0, 0.01 , 'quadInOut');
noteTweenAlpha('balls2', 2 , 1, 0.01 , 'quadInOut');
end
if curStep == 812 then
noteTweenAlpha('balls0', 0 , 1, 0.01 , 'quadInOut');
noteTweenAlpha('balls2', 2 , 0, 0.01 , 'quadInOut');
end
if curStep == 814 then
noteTweenAlpha('balls0', 0 , 0, 0.01 , 'quadInOut');
noteTweenAlpha('balls2', 2 , 1, 0.01 , 'quadInOut');
end
if curStep == 816 then
noteTweenAlpha('balls1', 1 , 1, 0.01 , 'quadInOut');
noteTweenAlpha('balls2', 2 , 0, 0.01 , 'quadInOut');
end
if curStep == 818 then
noteTweenAlpha('balls1', 1 , 0, 0.01 , 'quadInOut');
noteTweenAlpha('balls3', 3 , 1, 0.01 , 'quadInOut');
end
if curStep == 820 then
noteTweenAlpha('balls1', 1 , 1, 0.01 , 'quadInOut');
noteTweenAlpha('balls3', 3 , 0, 0.01 , 'quadInOut');
end
if curStep == 822 then
noteTweenAlpha('balls1', 1 , 0, 0.01 , 'quadInOut');
noteTweenAlpha('balls3', 3 , 1, 0.01 , 'quadInOut');
end
if curStep == 824 then
noteTweenAlpha('balls0', 0 , 1, 0.01 , 'quadInOut');
noteTweenAlpha('balls3', 3 , 0, 0.01 , 'quadInOut');
end

if curStep == 826 then
noteTweenAlpha('balls1', 1 , 1, 1 , 'quadInOut');
noteTweenAlpha('balls2', 2 , 1, 1 , 'quadInOut');
noteTweenAlpha('balls3', 3 , 1, 1 , 'quadInOut');
end

if curStep == 864 then
noteTweenAngle('defaultOpponentStrum0',0 , 1440 , 1.4, 'quadInOut');
noteTweenAngle('defaultOpponentStrum1',1 , 1440 , 1.4, 'quadInOut');
noteTweenAngle('defaultOpponentStrum2',2 , 1440 , 1.4, 'quadInOut');
noteTweenAngle('defaultOpponentStrum3',3 , 1440 , 1.4, 'quadInOut');
end

if curStep == 880 then
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 + 320, 0.01 , 'quadInOut');
noteTweenX('defaultOpponentStrumX1', 1 , defaultOpponentStrumX1 + 320, 0.01 , 'quadInOut');
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 + 320, 0.01 , 'quadInOut');
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 + 320, 0.01 , 'quadInOut');
end

if curStep == 882 then
noteTweenAlpha('balls0', 0 , 0, 0.01 , 'quadInOut');
noteTweenAlpha('balls1', 1 , 0, 0.01 , 'quadInOut');
noteTweenAlpha('balls2', 2 , 0, 0.01 , 'quadInOut');
noteTweenAlpha('balls3', 3 , 0, 0.01 , 'quadInOut');
end

if curStep == 883 then
noteTweenAlpha('balls0', 0 , 1, 0.01 , 'quadInOut');
noteTweenAlpha('balls1', 1 , 1, 0.01 , 'quadInOut');
noteTweenAlpha('balls2', 2 , 1, 0.01 , 'quadInOut');
noteTweenAlpha('balls3', 3 , 1, 0.01 , 'quadInOut');
end

if curStep == 885 then
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 + 0, 0.01 , 'quadInOut');
noteTweenX('defaultOpponentStrumX1', 1 , defaultOpponentStrumX1 + 0, 0.01 , 'quadInOut');
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 + 0, 0.01 , 'quadInOut');
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 + 0, 0.01 , 'quadInOut');
noteTweenAlpha('balls0', 0 , 0, 0.01 , 'quadInOut');
noteTweenAlpha('balls1', 1 , 0, 0.01 , 'quadInOut');
noteTweenAlpha('balls2', 2 , 0, 0.01 , 'quadInOut');
noteTweenAlpha('balls3', 3 , 0, 0.01 , 'quadInOut');
end

if curStep == 887 then
noteTweenAlpha('balls3', 0 , 0, 0.1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 + 640, 0.01 , 'quadInOut');
noteTweenX('defaultOpponentStrumX1', 1 , defaultOpponentStrumX1 + 640, 0.01 , 'quadInOut');
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 + 640, 0.01 , 'quadInOut');
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 + 640, 0.01 , 'quadInOut');
end

if curStep == 889 then
noteTweenAlpha('balls2', 1 , 0, 0.1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 - 0, 0.01 , 'quadInOut');
noteTweenX('defaultOpponentStrumX1', 1 , defaultOpponentStrumX1 - 0, 0.01 , 'quadInOut');
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 - 0, 0.01 , 'quadInOut');
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 - 0, 0.01 , 'quadInOut');
end

if curStep == 891 then
noteTweenAlpha('balls1', 2 , 0, 0.1 , 'quadInOut');
end
if curStep == 893 then
noteTweenAlpha('balls0', 3 , 0, 0.1 , 'quadInOut');
end

if curStep == 896 then
noteTweenAlpha('balls0', 0 , 1, 0.01 , 'quadInOut');
noteTweenAlpha('balls1', 1 , 1, 0.01 , 'quadInOut');
noteTweenAlpha('balls2', 2 , 1, 0.01 , 'quadInOut');
noteTweenAlpha('balls3', 3 , 1, 0.01 , 'quadInOut');
end

if curStep == 920 then
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 - 100, 1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX1', 1 , defaultOpponentStrumX1 - 100, 1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 - 100, 1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 - 100, 1 , 'quadInOut');
end

if curStep == 926 then
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 - 50, 1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 - 50, 1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 - 50, 1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 - 50, 1 , 'quadInOut');
end

if curStep == 952 then
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 + 100, 0.5 , 'quadInOut');
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 + 100, 0.5 , 'quadInOut');
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 + 100, 0.5 , 'quadInOut');
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 + 100, 0.5 , 'quadInOut');
end

if curStep == 955 then
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 + 100, 0.5 , 'quadInOut');
noteTweenX('defaultOpponentStrumX1', 1 , defaultOpponentStrumX1 + 100, 0.5 , 'quadInOut');
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 + 100, 0.5 , 'quadInOut');
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 + 100, 0.5 , 'quadInOut');
end

if curStep == 958 then
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 - 100, 0.5 , 'quadInOut');
noteTweenX('defaultOpponentStrumX1', 1 , defaultOpponentStrumX1 - 100, 0.5 , 'quadInOut');
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 - 100, 0.5 , 'quadInOut');
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 - 100, 0.5 , 'quadInOut');
end

if curStep == 964 then
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 + 100, 0.5 , 'quadInOut');
noteTweenX('defaultOpponentStrumX1', 1 , defaultOpponentStrumX1 + 100, 0.5 , 'quadInOut');
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 + 100, 0.5 , 'quadInOut');
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 + 100, 0.5 , 'quadInOut');
end

if curStep == 970 then
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 + 50, 1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 + 50, 1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 + 50, 1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 + 50, 1 , 'quadInOut');
end

if curStep == 978 then
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 + 150, 0.5 , 'quadInOut');
noteTweenX('defaultOpponentStrumX1', 1 , defaultOpponentStrumX1 + 150, 0.5 , 'quadInOut');
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 + 150, 0.5 , 'quadInOut');
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 + 150, 0.5 , 'quadInOut');
end

if curStep == 984 then
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 - 50, 1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 - 50, 1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 - 50, 1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 - 50, 1 , 'quadInOut');
end

if curStep == 990 then
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 + 90, 0.5 , 'quadInOut');
noteTweenX('defaultOpponentStrumX1', 1 , defaultOpponentStrumX1 + 90, 0.5 , 'quadInOut');
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 + 90, 0.5 , 'quadInOut');
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 + 90, 0.5 , 'quadInOut');
end

if curStep == 1018 then --move down
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 + 50, 1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 + 50, 1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 + 50, 1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 + 50, 1 , 'quadInOut');
end

if curStep == 1021 then
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 - 100, 1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX1', 1 , defaultOpponentStrumX1 - 100, 1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 - 100, 1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 - 100, 1 , 'quadInOut')
end

if curStep == 1032 then --move left
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 + 100, 1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX1', 1 , defaultOpponentStrumX1 + 100, 1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 + 100, 1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 + 100, 1 , 'quadInOut');
end

if curStep == 1048 then --move right
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 - 50, 1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX1', 1 , defaultOpponentStrumX1 - 50, 1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 - 50, 1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 - 50, 1 , 'quadInOut')
end

if curStep == 1054 then --move down
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 + 50, 1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 + 50, 1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 + 50, 1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 + 50, 1 , 'quadInOut');
end

if curStep == 1060 then --move right
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 - 100, 1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX1', 1 , defaultOpponentStrumX1 - 100, 1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 - 100, 1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 - 100, 1 , 'quadInOut')
end

if curStep == 1088 then --move down
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 + 50, 1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 + 50, 1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 + 50, 1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 + 50, 1 , 'quadInOut');
end

if curStep == 1092 then -- move up
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 - 50, 1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 - 50, 1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 - 50, 1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 - 50, 1 , 'quadInOut');
end

if curStep == 1112 then --move down
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 + 100, 1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 + 100, 1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 + 100, 1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 + 100, 1 , 'quadInOut');
end

if curStep == 1118 then -- move up
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 - 50, 1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 - 50, 1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 - 50, 1 , 'quadInOut');
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 - 50, 1 , 'quadInOut');
end

if curStep == 1128 then
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 - 0, 2 , 'quadInOut');
noteTweenX('defaultOpponentStrumX1', 1 , defaultOpponentStrumX1 - 0, 2 , 'quadInOut');
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 - 0, 2 , 'quadInOut');
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 - 0, 2 , 'quadInOut');
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 - 0, 2 , 'quadInOut');
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 - 0, 2 , 'quadInOut');
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 - 0, 2 , 'quadInOut');
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 - 0, 2 , 'quadInOut');
end

if curStep == 1152 then
camdvd = true
end

if curStep == 1342 then
camdvd = false
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 - 0, 2 , 'quadInOut');
noteTweenX('defaultOpponentStrumX1', 1 , defaultOpponentStrumX1 - 0, 2 , 'quadInOut');
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 - 0, 2 , 'quadInOut');
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 - 0, 2 , 'quadInOut');
noteTweenY('defaultOpponentStrumY0', 0 , defaultOpponentStrumY0 - 0, 2 , 'quadInOut');
noteTweenY('defaultOpponentStrumY1', 1 , defaultOpponentStrumY1 - 0, 2 , 'quadInOut');
noteTweenY('defaultOpponentStrumY2', 2 , defaultOpponentStrumY2 - 0, 2 , 'quadInOut');
noteTweenY('defaultOpponentStrumY3', 3 , defaultOpponentStrumY3 - 0, 2 , 'quadInOut');
end

if curStep == 1376 then
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 + 320, 1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX1', 1 , defaultOpponentStrumX1 + 320, 1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 + 320, 1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 + 320, 1 , 'quadInOut');
end

if curStep == 1414 then
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 - 0, 2 , 'quadInOut');
noteTweenX('defaultOpponentStrumX1', 1 , defaultOpponentStrumX1 - 0, 2 , 'quadInOut');
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 - 0, 2 , 'quadInOut');
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 - 0, 2 , 'quadInOut');
end

if curStep == 1504 then
camecenter = true
end

if curStep == 1600 then
camecenter = false
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 - 0, 0.5 , 'quadInOut');
noteTweenX('defaultOpponentStrumX1', 1 , defaultOpponentStrumX1 - 0, 0.5 , 'quadInOut');
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 - 0, 0.5 , 'quadInOut');
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 - 0, 0.5 , 'quadInOut');
end

if curStep == 1856 then
camecenter = true
noteTweenAngle('defaultOpponentStrum0',0 , 360 , 1.4, 'quadInOut');
noteTweenAngle('defaultOpponentStrum1',1 , 360 , 1.4, 'quadInOut');
noteTweenAngle('defaultOpponentStrum2',2 , 360 , 1.4, 'quadInOut');
noteTweenAngle('defaultOpponentStrum3',3 , 360 , 1.4, 'quadInOut');
end

if curStep == 1912 then
camecenter = false
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 - 0, 2 , 'quadInOut');
noteTweenX('defaultOpponentStrumX1', 1 , defaultOpponentStrumX1 - 0, 2 , 'quadInOut');
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 - 0, 2 , 'quadInOut');
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 - 0, 2 , 'quadInOut');
noteTweenAngle('defaultOpponentStrum0',0 , -360 , 1.4, 'quadInOut');
noteTweenAngle('defaultOpponentStrum1',1 , -360 , 1.4, 'quadInOut');
noteTweenAngle('defaultOpponentStrum2',2 , -360 , 1.4, 'quadInOut');
noteTweenAngle('defaultOpponentStrum3',3 , -360 , 1.4, 'quadInOut');
end

if curStep == 1920 then
sidetosidecame = true
noteTweenAlpha('balls0', 0 , 0, 0.01 , 'quadInOut');
noteTweenAlpha('balls1', 1 , 0, 0.01 , 'quadInOut');
noteTweenAlpha('balls2', 2 , 0, 0.01 , 'quadInOut');
noteTweenAlpha('balls3', 3 , 0, 0.01 , 'quadInOut');
end

if curStep == 2000 then
noteTweenAlpha('balls0', 0 , 0.3, 1 , 'quadInOut');
noteTweenAlpha('balls1', 1 , 0.3, 1 , 'quadInOut');
noteTweenAlpha('balls2', 2 , 0.3, 1 , 'quadInOut');
noteTweenAlpha('balls3', 3 , 0.3, 1 , 'quadInOut');
end

if curStep == 2418 then
sidetosidecame = false
camecenter = true
noteTweenAlpha('balls0', 0 , 1, 1 , 'quadInOut');
noteTweenAlpha('balls1', 1 , 1, 1 , 'quadInOut');
noteTweenAlpha('balls2', 2 , 1, 1 , 'quadInOut');
noteTweenAlpha('balls3', 3 , 1, 1 , 'quadInOut');
noteTweenAngle('defaultOpponentStrum0',0 , 360 , 1, 'quadInOut');
noteTweenAngle('defaultOpponentStrum1',1 , 360 , 1, 'quadInOut');
noteTweenAngle('defaultOpponentStrum2',2 , 360 , 1, 'quadInOut');
noteTweenAngle('defaultOpponentStrum3',3 , 360 , 1, 'quadInOut');
end

if curStep == 2556 then
camecenter = false
noteTweenAngle('defaultOpponentStrum0',0 , -360 , 1, 'quadInOut');
noteTweenAngle('defaultOpponentStrum1',1 , -360 , 1, 'quadInOut');
noteTweenAngle('defaultOpponentStrum2',2 , -360 , 1, 'quadInOut');
noteTweenAngle('defaultOpponentStrum3',3 , -360 , 1, 'quadInOut');
noteTweenX('defaultOpponentStrumX0', 0 , defaultOpponentStrumX0 - 0, 1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX1', 1 , defaultOpponentStrumX1 - 0, 1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX2', 2 , defaultOpponentStrumX2 - 0, 1 , 'quadInOut');
noteTweenX('defaultOpponentStrumX3', 3 , defaultOpponentStrumX3 - 0, 1 , 'quadInOut');
end
end
end