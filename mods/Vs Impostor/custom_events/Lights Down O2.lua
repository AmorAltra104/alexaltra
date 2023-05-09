function onEvent(name,value1,value2)
if name == 'Lights Down O2' then
makeLuaSprite('Black12','empty',-100,-100)
makeGraphic('Black12',1480,920,'000000')
setObjectCamera('Black12','HUD')
addLuaSprite('Black12',false)
setProperty('Black12.alpha',0)
doTweenAlpha('Black12','Black12',1,1,'linear')
end
end