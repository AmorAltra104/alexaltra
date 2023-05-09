function onEvent(name,value1,value2)
if name == 'Double Kill Events' then
if value1 == 'darken' then
makeLuaSprite('cargoDark','empty',-1000,-1000)
makeGraphic('cargoDark',1280*3,720*3,'000000')
addLuaSprite('cargoDark',false)
setScrollFactor('cargoDark',0,0)
setProperty('cargoDark.alpha',0)

setProperty('scavd.alpha',0)
setProperty('iluminao omaga.alpha',0)

doTweenAlpha('cargoDark','cargoDark',1,2)
doTweenAlpha('gf','gf',0,2)

makeLuaSprite('Black1','empty',-100,-100)
makeGraphic('Black1',1480,920,'000000')
setObjectCamera('Black1','HUD')
addLuaSprite('Black1',false)
doTweenAlpha('Black1','Black1',0,0.55)
end
if value1 == 'airship' then
makeLuaSprite('airshipFlashback','bg/images/airship/airshipFlashback',2200,800)
addLuaSprite('airshipFlashback',false)
setProperty('airshipFlashback.alpha',0)
setProperty('airshipFlashback.scale.x',1.3)
setProperty('airshipFlashback.scale.y',1.3)
showDlowDK = true
end
if value1 == 'brighten' then
showDlowDK = false
removeLuaSprite('airshipFlashback',true)
removeLuaSprite('cargoDark',true)
setProperty('gf.alpha',1)
setProperty('scavd.alpha',0.51)
-- setProperty('iluminao omaga.alpha',0.6)
end
if value1 == 'gonnakill' then
doTweenAlpha('Black1','Black1',1,0.55)
end
if value1 == 'readykill' then
setProperty('iluminao omaga.alpha',1)
setProperty('dad.alpha',0)

triggerEvent('Change Character','0','bf-defeat-normal')
removeLuaSprite('airshipFlashback',true)
removeLuaSprite('cargo',true)
removeLuaSprite('scavd',true)
removeLuaSprite('cargo',true)

doTweenAlpha('1','iconP2',0,0.01)
doTweenAlpha('2','iconP1',0,0.01)
doTweenAlpha('3','healthBar',0,0.01)
doTweenAlpha('4','timeTxt',0,0.01)
doTweenAlpha('5','timeBar',0,0.01)
doTweenAlpha('6','timeBarBG',0,0.01)

doTweenAlpha('Black1','Black1',0,2.75)
end
if value1 == 'kill' then
doTweenAlpha('camGame','camGame',0,0.01)
doTweenAlpha('camHUD','camHUD',0,0.01)

makeLuaSprite('Black1','empty',-100,-100)
makeGraphic('Black1',1480,920,'FF0000')
setObjectCamera('Black1','camother')
addLuaSprite('Black1',false)
doTweenAlpha('Black1','Black1',0,2.75)
end
end
end
function onUpdate(elapsed)
if showDlowDK then
doTweenAlpha('airshipFlashback','airshipFlashback',1,7.5)
end
end