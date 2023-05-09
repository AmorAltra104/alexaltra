local xx =  275;
local yy =  550;
local xx2 = 275;
local yy2 = 550;
local ofs = 20;
local followchars = true;
buildingNum = 1
function onCreate()
    makeLuaSprite('bg1', 'bg/images/ejected/sky', -2080, -3800)--创建一个普通图层 设定图层的内容和位置
    addLuaSprite('bg1', false)--设定图层的标签(既标签)
    setScrollFactor('bg1', 1, 1)--设定图层的滚动速度 让图层看起来立体一点
    scaleObject('bg1', 1, 1);--设置图层的大
    
    makeLuaSprite('bg2', 'bg/images/ejected/fgClouds', -3080, -350)--创建一个普通图层 设定图层的内容和位置
    addLuaSprite('bg2', false)--设定图层的标签(既标签)
    setScrollFactor('bg2', 1, 1)--设定图层的滚动速度 让图层看起来立体一点
    scaleObject('bg2', 1, 1);--设置图层的大   
    
    makeLuaSprite('buildL', 'bg/images/ejected/buildingB', -1480, 6000)--创建一个普通图层 设定图层的内容和位置
    addLuaSprite('buildL', false)--设定图层的标签(既标签)
    setScrollFactor('buildL', 1, 1)--设定图层的滚动速度 让图层看起来立体一点
    scaleObject('buildL', 1, 1);--设置图层的大
    
    makeLuaSprite('buildC', 'bg/images/ejected/buildingA', -380, 3000)--创建一个普通图层 设定图层的内容和位置
    addLuaSprite('buildC', false)--设定图层的标签(既标签)
    setScrollFactor('buildC', 1, 1)--设定图层的滚动速度 让图层看起来立体一点
    scaleObject('buildC', 1, 1);--设置图层的大
    
    makeLuaSprite('buildC2', 'bg/images/ejected/buildingA2', -380, -7000)--创建一个普通图层 设定图层的内容和位置
    addLuaSprite('buildC2', false)--设定图层的标签(既标签)
    setScrollFactor('buildC2', 1, 1)--设定图层的滚动速度 让图层看起来立体一点
    scaleObject('buildC2', 2, 2);--设置图层的大
    
    makeLuaSprite('buildR', 'bg/images/ejected/buildingB2', 880, 5000)--创建一个普通图层 设定图层的内容和位置
    addLuaSprite('buildR', false)--设定图层的标签(既标签)
    setScrollFactor('buildR', 1, 1)--设定图层的滚动速度 让图层看起来立体一点
    scaleObject('buildR', 2, 2);--设置图层的大
    
    makeAnimatedLuaSprite('cloud1', 'bg/images/ejected/scrollingClouds', -380, -1130)--创建一个普通图层 设定图层的内容和位置
    addLuaSprite('cloud1', true)--设定图层的标签(既标签)
    setScrollFactor('cloud1', 1, 1)--设定图层的滚动速度 让图层看起来立体一点
    scaleObject('cloud1', 1.3, 1.3);--设置图层的大小
    addAnimationByPrefix('cloud1', 'idle', 'Cloud1', 24, true)--添加一个动作
    
    makeAnimatedLuaSprite('cloud2', 'bg/images/ejected/scrollingClouds', -380, -1130)--创建一个普通图层 设定图层的内容和位置
    addLuaSprite('cloud2', true)--设定图层的标签(既标签)
    setScrollFactor('cloud2', 1, 1)--设定图层的滚动速度 让图层看起来立体一点
    scaleObject('cloud2', 1.3, 1.3);--设置图层的大小
    addAnimationByPrefix('cloud2', 'idle', 'Cloud2', 24, true)--添加一个动作
    
    makeAnimatedLuaSprite('cloud3', 'bg/images/ejected/scrollingClouds', -380, -1130)--创建一个普通图层 设定图层的内容和位置
    addLuaSprite('cloud3', true)--设定图层的标签(既标签)
    setScrollFactor('cloud3', 1, 1)--设定图层的滚动速度 让图层看起来立体一点
    scaleObject('cloud3', 1.3, 1.3);--设置图层的大小
    addAnimationByPrefix('cloud3', 'idle', 'Cloud3', 24, true)--添加一个动作
    
    makeLuaSprite('speedLines', 'bg/images/ejected/speedLines', -380, -2130)--创建一个普通图层 设定图层的内容和位置
    addLuaSprite('speedLines', false)--设定图层的标签(既标签)
    setScrollFactor('speedLines', 1, 1)--设定图层的滚动速度 让图层看起来立体一点
    scaleObject('speedLines', 1, 1);--设置图层的大
    
    makeLuaSprite('speedLines2', 'bg/images/ejected/speedLines', -380, -2130)--创建一个普通图层 设定图层的内容和位置
    addLuaSprite('speedLines2', false)--设定图层的标签(既标签)
    setScrollFactor('speedLines2', 1, 1)--设定图层的滚动速度 让图层看起来立体一点
    scaleObject('speedLines2', 1, 1);--设置图层的大
    
    makeLuaSprite('speedLines3', 'bg/images/ejected/speedLines', -380, -2130)--创建一个普通图层 设定图层的内容和位置
    addLuaSprite('speedLines3', false)--设定图层的标签(既标签)
    setScrollFactor('speedLines3', 1, 1)--设定图层的滚动速度 让图层看起来立体一点
    scaleObject('speedLines3', 1, 1);--设置图层的大
    
    math.randomseed(os.time())
end

function onBeatHit()
    if curBeat % 2 == 0 then
        setProperty('buildL.y', 6000)  
        doTweenY('buildLY', 'buildL', getProperty('buildL.y')-18500, 1)
        
        setProperty('buildC.y', 3000)  
        doTweenY('buildCY', 'buildC', getProperty('buildC.y')-18500, 1)
        
        setProperty('buildC2.y', 9500)  
        doTweenY('buildC2Y', 'buildC2', getProperty('buildC2.y')-18500, 1)
        
        setProperty('buildR.y', 5000)  
        doTweenY('buildRY', 'buildR', getProperty('buildR.y')-18500, 1)
        
        Num = math.random(0, 3)
        if Num == 0 then
            setProperty('cloud0.y', 5000)
            doTweenY('cloudY', 'cloud0', getProperty('cloud0.y')-18500, 1)
        end
        if Num == 1 then
            setProperty('cloud1.y', 5000)
            doTweenY('cloudY', 'cloud1', getProperty('cloud1.y')-18500, 1)
        end
        if Num == 2 then
            setProperty('cloud2.y', 5000)
            doTweenY('cloudY', 'cloud2', getProperty('cloud2.y')-18500, 1)
        end
        if Num == 3 then
            setProperty('cloud3.y', 5000)
            doTweenY('cloudY', 'cloud3', getProperty('cloud3.y')-18500, 1)
        end
        
        setProperty('speedLines.y', 3000)  
        doTweenY('speedLinesY', 'speedLines', getProperty('speedLines.y')-18500, 1)
        
        setProperty('speedLines2.y', 1500)  
        doTweenY('speedLines2Y', 'speedLines2', getProperty('speedLines2.y')-20000, 1)
        
        setProperty('speedLines3.y', 0)  
        doTweenY('speedLines3Y', 'speedLines3', getProperty('speedLines3.y')-21500, 1)
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
            setProperty('defaultCamZoom',0.45)
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

            setProperty('defaultCamZoom',0.45)
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

