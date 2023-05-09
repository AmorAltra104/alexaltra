local u = false;
local r = 0;
local shot = false;
local agent = 1
local health = 0;
local xx = 1200;
local yy = 500;
local xx2 = 1750.95;
local yy2 = 900;
local ofs = 50;
local followchars = true;
local del = 0;
local del2 = 0;
function onCreatePost()
    makeLuaSprite('bg1', 'bg/turbulence/turbsky', -625, -130)--创建一个普通图层 设定图层的内容和位置
    addLuaSprite('bg1', false)--设定图层的标签(既标签)
    setScrollFactor('bg1', 0.9, 0.9)--设定图层的滚动速度 让图层看起来立体一点
    scaleObject('bg1', 1, 1);--设置图层的大小
    
    makeLuaSprite('hb', 'bg/turbulence/hotairballoon', 180, 50)--创建一个普通图层 设定图层的内容和位置
    addLuaSprite('hb', false)--设定图层的标签(既标签)
    setScrollFactor('hb', 0.4, 0.4)--设定图层的滚动速度 让图层看起来立体一点
    scaleObject('hb', 1, 1);--设置图层的大小
    
    makeLuaSprite('hb2', 'bg/turbulence/backclouds', -2344, 50)--创建一个普通图层 设定图层的内容和位置
    addLuaSprite('hb2', false)--设定图层的标签(既标签)
    setScrollFactor('hb2', 0.4, 0.4)--设定图层的滚动速度 让图层看起来立体一点
    scaleObject('hb2', 1, 1);--设置图层的大小
    
    makeLuaSprite('bc', 'bg/turbulence/backclouds', 180, 50)--创建一个普通图层 设定图层的内容和位置
    addLuaSprite('bc', false)--设定图层的标签(既标签)
    setScrollFactor('bc', 0.6, 0.6)--设定图层的滚动速度 让图层看起来立体一点
    scaleObject('bc', 1, 1);--设置图层的大小
    
    makeLuaSprite('bc2', 'bg/turbulence/hotairballoon ', -2344, 50)--创建一个普通图层 设定图层的内容和位置
    addLuaSprite('bc2', false)--设定图层的标签(既标签)
    setScrollFactor('bc2', 0.6, 0.6)--设定图层的滚动速度 让图层看起来立体一点
    scaleObject('bc2', 1, 1);--设置图层的大小
    
    makeLuaSprite('mc', 'bg/turbulence/midclouds', -256, -106)--创建一个普通图层 设定图层的内容和位置
    addLuaSprite('mc', false)--设定图层的标签(既标签)
    setScrollFactor('mc', 0.8, 0.8)--设定图层的滚动速度 让图层看起来立体一点
    scaleObject('mc', 1, 1);--设置图层的大小
    
    makeLuaSprite('mc2', 'bg/turbulence/midclouds', -6976, -106)--创建一个普通图层 设定图层的内容和位置
    addLuaSprite('mc2', false)--设定图层的标签(既标签)
    setScrollFactor('mc2', 0.8, 0.8)--设定图层的滚动速度 让图层看起来立体一点
    scaleObject('mc2', 1, 1);--设置图层的大小
    
    makeLuaSprite('clawback', 'bg/turbulence/clawback', -560, 916)--创建一个普通图层 设定图层的内容和位置
    addLuaSprite('clawback', true)--设定图层的标签(既标签)
    setScrollFactor('clawback', 1, 1)--设定图层的滚动速度 让图层看起来立体一点
    scaleObject('clawback', 1, 1);--设置图层的大小
    
    makeAnimatedLuaSprite('clawfront', 'bg/turbulence/clawfront', 1880, 730)--创建一个普通图层 设定图层的内容和位置
    addLuaSprite('clawfront', true)--设定图层的标签(既标签)
    setScrollFactor('clawfront', 1, 1)--设定图层的滚动速度 让图层看起来立体一点
    scaleObject('clawfront', 1, 1);--设置图层的大小
    addAnimationByPrefix('clawfront', 'idle', 'clawhands instance 1', 24, true)--添加一个动作
    
    makeLuaSprite('fc', 'bg/turbulence/frontclouds', -400, 950)--创建一个普通图层 设定图层的内容和位置
    addLuaSprite('fc', true)--设定图层的标签(既标签)
    setScrollFactor('fc', 1, 1)--设定图层的滚动速度 让图层看起来立体一点
    scaleObject('fc', 1, 1);--设置图层的大小
    
    makeLuaSprite('fc2', 'bg/turbulence/frontclouds', -5895, 950)--创建一个普通图层 设定图层的内容和位置
    addLuaSprite('fc2', true)--设定图层的标签(既标签)
    setScrollFactor('fc2', 1, 1)--设定图层的滚动速度 让图层看起来立体一点
    scaleObject('fc2', 1, 1);--设置图层的大小
    
    setObjectOrder('boyfriendGroup', getObjectOrder('clawfront') - 1)
end

function onCountdownTick(sC)
    if sC == 0 then
    doTweenX('fc1', 'fc', 5095, 2.5)
    doTweenX('fc2', 'fc2', -400, 2.5)
    
    doTweenX('mc1', 'mc', 3104, 2.5)
    doTweenX('mc2', 'mc2', -3616, 2.5)
    
    doTweenX('bc1', 'bc', 3104, 10)
    doTweenX('bc2', 'bc2', -3616, 10)
    
    doTweenX('hb1', 'hb', 3104, 10)
    doTweenX('hb2', 'hb2', -3616, 10)
end
end

function onTweenCompleted(tag, loops, loopsLeft)    
    if tag == 'fc1' then
        setProperty('fc.x', -5895)
        doTweenX('fc3', 'fc2', 5095, 2.5)
        doTweenX('fc4', 'fc', -400, 2.5)
    end
    if tag == 'fc3' then
        setProperty('fc2.x', -5895)
        doTweenX('fc1', 'fc2', -400, 2.5)
        doTweenX('fc2', 'fc', 5095, 2.5)
    end
    
    if tag == 'mc1' then
        setProperty('mc.x', -10336)
        doTweenX('mc3', 'mc2', -256, 2.5)
        doTweenX('mc4', 'mc', -6766, 2.5)
    end
    if tag == 'mc3' then
        doTweenX('mc5', 'mc2', 3104, 2.5)
        doTweenX('mc6', 'mc', -3616, 2.5)
    end
    if tag == 'mc6' then
        setProperty('mc2.x', -10366)
        doTweenX('mc8', 'mc', -256, 2.5)
        doTweenX('mc5', 'mc2', -6976, 2.5)
    end 
    if tag == 'mc8' then
        doTweenX('mc2', 'mc2', -3616, 2.5)
        doTweenX('mc1', 'mc', 3616, 2.5)
    end
    
    if tag == 'bc1' then
        setProperty('bc.x', -10336)
        doTweenX('bc3', 'bc2', -256, 10)
        doTweenX('bc4', 'bc', -6766, 10)
    end
    if tag == 'bc3' then
        doTweenX('bc5', 'bc2', 3104, 10)
        doTweenX('bc6', 'bc', -3616, 10)
    end
    if tag == 'bc6' then
        setProperty('bc2.x', -10366)
        doTweenX('bc8', 'bc', -256, 10)
        doTweenX('bc5', 'bc2', -6976, 10)
    end 
    if tag == 'bc8' then
        doTweenX('bc2', 'bc2', -3616, 10)
        doTweenX('bc1', 'bc', 3616, 10)
    end
    
    if tag == 'hb1' then
        setProperty('hb.x', -10336)
        doTweenX('hb3', 'hb2', -256, 5)
        doTweenX('hb4', 'hb', -6766, 5)
    end
    if tag == 'hb3' then
        doTweenX('hb5', 'hb2', 3104, 5)
        doTweenX('hb6', 'hb', -3616, 5)
    end
    if tag == 'hb6' then
        setProperty('hb2.x', -10366)
        doTweenX('hb8', 'hb', -256, 5)
        doTweenX('hb5', 'hb2', -6976, 5)
    end 
    if tag == 'hb8' then
        doTweenX('hb2', 'hb2', -3616, 5)
        doTweenX('hb1', 'hb', 3616, 5)
    end
end

function onUpdate()
	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
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
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end

    setObjectOrder('gfGroup', 0)
    
end

