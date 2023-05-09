
local u = false;
local r = 0;
local shot = false;
local agent = 1
local health = 0
local xx = 650;
local yy = 500;
local xx2 = 1000;
local yy2 = 550;
local ofs = 20;
local followchars = true;
local del = 0;
local del2 = 0;
function onCreatePost()
makeLuaSprite('blackwall','empty',-97.75,-400)
makeGraphic('blackwall',2500,2500,'000000')
setProperty('blackwall.alpha',0)
addLuaSprite('blackwall',true)

makeAnimatedLuaSprite('victorytext','bg/victory/victorytext',410,75)
addAnimationByPrefix('victorytext','idle','VICTORY',24,false)
setScrollFactor('victorytext',0.9,0.9)
addLuaSprite('victorytext',false)

makeAnimatedLuaSprite('vic_bgchars','bg/victory/vic_bgchars',-97.75,191.85)
addAnimationByPrefix('vic_bgchars','idle','lol thing',24,false)
setScrollFactor('vic_bgchars',0.8,0.8)
addLuaSprite('vic_bgchars',false)

makeLuaSprite('fog_back','bg/victory/fog_back',338.15,649.4)
setScrollFactor('fog_back',0.95,0.95)
setProperty('fog_back.alpha',0.16)
addLuaSprite('fog_back',false)

makeAnimatedLuaSprite('vic_jelq','bg/victory/vic_jelq',676.05,478.3)
addAnimationByPrefix('vic_jelq','idle','jelqeranim',24,false)
setScrollFactor('vic_jelq',0.975,0.975)
addLuaSprite('vic_jelq',false)

makeAnimatedLuaSprite('vic_war','bg/victory/vic_war',693.7,421.9)
addAnimationByPrefix('vic_war','idle','warchiefbganim',24,false)
setScrollFactor('vic_war',0.975,0.975)
addLuaSprite('vic_war',false)

makeAnimatedLuaSprite('vic_jor','bg/victory/vic_jor',998.6,408.9)
addAnimationByPrefix('vic_jor','idle','jorsawseebganim',24,false)
setScrollFactor('vic_jor',0.975,0.975)
addLuaSprite('vic_jor',false)

makeLuaSprite('fog_mid','bg/victory/fog_mid',-192.9,607.25)
setScrollFactor('fog_mid',0.975,0.975)
setProperty('fog_mid.alpha',0.19)
addLuaSprite('fog_mid',false)

makeLuaSprite('victory_spotlights','bg/victory/victory_spotlights',119.4,0)
addLuaSprite('victory_spotlights',true)
setBlendMode('victory_spotlights','ADD')
setProperty('victory_spotlights.alpha',0.69)

makeAnimatedLuaSprite('victory_pulse','bg/victory/victory_pulse',-269.85,261.05)
addAnimationByPrefix('victory_pulse','idle','animatedlight',24,false)
addLuaSprite('victory_pulse',true)
setBlendMode('victory_pulse','ADD')

makeLuaSprite('fog_front','bg/victory/fog_front',-875.8,873.70)
setScrollFactor('fog_front',1.5,1.5)
setProperty('fog_front.alpha',0.44)
addLuaSprite('fog_front',true)

setProperty('healthBar.visible',false)
setProperty('healthBarBG.visible',false)
setProperty('iconP1.visible',false)
setProperty('iconP2.visible',false)
setProperty('vic_jor.alpha',0)
setProperty('vic_war.alpha',0)
setProperty('vic_jelq.alpha',0)

setObjectOrder('victorytext', 10)
setObjectOrder('vic_bgchars', 2)
setObjectOrder('fog_back', 14)
setObjectOrder('vic_jelq', 16)
setObjectOrder('vic_war', 18)
setObjectOrder('vic_jor', 20)
setObjectOrder('fog_mid', 22)
setObjectOrder('dadGroup', 40)
setObjectOrder('boyfriendGroup', 40)
setObjectOrder('victory_spotlights', 45)
setObjectOrder('victory_pulse', 48)
setObjectOrder('fog_front', 52)
setObjectOrder('blackwall', 60)




end
function onBeatHit()
objectPlayAnimation('victory_pulse','idle',false)
objectPlayAnimation('vic_bgchars','idle',false)
objectPlayAnimation('vic_jelq','idle',true)
objectPlayAnimation('vic_war','idle',true)
objectPlayAnimation('vic_jor','idle',true)
if getProperty('curBeat') % 2 == 0 then
objectPlayAnimation('victorytext','idle',false)
end
end



function onUpdate()
setProperty('health', 1)
if followchars == true then
if mustHitSection == false then
setProperty('defaultCamZoom',0.7)
if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
triggerEvent('Camera Follow Pos',xx2-ofs-30,yy2)
end
if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
triggerEvent('Camera Follow Pos',xx2+ofs+30,yy2)
end
if getProperty('dad.animation.curAnim.name') == 'singUP' then
triggerEvent('Camera Follow Pos',xx2,yy2-ofs-20)
end
if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
triggerEvent('Camera Follow Pos',xx2,yy2+ofs+30)
end
if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
triggerEvent('Camera Follow Pos',xx2,yy2)
end
if getProperty('dad.animation.curAnim.name') == 'idle' then
triggerEvent('Camera Follow Pos',xx2,yy2)
end
else

setProperty('defaultCamZoom',0.7)
if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
triggerEvent('Camera Follow Pos',xx2-ofs-30,yy2)
end
if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
triggerEvent('Camera Follow Pos',xx2+ofs+30,yy2)
end
if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
triggerEvent('Camera Follow Pos',xx2,yy2-ofs-20)
end
if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
triggerEvent('Camera Follow Pos',xx2,yy2+ofs+30)
end
if getProperty('boyfriend.animation.curAnim.name') == 'idle-alt' then
triggerEvent('Camera Follow Pos',xx2,yy2)
end
if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
triggerEvent('Camera Follow Pos',xx2,yy2)
end
end
else
triggerEvent('Camera Follow Pos','','')
end

end

