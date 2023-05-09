idle = true
local canEnd = false
function onCreate()
makeAnimatedLuaSprite('madgus','characters/madgus',210+1192-50,430+192-50)
addAnimationByPrefix('madgus','idle','DANCELEFT',24,false)
addLuaSprite('madgus',false)
for i = 0,getProperty('unspawnNotes.length')-1 do
if getPropertyFromGroup('unspawnNotes',i,'noteType') == 'Tier 2' then
setPropertyFromGroup('unspawnNotes',i,'texture','NOTE/NOTE_Tier 2') --Change texture  

setPropertyFromGroup('unspawnNotes',i,'noAnimation',true) --Stops original animations

if getPropertyFromGroup('unspawnNotes',i,'mustPress') then --Doesn't let Dad/Opponent notes get ignored
setPropertyFromGroup('unspawnNotes',i,'hitByOpponent',true) --Miss has no penalties
setPropertyFromGroup('unspawnNotes',i,'ignoreNote',true) --Miss has no penalties
end
end
end
for i=0,getProperty('unspawnNotes.length') do
if getPropertyFromGroup('unspawnNotes',i,'mustPress') then
if getPropertyFromGroup('unspawnNotes',i,'noteType') == 'Tier 2' then
setPropertyFromGroup('unspawnNotes',i,'noteType','bfTier 2')
setPropertyFromGroup('unspawnNotes',i,'noAnimation',true)
end
end
end
for i=0,getProperty('unspawnNotes.length') do
if not getPropertyFromGroup('unspawnNotes',i,'mustPress') then
if getPropertyFromGroup('unspawnNotes',i,'noteType') == 'Tier 2' then
setPropertyFromGroup('unspawnNotes',i,'noteType','dadTier 2')
setPropertyFromGroup('unspawnNotes',i,'noAnimation',true)
end
end
end
end
function onBeatHit()
if idle then
if getProperty('curBeat') % 2 == 0 then
makeAnimatedLuaSprite('madgus','characters/madgus',210+1192-50,430+192-50)
addAnimationByPrefix('madgus','idle','DANCELEFT',24,false)
addLuaSprite('madgus',false)
end
if getProperty('curBeat') % 2 == 1 then
makeAnimatedLuaSprite('madgus','characters/madgus',210+1192-39,430+192-50)
addAnimationByPrefix('madgus','idle','DANCERIGHT',24,false)
addLuaSprite('madgus',false)
end
end
if curBeat == 328 then
makeAnimatedLuaSprite('madgus','characters/madgus',210+1192-156,430+192-59)
addAnimationByPrefix('madgus','scream','scream',10,false)
addLuaSprite('madgus',false)
end
end
function onUpdatePost()
for i=0, getProperty('notes.length') do
if getSongPosition() > getPropertyFromGroup('notes',i,'strumTime') and getPropertyFromGroup('notes',i,'noteType') == 'bfTier 2' then
pnoteData = getPropertyFromGroup('notes',i,'noteData')
if pnoteData == 0 then
makeAnimatedLuaSprite('madgus','characters/madgus',210+1192-169,430+192-50)
addAnimationByPrefix('madgus','idle','left',24,false)
addLuaSprite('madgus',false)
idle = false
runTimer('idles',crochet/1000)
elseif pnoteData == 1 then
makeAnimatedLuaSprite('madgus','characters/madgus',210+1192-58,430+192-22)
addAnimationByPrefix('madgus','idle','down',24,false)
addLuaSprite('madgus',false)
idle = false
runTimer('idles',crochet/1000)
elseif pnoteData == 2 then
makeAnimatedLuaSprite('madgus','characters/madgus',210+1192-128,430+192-64)
addAnimationByPrefix('madgus','idle','up',24,false)
addLuaSprite('madgus',false)
idle = false
runTimer('idles',crochet/1000)
elseif pnoteData == 3 then
makeAnimatedLuaSprite('madgus','characters/madgus',210+1192-90,430+192-50)
addAnimationByPrefix('madgus','idle','right',24,false)
addLuaSprite('madgus',false)
idle = false
runTimer('idles',crochet/1000)
end
removeFromGroup('notes',i)
end
end
for i=0, getProperty('notes.length') do
if getSongPosition() > getPropertyFromGroup('notes',i,'strumTime') and getPropertyFromGroup('notes',i,'noteType') == 'dadTier 2' then
noteData = getPropertyFromGroup('notes',i,'noteData')
if noteData == 0 then
anim = 'singLEFT'
elseif noteData == 1 then
anim = 'singDOWN'
elseif noteData == 2 then
anim = 'singUP'
elseif noteData == 3 then
anim = 'singRIGHT'
end
triggerEvent('Play Animation',anim,'gf')
removeFromGroup('notes',i)
end
end
end

function opponentNoteHit(id,direction,noteType,isSustainNote)
if noteType == 'dadTier 2' then
anim = ''
if direction == 0 then
anim = 'singLEFT'
elseif direction == 1 then
anim = 'singDOWN'
elseif direction == 2 then
anim = 'singUP'
elseif direction == 3 then
anim = 'singRIGHT'
end
triggerEvent('Play Animation',anim,'gf')
end
end
-- function goodNoteHit(id,direction,noteType,isSustainNote)
-- if noteType == 'Tier 2' then
-- anim = ''
-- if direction == 0 then
-- anim = 'singLEFT-alt'
-- elseif direction == 1 then
-- anim = 'singDOWN-alt'
-- elseif direction == 2 then
-- anim = 'singUP-alt'
-- elseif direction == 3 then
-- anim = 'singRIGHT-alt'
-- end
-- triggerEvent('Play Animation',anim,'gf')
-- end
-- end
function onTimerCompleted(tag)
if tag == 'idles' then
if curBeat < 326 then
makeAnimatedLuaSprite('madgus','characters/madgus',210+1192-50,430+192-50)
addAnimationByPrefix('madgus','idle','DANCELEFT',24,false)
addLuaSprite('madgus',false)
idle = true
end
end
end
--我这个屑，用了2.5小时写这玩意儿(无敌的黑化)