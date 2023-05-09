aaaa = 0
ssss1 = 0.01
function onCreatePost()
doTweenAlpha('1','iconP2',aaaa,ssss1)
doTweenAlpha('2','iconP1',aaaa,ssss1)
doTweenAlpha('3','healthBar',aaaa,ssss1)
doTweenAlpha('8','scoreTxt',aaaa,ssss1)
doTweenAlpha('4','NewScoreTxt',aaaa,ssss1)
doTweenAlpha('5','timeTxt',aaaa,ssss1)
doTweenAlpha('6','timeBar',aaaa,ssss1)
doTweenAlpha('7','timeBarBG',aaaa,ssss1)

makeLuaSprite('cargo','bg/images/airship/cargo',0,0)
addLuaSprite('cargo',false)

makeLuaSprite('airshipFlashback','bg/images/airship/airshipFlashback',2200,800)
addLuaSprite('airshipFlashback',false)
setProperty('airshipFlashback.alpha',0.01)

makeLuaSprite('scavd','bg/images/airship/scvavd',0,0)
addLuaSprite('scavd',true)
setBlendMode('scavd','ADD')
setProperty('scavd.alpha',0.51)

makeLuaSprite('scavd','bg/images/airship/overlay ass dk',-100,0)
addLuaSprite('scavd',true)
setBlendMode('scavd','ADD')
setProperty('scavd.alpha',0.6)

makeLuaSprite('iluminao omaga','bg/defeat/iluminao omaga',900,350)
addLuaSprite('iluminao omaga',true)
setBlendMode('iluminao omaga','ADD')
setProperty('iluminao omaga.alpha',0.01)

makeLuaSprite('cargoDark','empty',-1000,-1000)
makeGraphic('cargoDark',1280*3,720*3,'000000')
addLuaSprite('cargoDark',true)
setScrollFactor('cargoDark',0,0)
end