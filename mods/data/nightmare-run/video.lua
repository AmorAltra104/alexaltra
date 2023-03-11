local allowCountdown = false
function onStartCountdown()
	if not allowCountdown and isStoryMode and not seenCutscene then 
		startVideo('bendy/4');
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end


local wey = true
local seenCutscene2 = false

function onEndSong()
if not seenCutscene2 and isStoryMode then
startVideo('bendy/5');
seenCutscene2 = true	
return Function_Stop
end
if wey == true then
return Function_Continue
end
end