u = false
r = 0
shot = false
agent = 1
health = 0
xx = 2000
yy = 1050
xx2 = 2300
yy2 = 1050

aaaa = 0
ssss1 = 0.01

ofs = 20
followchars = true
function onStepHit()
if curStep == 1 then
doTweenAlpha('cargoDark','cargoDark',0,1,'linear')
setProperty('camZooming',true)
end
end
function onUpdate()
if followchars == true then
setProperty('defaultCamZoom',0.8)
if mustHitSection == false then
if getProperty('dad.animation.curAnim.name') == 'idle-alt' or getProperty('gf.animation.curAnim.name') == 'idle-alt' then
triggerEvent('Camera Follow Pos',xx,yy)
end
if getProperty('dad.animation.curAnim.name') == 'idle' or getProperty('gf.animation.curAnim.name') == 'idle' then
triggerEvent('Camera Follow Pos',xx,yy)
end
if getProperty('dad.animation.curAnim.name') == 'singLEFT' or getProperty('gf.animation.curAnim.name') == 'singLEFT' then
triggerEvent('Camera Follow Pos',xx-ofs,yy)
end
if getProperty('dad.animation.curAnim.name') == 'singRIGHT' or getProperty('gf.animation.curAnim.name') == 'singRIGHT' then
triggerEvent('Camera Follow Pos',xx+ofs,yy)
end
if getProperty('dad.animation.curAnim.name') == 'singUP' or getProperty('gf.animation.curAnim.name') == 'singUP' then
triggerEvent('Camera Follow Pos',xx,yy-ofs)
end
if getProperty('dad.animation.curAnim.name') == 'singDOWN' or getProperty('gf.animation.curAnim.name') == 'singDOWN' then
triggerEvent('Camera Follow Pos',xx,yy+ofs)
end
if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' or getProperty('gf.animation.curAnim.name') == 'singLEFT-alt' then
triggerEvent('Camera Follow Pos',xx-ofs,yy)
end
if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' or getProperty('gf.animation.curAnim.name') == 'singRIGHT-alt' then
triggerEvent('Camera Follow Pos',xx+ofs,yy)
end
if getProperty('dad.animation.curAnim.name') == 'singUP-alt' or getProperty('gf.animation.curAnim.name') == 'singUP-alt' then
triggerEvent('Camera Follow Pos',xx,yy-ofs)
end
if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' or getProperty('gf.animation.curAnim.name') == 'singDOWN-alt' then
triggerEvent('Camera Follow Pos',xx,yy+ofs)
end
else
if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
end
if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
end
if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
end
if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
end
if getProperty('boyfriend.animation.curAnim.name') == 'idle-alt' then
triggerEvent('Camera Follow Pos',xx2,yy2)
end
if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
triggerEvent('Camera Follow Pos',xx2,yy2)
end
end
end
end
function onUpdatePost()
if curBeat >= 356 and curBeat < 420 then
xx2 = 2750
yy2 = 1150
end
if curBeat == 420 then
xx2 = 2300
yy2 = 1050
end
if curBeat > 551 and curBeat < 556 then
xx = 1650
yy = 1180
end
if curBeat == 556 then
xx = 2000
yy = 1050
end
end