function onCreate()
makeAnimatedLuaSprite('speakerlonely','bg/images/polus/speakerlonely',300,185)
addAnimationByPrefix('speakerlonely','idle','speakers lonely',24,false)
-- scaleObject('snow',1.75,1.75)
addLuaSprite('speakerlonely',false)
end
function onBeatHit()
objectPlayAnimation('speakerlonely','idle',false)
end