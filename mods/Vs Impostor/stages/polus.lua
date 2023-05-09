local xx =  470;
local yy =  250;
local xx2 = 820;
local yy2 = 250;
local ofs = 20;
local followchars = true;
function onCreate()
makeLuaSprite('polus_custom_sky','bg/images/polus/polus_custom_sky',-1200,-960)
setScrollFactor('polus_custom_sky',0.4,0.4)
addLuaSprite('polus_custom_sky',false)
scaleObject('polus_custom_sky',2,2)

makeLuaSprite('polusrocks','bg/images/polus/polusrocks',-700,-275)
-- scaleObject('polusrocks',0.75,0.75)
setScrollFactor('polusrocks',0.5,0.5)
addLuaSprite('polusrocks',false)

makeLuaSprite('polusHills','bg/images/polus/polusHills',-1050,-175)
setScrollFactor('polusHills',0.9,0.9)
addLuaSprite('polusHills',false)

makeLuaSprite('polus_custom_lab','bg/images/polus/polus_custom_lab',50,-400)
addLuaSprite('polus_custom_lab',false)

makeLuaSprite('polus_custom_floor','bg/images/polus/polus_custom_floor',-1350,80)
addLuaSprite('polus_custom_floor',false)

makeAnimatedLuaSprite('snow','bg/images/polus/snow',-450,-415)
addAnimationByPrefix('snow','idle','cum',24,true)
scaleObject('snow',1.75,1.75)
addLuaSprite('snow',true)
end
function onUpdate()
    if followchars == true then
        if mustHitSection == false then
            setProperty('defaultCamZoom',0.75)
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

            setProperty('defaultCamZoom',0.75)
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
    else
        triggerEvent('Camera Follow Pos','','')
    end
    
end

