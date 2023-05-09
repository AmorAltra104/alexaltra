local aaaa = 1
local ssss = 0.01
local ssss1 = 0.01
local Alpha = 0
function onEvent(name,value1,value2)
if name == 'flash' then
doTweenAlpha('1','iconP2',aaaa,ssss1)
doTweenAlpha('2','iconP1',aaaa,ssss1)
doTweenAlpha('3','healthBar',aaaa,ssss1)
doTweenAlpha('8','scoreTxt',aaaa,ssss1)
doTweenAlpha('4','NewScoreTxt',aaaa,ssss1)
doTweenAlpha('5','timeTxt',aaaa,ssss1)
doTweenAlpha('6','timeBar',aaaa,ssss1)
doTweenAlpha('7','timeBarBG',aaaa,ssss1)
local Alpha = 1
noteTweenAlpha("9",0,Alpha,ssss)
noteTweenAlpha("10",1,Alpha,ssss)
noteTweenAlpha("11",2,Alpha,ssss)
noteTweenAlpha("12",3,Alpha,ssss)
noteTweenAlpha("13",4,Alpha,ssss)
noteTweenAlpha("14",5,Alpha,ssss)
noteTweenAlpha("15",6,Alpha,ssss)
noteTweenAlpha("16",7,Alpha,ssss)
end
end
function onUpdatePost()
if curStep < 8 then
noteTweenAlpha("6",0,Alpha,ssss)
noteTweenAlpha("7",1,Alpha,ssss)
noteTweenAlpha("8",2,Alpha,ssss)
noteTweenAlpha("9",3,Alpha,ssss)
noteTweenAlpha("10",4,Alpha,ssss)
noteTweenAlpha("11",5,Alpha,ssss)
noteTweenAlpha("12",6,Alpha,ssss)
noteTweenAlpha("13",7,Alpha,ssss)
end
end