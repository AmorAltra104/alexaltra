Opponent = false
Both = false
yeee = false
yeeeP2 = true
aaaa = true
function onCreate()
makeLuaSprite('icon-black1','icons/icon-black1',0,0)
setObjectCamera('icon-black1','camHUD')
addLuaSprite('icon-black1',true)
setProperty('icon-black1.visible',false)

makeLuaSprite('icon-black2','icons/icon-black2',0,0)
setObjectCamera('icon-black2','camHUD')
addLuaSprite('icon-black2',true)
setProperty('icon-black2.visible',false)

makeLuaSprite('healthBars','empty',getProperty('healthBar.x'),getProperty('healthBar.y'))
makeGraphic('healthBars',1,11,'3a1b4f')
setObjectCamera('healthBars','camHUD')
addLuaSprite('healthBars',true)
setObjectOrder('healthBars',getObjectOrder('healthBar')+1)

for i = 0,getProperty('unspawnNotes.length')-1 do
if getPropertyFromGroup('unspawnNotes',i,'noteType') == 'two' then
setPropertyFromGroup('unspawnNotes',i,'noAnimation',true)
end
end
end
function onEvent(name,value1,value2)
if name == 'Opponent Two' then
if value1 == '0' then
Opponent = false
end
if value1 == '1' then
Opponent = true
end
end
if name == 'Both Opponents' then
if value1 == '' then
Opponent = true
Both = false
end
if value1 == '0' then
Opponent = true
Both = true
end
if value1 == '1' then
Both = true
end
end
end
function opponentNoteHit(id, direction, noteType, isSustainNote)
if noteType == 'two' then
if Both then
if direction == 0 then
anim = 'singLEFT'
elseif direction == 1 then
anim = 'singDOWN'
elseif direction == 2 then
anim = 'singUP'
elseif direction == 3 then
anim = 'singRIGHT'
end
yeee = true
yeeeP2 = true
triggerEvent('Play Animation',anim,'gf')
triggerEvent('Play Animation',anim,'dad')
end
if Both == false then
if Opponent then
if direction == 0 then
anim = 'singLEFT'
elseif direction == 1 then
anim = 'singDOWN'
elseif direction == 2 then
anim = 'singUP'
elseif direction == 3 then
anim = 'singRIGHT'
end
yeee = true
yeeeP2 = false
triggerEvent('Play Animation',anim,'gf')
end
if Opponent == false then
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
yeee = false
yeeeP2 = true
triggerEvent('Play Animation',anim,'dad')
end
end
end
if noteType == 'GF Sing' then
yeee = true
yeeeP2 = false
end
if noteType == '' then
yeee = false
yeeeP2 = true
end
end
function onStepHit()
if curStep == 3408 then
aaaa = false
end
end
function onUpdatePost()
-- setHealthBarColors('FFFFFF','000000')
-- doTweenColor('obvwwa','healthBar','FF0000',0.01,'linear')
if aaaa then
setProperty('healthBars.alpha',getProperty('healthBar.alpha'))
if getProperty('health') < 2 then
makeGraphic('healthBars',getProperty('iconP1.x')-getProperty('healthBar.x')+26.5,11,'3a1b4f')
else
setProperty('healthBars.visible',false)
end
setProperty('icon-black2.scale.x',getProperty('iconP2.scale.x'))
setProperty('icon-black1.x',getProperty('iconP2.x')-35)
setProperty('icon-black1.y',getProperty('iconP2.y'))
setProperty('icon-black1.scale.x',getProperty('iconP2.scale.x'))
setProperty('icon-black1.scale.y',getProperty('iconP2.scale.y'))

setProperty('icon-black2.x',getProperty('iconP2.x')-35)
setProperty('icon-black2.y',getProperty('iconP2.y'))
setProperty('icon-black2.scale.x',getProperty('iconP2.scale.x'))
setProperty('icon-black2.scale.y',getProperty('iconP2.scale.y'))
if yeeeP2 then
setProperty('healthBars.visible',false)
setProperty('iconP2.visible',true)
else
setProperty('iconP2.visible',false)
end
if yeee then
setProperty('healthBars.visible',true)
if getProperty('health') > 1.65 then
setProperty('icon-black2.visible',true)
setProperty('icon-black1.visible',false)
else
setProperty('icon-black1.visible',true)
setProperty('icon-black2.visible',false)
end
else
setProperty('icon-black1.visible',false)
setProperty('icon-black2.visible',false)
end
if yeee and yeeeP2 then
setProperty('iconP2.visible',true)
if getProperty('health') > 1.65 then
setProperty('icon-black2.visible',true)
setProperty('icon-black1.visible',false)
else
setProperty('icon-black1.visible',true)
setProperty('icon-black2.visible',false)
end
end
else
setProperty('healthBars.visible',false)
setProperty('icon-black1.visible',false)
setProperty('icon-black2.visible',false)
end
end