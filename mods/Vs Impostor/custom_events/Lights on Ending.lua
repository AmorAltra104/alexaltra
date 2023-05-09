Stop = false
zoomz = false
function onEvent(name,value1,value2)
if name == 'Lights on Ending' then
triggerEvent('Change Character','gf','SB')
triggerEvent('Change Character','bf','SB')
triggerEvent('Change Character','dad','impostor3')
triggerEvent('Play Animation','liveReaction','dad')

setProperty('bf_mira_vent.alpha',1)
setProperty('stereo_taken.alpha',1)
objectPlayAnimation('bf_mira_vent','bf vent',false)
objectPlayAnimation('stereo_taken','stereo boom',false)

makeAnimatedLuaSprite('bf_mira_vent','bg/images/mira/bf_mira_vent',100,200)
addAnimationByPrefix('bf_mira_vent','bf vent','bf vent',24,false)
addLuaSprite('bf_mira_vent',false)

makeLuaSprite('table_bg','bg/green/1/table_bg',-1725,25)
scaleObject('table_bg',1.05,1.05)
addLuaSprite('table_bg',false)

makeAnimatedLuaSprite('stereo_taken','bg/images/mira/stereo_taken',400,385)
addAnimationByPrefix('stereo_taken','stereo boom','stereo boom',24,false)
addLuaSprite('stereo_taken',false)

makeLuaSprite('Black','empty',-1725,25)
makeGraphic('Black',1,1,'000000')
addLuaSprite('Black',false)

doTweenAlpha('camHUD','camHUD',0,0.01,'linear')

runTimer('Stop Action Run',5)

zoomz = true
end
end
function onTimerCompleted(tag)
if tag == 'Stop Action Run' then
Stop = true
end
end
function onUpdate()
if Stop then
triggerEvent('Play Animation','liveReaction0120','dad')
end
if zoomz then
setProperty('camZooming',false)
end
end