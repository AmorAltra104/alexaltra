function onCreate()
makeAnimatedLuaSprite('speakerlonely','bg/images/polus/speakerlonely',300,185)
addAnimationByPrefix('speakerlonely','idle','speakers lonely',24,false)
addLuaSprite('speakerlonely',false)

makeLuaSprite('bfdead','bg/images/polus/bfdead',615,525)
scaleObject('bfdead',0.75,0.75)
addLuaSprite('bfdead',false)

makeAnimatedLuaSprite('boppers_meltdown','bg/images/polus/boppers_meltdown',-900,150)
addAnimationByPrefix('boppers_meltdown','idle','BoppersMeltdown',24,false)
setScrollFactor('boppers_meltdown',1.5,1.5)
addLuaSprite('boppers_meltdown',true)

makeAnimatedLuaSprite('meltdown','bg/images/polus/meltdown',0,0)
scaleObject('meltdown',960/1280,540/720)
setObjectCamera('meltdown','camother')
setProperty('meltdown.alpha',0.01)
addAnimationByPrefix('meltdown','idle','0',30,false)
addLuaSprite('meltdown',true)
end
function onBeatHit()
objectPlayAnimation('speakerlonely','idle',false)
objectPlayAnimation('boppers_meltdown','idle',false)
end