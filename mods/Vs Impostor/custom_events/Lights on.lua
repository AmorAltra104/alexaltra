function goodNoteHit(id,direction,noteType,isSustainNote)
runTimer('ddd',crochet/1000)
ddd = true
end
function onEvent(name,value1,value2)
if name == 'Lights on' then
makeLuaSprite('Black','empty',-1725,25)
makeGraphic('Black',1,1,'000000')
addLuaSprite('Black',false)
if ddd then
makeLuaSprite('Black1','empty',-100,-100)
makeGraphic('Black1',1480,920,'000000')
setObjectCamera('Black1','HUD')
addLuaSprite('Black1',false)
doTweenAlpha('Black1','Black1',0,0.5,'linear')
else
makeLuaSprite('Black1','empty',-100,-100)
makeGraphic('Black1',1480,920,'000000')
setObjectCamera('Black1','camother')
addLuaSprite('Black1',false)
doTweenAlpha('Black1','Black1',0,0.5,'linear')
end
triggerEvent('Change Character','dad','impostor3')
triggerEvent('Change Character','bf','bf')
setProperty('gf.visible',true)
end
end
function onTimerCompleted(tag)
if tag == 'ddd' then
ddd = false
end
end