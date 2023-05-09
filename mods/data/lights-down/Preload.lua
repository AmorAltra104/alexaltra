function onCreate()
precacheImage('characters/whitebf')
precacheImage('characters/whitegreen')

makeAnimatedLuaSprite('stereo_taken','bg/images/mira/stereo_taken',400,385)
addAnimationByPrefix('stereo_taken','stereo boom','stereo boom',24,false)
addLuaSprite('stereo_taken',false)
setProperty('bf_mira_vent.alpha',0)
end