local allowCountdown = false

function onStartCountdown()	
if not allowCountdown then
 return Function_Stop
end	if allowCountdown then
 return Function_Continue
end 
end

function onCreatePost()
if not seenCutscene and isStoryMode then
runTimer('adios2', 30.7)
startVideo('cuphead/3');
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
doTweenAlpha('zzzzzzz2', 'negro', 0, 0.3, 'linear');
setProperty('ready_wallop.visible', true);
objectPlayAnimation('ready_wallop', 'ready_wallop2', true)
allowCountdown = true	
setPropertyFromClass('flixel.FlxG', 'mouse.visible', false);
makeAnimatedLuaSprite('intro', 'zassets/cup/images/intro', -20, 0);
addAnimationByPrefix('intro', 'intro', 'intro', 24, false);  
objectPlayAnimation('intro', 'intro', true)
setObjectCamera('intro', 'other');
scaleObject('intro', 1.2, 1.1);
addLuaSprite('intro', true);
runTimer('adios3', 1, 1)
end 
if tag == 'adios3' then
doTweenAlpha('jejeboy', 'intro', 0, 2, 'elasticInOut')
playSound('intros/angry/0', 2)
runTimer('adios4', 0.5, 1)
end
if tag == 'adios4' then
makeAnimatedLuaSprite('ready_wallop', 'zassets/cup/images/ready_wallop', -610, -100);
addAnimationByPrefix('ready_wallop', 'ready_wallop', 'ready_wallop', 24, true); 
addAnimationByPrefix('ready_wallop', 'ready_wallop', 'ready_wallop2', 24, true);  
objectPlayAnimation('ready_wallop', 'ready_wallop2', true)
setObjectCamera('ready_wallop', 'other');
scaleObject('ready_wallop', 1, 1);
addLuaSprite('ready_wallop', true);
runTimer('adios5', 3, 1);
end
if tag == 'adios5' then
removeLuaSprite('ready_wallop')
setProperty('skipCountdown', true)
startCountdown()
   end 
end

local wey = true
local seenCutscene2 = false

function onEndSong()
if not seenCutscene2 and isStoryMode then
startVideo('cuphead/4');
seenCutscene2 = true	
return Function_Stop
end
if wey == true then
return Function_Continue
end
end