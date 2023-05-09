function onEvent(name,value1,value2)
if name == 'Meltdown Video' then
makeAnimatedLuaSprite('meltdown','bg/images/polus/meltdown',0,0)
scaleObject('meltdown',1280/960,720/540)
setObjectCamera('meltdown','camother')
addAnimationByPrefix('meltdown','idle','0',30,false)
addLuaSprite('meltdown',true)
end
end