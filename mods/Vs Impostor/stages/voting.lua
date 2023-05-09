function onCreate()
makeLuaSprite('backer_groung_voting','bg/voting/backer_groung_voting',387.3,194.1)
setScrollFactor('backer_groung_voting',0.8,0.8)
addLuaSprite('backer_groung_voting',false)

makeLuaSprite('main_bg_meeting','bg/voting/main_bg_meeting',-315.15,52.85)
setScrollFactor('main_bg_meeting',0.95,0.95)
addLuaSprite('main_bg_meeting',false)

makeLuaSprite('CHAIRS!!!!!!!!!!!!!!!','bg/voting/CHAIRS_______________',-7.9,644.85)
addLuaSprite('CHAIRS!!!!!!!!!!!!!!!',false)

makeLuaSprite('table_voting','bg/voting/table_voting',209.4,679.55)
addLuaSprite('table_voting',true)

makeLuaSprite('light_voting','bg/voting/light_voting',0,0)
setBlendMode('light_voting','ADD')
setObjectCamera('light_voting','HUD')
setProperty('light_voting.alpha',0.46)
addLuaSprite('light_voting',true)

makeLuaSprite('Black3','empty',-100,-100)
makeGraphic('Black3',1480,200,'000000')
setObjectCamera('Black3','HUD')
addLuaSprite('Black3',true)
makeLuaSprite('Black2','empty',-100,620)
makeGraphic('Black2',1480,300,'000000')
setObjectCamera('Black2','HUD')
addLuaSprite('Black2',true)
end