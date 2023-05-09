
local u = false;
local r = 0;
local shot = false;
local agent = 1
local health = 0;
local xx =  500;
local yy =  475;
local xx2 = 900;
local yy2 = 475;
local ofs = 20;
local followchars = true;
local del = 0;
local del2 = 0;
function onCreate()
makeAnimatedLuaSprite('bf_mira_vent','bg/images/mira/bf_mira_vent',100,200)
addAnimationByPrefix('bf_mira_vent','bf vent','bf vent',24,false)
addLuaSprite('bf_mira_vent',false)
setProperty('bf_mira_vent.alpha',0)

makeLuaSprite('table_bg','bg/green/1/table_bg',-1725,25)
scaleObject('table_bg',1.05,1.05)
addLuaSprite('table_bg',false)

makeAnimatedLuaSprite('stereo_taken','bg/images/mira/stereo_taken',400,285)
addAnimationByPrefix('stereo_taken','stereo boom','stereo boom',24,false)
addLuaSprite('stereo_taken',false)
setProperty('stereo_taken.alpha',0)

setProperty('defaultCamZoom',0.9)
end
function onUpdate()
if mustHitSection == false then
if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
triggerEvent('Camera Follow Pos',xx-ofs,yy)
end
if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
triggerEvent('Camera Follow Pos',xx+ofs,yy)
end
if getProperty('dad.animation.curAnim.name') == 'singUP' then
triggerEvent('Camera Follow Pos',xx,yy-ofs)
end
if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
triggerEvent('Camera Follow Pos',xx,yy+ofs)
end
if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
triggerEvent('Camera Follow Pos',xx-ofs,yy)
end
if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
triggerEvent('Camera Follow Pos',xx+ofs,yy)
end
if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
triggerEvent('Camera Follow Pos',xx,yy-ofs)
end
if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
triggerEvent('Camera Follow Pos',xx,yy+ofs)
end
if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
triggerEvent('Camera Follow Pos',xx,yy)
end
if getProperty('dad.animation.curAnim.name') == 'idle' then
triggerEvent('Camera Follow Pos',xx,yy)
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