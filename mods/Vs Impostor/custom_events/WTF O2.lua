function onEvent(name,value1,value2)
if name == 'WTF O2' then
if value1 == 'what' then
makeLuaSprite('Black114514','empty',-1725,25)
makeGraphic('Black114514',1,1,'000000')
addLuaSprite('Black114514',false)
setProperty('Black114514.alpha',0)
doTweenAlpha('Black1114514','Black114514',1,1,'linear')

makeLuaSprite('what','bg/lounge/1',-1280/1920,0)
scaleObject('what',1280/1920,720/1080)
addLuaSprite('what',false)
setObjectCamera('what','HUD')
setProperty('what.alpha',getProperty('Black114514.alpha'))
end
if value1 == 'the' then
makeLuaSprite('what','bg/lounge/2',-1280/1920,0)
scaleObject('what',1280/1920,720/1080)
addLuaSprite('what',false)
setObjectCamera('what','HUD')
setProperty('what.alpha',getProperty('Black114514.alpha'))
end
if value1 == 'fuck' then
makeLuaSprite('what','bg/lounge/3',-1280/1920,0)
scaleObject('what',1280/1920,720/1080)
addLuaSprite('what',false)
setObjectCamera('what','HUD')
setProperty('what.alpha',getProperty('Black114514.alpha'))
end
if value1 == 'die' then
makeLuaSprite('what','empty',-1725,25)
makeGraphic('what',1,1,'000000')
addLuaSprite('what',false)
setProperty('camHUD.alpha',0)

makeLuaSprite('Black12','empty',-200,-150)
makeGraphic('Black12',1560,1000,'000000')
addLuaSprite('Black12',true)
setScrollFactor('Black12',0,0)
end
if value1 == 'appear' then
doTweenAlpha('Black11','Black12',0,1,'linear')
makeLuaSprite('what','bg/lounge/O2lighting',-142.22222222222/2,-80/2)
setScrollFactor('what',0,0)
scaleObject('what',1/0.9,1/0.9)
addLuaSprite('what',true)
end
end
end
function onUpdate()
setProperty('what.alpha',getProperty('Black114514.alpha'))
end