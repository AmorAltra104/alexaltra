function onEvent(name,value1,value2)
if name == 'flash' then
makeLuaSprite('Black1','empty',-100,-100)
makeGraphic('Black1',1480,920,'FFFFFF')
setObjectCamera('Black1','HUD')
addLuaSprite('Black1',false)
doTweenAlpha('Black1','Black1',0,0.35,'linear')
end
end