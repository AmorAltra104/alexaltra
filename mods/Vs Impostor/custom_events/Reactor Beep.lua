function onEvent(name,value1,value2)
Alpha = 0.4
if not value1 == '' then
Alpha = value1
end
if name == 'Reactor Beep' then
makeLuaSprite('Black1','empty',-100,-100)
makeGraphic('Black1',1480,920,'FF0000')
setObjectCamera('Black1','camother')
setProperty('Black1.alpha',Alpha)
addLuaSprite('Black1',false)
doTweenAlpha('Black1','Black1',0,0.5,'linear')
triggerEvent('Add Camera Zoom','0.015','0.03')
end
end