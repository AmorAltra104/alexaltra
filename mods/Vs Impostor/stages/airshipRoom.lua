local xx = 300;
local yy = 500;
local xx2 = 700;
local yy2 = 500;
local ofs = 20;
local followchars = true;
function onCreate()
    makeLuaSprite('element8','bg/images/airship/newAirship/fartingSky',-1468, -995);
    setLuaSpriteScrollFactor('element8', 0.3, 0.3);
    addLuaSprite('element8',false);
    
    makeLuaSprite('element5','bg/images/airship/newAirship/backSkyyellow',-1125, 284);
    setLuaSpriteScrollFactor('element5', 0.4, 0.7);
    addLuaSprite('element5',false);
    
    makeLuaSprite('element6','bg/images/airship/newAirship/yellow cloud 3',1330, 283);
    setLuaSpriteScrollFactor('element6', 0.4, 0.7);
    addLuaSprite('element6',false);
    
    makeLuaSprite('element7','bg/images/airship/newAirship/yellow could 2',-837, 304);
    setLuaSpriteScrollFactor('element7', 0.6, 0.9);
    addLuaSprite('element7',false);
    
    makeLuaSprite('element2','bg/images/airship/newAirship/window',-1387, -1231);
    addLuaSprite('element2',false);
    
    makeLuaSprite('element4','bg/images/airship/newAirship/cloudYellow 1',-1541, 242);
    setLuaSpriteScrollFactor('element4', 0.8, 0.8);
    addLuaSprite('element4',false);
    
    makeLuaSprite('element1','bg/images/airship/newAirship/backDlowFloor',-642, 325);
    setLuaSpriteScrollFactor('element1', 0.9, 1);
    addLuaSprite('element1',false);
    
    makeLuaSprite('element0','bg/images/airship/newAirship/DlowFloor',-2440, 336);
    addLuaSprite('element0',false);
    
    makeLuaSprite('element3','bg/images/airship/newAirship/glowYellow',-1113, -1009);
    addLuaSprite('element3',false);
    
    makeLuaSprite('henryTeleporter','bg/images/airship/newAirship/Teleporter',998, 620);
    addLuaSprite('henryTeleporter',false);
end

function onTimerCompleted(tag, loops, loopsleft)
    if tag == 'Teleporter' then
    setProperty('Teleporter.alpha', 0);
    end
end

function onUpdate()
    if followchars == true then
        if mustHitSection == false then
            setProperty('defaultCamZoom',0.6)
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

            setProperty('defaultCamZoom',0.6)
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

