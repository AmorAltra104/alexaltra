function onEvent(name,value1,value2)
if name == 'Lights out' then
triggerEvent('Change Character','dad','whitegreen')
triggerEvent('Change Character','bf','whitebf')
setProperty('gf.visible',false)

makeLuaSprite('Black','empty',-1725,25)
makeGraphic('Black',4907,890,'000000')
addLuaSprite('Black',false)

makeLuaSprite('Black1','empty',-100,-100)
makeGraphic('Black1',1480,920,'FFFFFF')
setObjectCamera('Black1','HUD')
addLuaSprite('Black1',false)
doTweenAlpha('Black1','Black1',0,0.5,'linear')
end
end