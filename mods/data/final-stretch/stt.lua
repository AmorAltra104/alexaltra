local allowCountdown = false

function onStartCountdown()	
if not allowCountdown then
 return Function_Stop
end	if allowCountdown then
 return Function_Continue
end 
end

function onCreate()
if not seenCutscene and isStoryMode then
runTimer('adios2', 45.7)
startVideo('sans/3');
end
if seenCutscene and isStoryMode then
runTimer('adios2', 0.1)	
end 
if not isStoryMode then
allowCountdown = true	
runTimer('adios2', 0.1)	
end
end


function onTimerCompleted(tag)
if tag == 'adios' then
doTweenAlpha('zzzzzzz', 'screen', 0, 1, 'linear');
runTimer('adios2', 3)
end
if tag == 'adios2' then
allowCountdown = true	
startCountdown()
   end 
end

local wey = true
local seenCutscene2 = false

function onEndSong()
if not seenCutscene2 and isStoryMode  then
startVideo('sans/4');
seenCutscene2 = true	
return Function_Stop
end
if wey == true then
return Function_Continue
end
end