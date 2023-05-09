local u = false;
local r = 0;
local shot = false;
local agent = 1
local health = 0;
local xx =  100;
local yy =  200;
local xx2 = 380;
local yy2 = 200;
local ofs = 20;
local followchars = true;
local del = 0;
local del2 = 0;
function onCreatePost()
	math.randomseed(os.time())
	
	makeLuaSprite('sky', 'bg/plantroom/bg',-1400,-600);
	scaleObject('sky',1,1);
	setScrollFactor('sky',1,1);
	addLuaSprite('sky', false)
	
	makeLuaSprite('backcloud', 'bg/plantroom/cloud fathest', -1310, 40);
	scaleObject('backcloud',1,1);
	setScrollFactor('backcloud',1,1);
	addLuaSprite('backcloud', false)
	
	makeLuaSprite('frontcloud', 'bg/plantroom/cloud front', -1310, 40);
	scaleObject('frontcloud',1,1);
	setScrollFactor('frontcloud',1,1);
	addLuaSprite('frontcloud', false)
	
	makeLuaSprite('bigClouds', 'bg/plantroom/bigCloud',-1300,-1500);
	scaleObject('bigClouds',1.5,1.5);
	setScrollFactor('bigClouds',1,1);
	addLuaSprite('bigClouds', false)
	
	makeLuaSprite('Clouds', 'bg/plantroom/cloud 1',-1500,-1500);
	scaleObject('Clouds',1,1);
	setScrollFactor('Clouds',1,1);
	addLuaSprite('Clouds', false)
	
	makeLuaSprite('Clouds2', 'bg/plantroom/cloud 2',-1400,-1500);
	scaleObject('Clouds2',1,1);
	setScrollFactor('Clouds2',1,1);
	addLuaSprite('Clouds2', false)
	
	makeLuaSprite('Clouds3', 'bg/plantroom/cloud 3',-1300,-1500);
	scaleObject('Clouds3',1,1);
	setScrollFactor('Clouds3',1,1);
	addLuaSprite('Clouds3', false)
	
	makeLuaSprite('Clouds4', 'bg/plantroom/cloud 4',-1200,-1500);
	scaleObject('Clouds4',1,1);
	setScrollFactor('Clouds4',1,1);
	addLuaSprite('Clouds4', false)
	
	
	makeLuaSprite('BG3', 'bg/plantroom/glasses',-1225,-680);
	scaleObject('BG3',1,1);
	setScrollFactor('BG3',1,1);
	addLuaSprite('BG3', false)
	
	makeLuaSprite('BG', 'bg/plantroom/lmao',-700,100);
	scaleObject('BG',0.8,0.8);
	setScrollFactor('BG',1,1);
	addLuaSprite('BG', false)
	
	makeLuaSprite('BG5', 'bg/plantroom/what is this',0,-660);
	scaleObject('BG5',1,1);
	setScrollFactor('BG5',1,1);
	addLuaSprite('BG5', false)

    makeAnimatedLuaSprite('man', 'bg/plantroom/crew', 1100, 200);
    scaleObject('man', 1, 1);
    addAnimationByPrefix('man', 'idle', 'RHM0', 24, true);
    addLuaSprite('man', true)
  
    makeAnimatedLuaSprite('man2', 'bg/plantroom/crew3', 730, -20);
    scaleObject('man2', 1, 1);
    addAnimationByPrefix('man2', 'idle', 'tomatomongus0', 24, true);
    addLuaSprite('man2', false)
  
    makeAnimatedLuaSprite('man3', 'bg/plantroom/crew2', -260, -50);
    scaleObject('man3', 1, 1);
    addAnimationByPrefix('man3', 'idle', 'grey0', 24, true);
    addLuaSprite('man3', false)
  
  	makeAnimatedLuaSprite('man4', 'bg/plantroom/crew1', -1200, -50);
 	scaleObject('man4', 1, 1);
  	addAnimationByPrefix('man4', 'idle', 'blue0', 24, true);
    addLuaSprite('man4', true)
  
    makeLuaSprite('BG2', 'bg/plantroom/front pot',-1500,600);
	scaleObject('BG2',1,1);
	setScrollFactor('BG2',1,1);
	addLuaSprite('BG2', true)
	
	makeAnimatedLuaSprite('BG4', 'bg/plantroom/vines',-950,-1200);
	scaleObject('BG4',0.9,0.9);
	addAnimationByPrefix('BG4', 'idle', 'green0', 24, true);
	setScrollFactor('BG4',1,1);
	addLuaSprite('BG4', true)
	
	makeLuaSprite('vignette', 'bg/plantroom/lightEffects', 0, 0);
    scaleObject('vignette', 1, 1);
    setObjectCamera('vignette','hud')
    addLuaSprite('vignette', true)
    setProperty('vignette.alpha',0.5)
 
    makeLuaSprite('vignette2', 'bg/plantroom/vignette', 0, 0);
    scaleObject('vignette2', 1, 1);
    setObjectCamera('vignette2','hud')
    addLuaSprite('vignette2', true)
    setProperty('vignette2.alpha',0.5)
    
    makeAnimatedLuaSprite('hearts1', 'bg/plantroom/hearts', 0, 0);
    scaleObject('hearts1', 1, 1);
    addAnimationByPrefix('hearts1', 'idle', 'Symbol 2', 24, true);
    setObjectCamera('hearts1','hud')
    addLuaSprite('hearts1', true)
    
    makeAnimatedLuaSprite('littleheart5', 'bg/plantroom/littleheart', math.random(0, 1280), 1000);
    scaleObject('littleheart5', 2.5, 2.5);
    addAnimationByPrefix('littleheart5', 'idle', 'littleheart', 24, true);
    addLuaSprite('littleheart5', true)
    doTweenY('littleheart5Y', 'littleheart5', -1000, 6, 'cubeOut')
      
    makeAnimatedLuaSprite('littleheart4', 'bg/plantroom/littleheart', math.random(0, 1280), 1000);
    scaleObject('littleheart4', 2.5, 2.5);
    addAnimationByPrefix('littleheart4', 'idle', 'littleheart', 24, true);
    addLuaSprite('littleheart4', true)
    doTweenY('littleheart4Y', 'littleheart4', -1000, 6, 'cubeOut')
    
    makeAnimatedLuaSprite('littleheart3', 'bg/plantroom/littleheart', math.random(0, 1280), 1000);
    scaleObject('littleheart3', 2.5, 2.5);
    addAnimationByPrefix('littleheart3', 'idle', 'littleheart', 24, true);
    addLuaSprite('littleheart3', true)
    doTweenY('littleheart3Y', 'littleheart3', -1000, 6, 'cubeOut')
      
    makeAnimatedLuaSprite('littleheart2', 'bg/plantroom/littleheart', math.random(0, 1280), 1000);
    scaleObject('littleheart2', 2.5, 2.5);
    addAnimationByPrefix('littleheart2', 'idle', 'littleheart', 24, true);
    addLuaSprite('littleheart2', true)
    doTweenY('littleheart2Y', 'littleheart2', -1000, 6, 'cubeOut')

    makeAnimatedLuaSprite('littleheart1', 'bg/plantroom/littleheart', math.random(0, 1280), 1000);
    scaleObject('littleheart1', 2.5, 2.5);
    addAnimationByPrefix('littleheart1', 'idle', 'littleheart', 24, true);
    addLuaSprite('littleheart1', true)
    doTweenY('littleheart1Y', 'littleheart1', -1000, 6, 'cubeOut')
    
    setProperty('vignette.visible', false)
	setProperty('vignette2.visible', false)
	setProperty('littleheart4.visible', false)
	setProperty('littleheart5.visible', false)
	setProperty('littleheart1.visible', false)
	setProperty('littleheart2.visible', false)
	setProperty('littleheart3.visible', false)
	setProperty('hearts1.visible', false)
	
	doTweenX('CloudsTweenX','Clouds',-10000,1000,'cubeOut')
	doTweenX('Clouds2TweenX','Clouds2',-10000,1000,'cubeOut')
	doTweenX('Clouds3TweenX','Clouds3',-10000,1000,'cubeOut')
	doTweenX('Clouds4TweenX','Clouds4',-10000,1000,'cubeOut')
	doTweenX('bigCloudsTweenX','bigClouds',-10000,1000,'cubeOut')
end

function onTweenCompleted(tag)
	if tag == 'littleheart1Y' then
		setProperty('littleheart1.scale.x', 2.5)
		setProperty('littleheart1.scale.y', 2.5)
		setProperty('littleheart1.y', math.random(700, 950))
		setProperty('littleheart1.x', math.random(-000, 880))
		doTweenY('littleheart1Y', 'littleheart1', -1000, 6, 'linear')
	end
	if tag == 'littleheart2Y' then
		setProperty('littleheart2.scale.x', 2.5)
		setProperty('littleheart2.scale.y', 2.5)
		setProperty('littleheart2.y', math.random(700, 950))
		setProperty('littleheart2.x', math.random(-800, 080))
		doTweenY('littleheart2Y', 'littleheart2', -1000, 6, 'linear')
	end
	if tag == 'littleheart3Y' then
		setProperty('littleheart3.scale.x', 2.5)
		setProperty('littleheart3.scale.y', 2.5)
		setProperty('littleheart3.y', math.random(700, 950))
		setProperty('littleheart3.x', math.random(-800, 880))
		doTweenY('littleheart3Y', 'littleheart3', -1000, 6, 'linear')
	end
	if tag == 'littleheart4Y' then
		setProperty('littleheart4.scale.x', 2.5)
		setProperty('littleheart4.scale.y', 2.5)
		setProperty('littleheart4.y', math.random(700, 950))
		setProperty('littleheart4.x', math.random(-800, 880))
		doTweenY('littleheart4Y', 'littleheart4', -1000, 6, 'linear')
	end
	if tag == 'littleheart5Y' then
		setProperty('littleheart5.scale.x', 2.5)
		setProperty('littleheart5.scale.y', 2.5)
		setProperty('littleheart5.y', math.random(700, 950))
		setProperty('littleheart5.x', math.random(-800, 880))
		doTweenY('littleheart5Y', 'littleheart5', -1000, 6, 'linear')
	end
end
	
function onUpdate()
	setProperty('littleheart4.scale.x', getProperty('littleheart4.scale.x')-0.003)
	setProperty('littleheart5.scale.x', getProperty('littleheart5.scale.x')-0.003)
	setProperty('littleheart1.scale.x', getProperty('littleheart1.scale.x')-0.003)
	setProperty('littleheart2.scale.x', getProperty('littleheart2.scale.x')-0.003)
	setProperty('littleheart3.scale.x', getProperty('littleheart3.scale.x')-0.003)
	
	setProperty('littleheart4.scale.y', getProperty('littleheart4.scale.y')-0.003)
	setProperty('littleheart5.scale.y', getProperty('littleheart5.scale.y')-0.003)
	setProperty('littleheart1.scale.y', getProperty('littleheart1.scale.y')-0.003)
	setProperty('littleheart2.scale.y', getProperty('littleheart2.scale.y')-0.003)
	setProperty('littleheart3.scale.y', getProperty('littleheart3.scale.y')-0.003)
	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
    if followchars == true then
        if mustHitSection == false then
            setProperty('defaultCamZoom',0.5)
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
            setProperty('defaultCamZoom',0.5)
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

function onBeatHit()
	if songName == 'Heartbeat' then
		if (curStep > 288 and curStep < 423) or (curStep > 544 and curStep < 688) then
			if curBeat % 2 == 0 then
				setProperty('vignette2.alpha', 0.75)
				doTweenAlpha('6', 'vignette2', 0.1, (crochet/1000)*2-0.1)
			end
		end
	end
	if songName == 'Pinkwave' then
		if (curStep > 136 and curStep < 278) or (curStep > 520 and curStep < 671) or (curStep > 775 and curStep < 925) or (curStep > 1031 and curStep < 1177) or curStep > 1288 then
			if curBeat % 2 == 0 then
				setProperty('vignette2.alpha', 0.75)
				doTweenAlpha('6', 'vignette2', 0.1, (crochet/1000)*2-0.1)
			end
		end
	end
end

function onStepHit()
	if songName == 'Heartbeat' then
		if curStep == 288 then
			setProperty('vignette.visible', true)
			setProperty('vignette2.visible', true)
			setProperty('hearts1.visible', true)
			setProperty('littleheart4.visible', true)
			setProperty('littleheart5.visible', true)
			setProperty('littleheart1.visible', true)
			setProperty('littleheart2.visible', true)
			setProperty('littleheart3.visible', true)
		end
		if curStep == 423 then
			doTweenAlpha('6', 'vignette', 0, 0.6)
			doTweenAlpha('66', 'vignette2', 0, 0.6)
			doTweenAlpha('6666', 'hearts1', 0, 0.6)
			setProperty('littleheart4.visible', false)
			setProperty('littleheart5.visible', false)
			setProperty('littleheart1.visible', false)
			setProperty('littleheart2.visible', false)
			setProperty('littleheart3.visible', false)
		end
		if curStep == 544 then
			setProperty('vignette.alpha', 1)
			setProperty('vignette2.alpha', 1)
			setProperty('hearts1.alpha', 1)
			setProperty('littleheart4.visible', true)
			setProperty('littleheart5.visible', true)
			setProperty('littleheart1.visible', true)
			setProperty('littleheart2.visible', true)
			setProperty('littleheart3.visible', true)
		end	
		if curStep == 688 then
			doTweenAlpha('6', 'vignette', 0, 1.1)
			doTweenAlpha('66', 'vignette2', 0, 1.1)
			doTweenAlpha('6666', 'hearts1', 0, 1.1)
			setProperty('littleheart4.visible', false)
			setProperty('littleheart5.visible', false)
			setProperty('littleheart1.visible', false)
			setProperty('littleheart2.visible', false)
			setProperty('littleheart3.visible', false)
		end
	end
	
	if songName == 'Pinkwave' then
		if curStep == 136 then
			setProperty('vignette.visible', true)
			setProperty('vignette2.visible', true)
			setProperty('hearts1.visible', true)
			setProperty('littleheart4.visible', true)
			setProperty('littleheart5.visible', true)
			setProperty('littleheart1.visible', true)
			setProperty('littleheart2.visible', true)
			setProperty('littleheart3.visible', true)
		end
		if curStep == 278 then
			doTweenAlpha('6', 'vignette', 0, 0.6)
			doTweenAlpha('66', 'vignette2', 0, 0.6)
			doTweenAlpha('6666', 'hearts1', 0, 0.6)
			setProperty('littleheart4.visible', false)
			setProperty('littleheart5.visible', false)
			setProperty('littleheart1.visible', false)
			setProperty('littleheart2.visible', false)
			setProperty('littleheart3.visible', false)
		end
		if curStep == 520 then
			setProperty('vignette.alpha', 1)
			setProperty('vignette2.alpha', 1)
			setProperty('hearts1.alpha', 1)
			setProperty('littleheart4.visible', true)
			setProperty('littleheart5.visible', true)
			setProperty('littleheart1.visible', true)
			setProperty('littleheart2.visible', true)
			setProperty('littleheart3.visible', true)
		end	
		if curStep == 671 then
			doTweenAlpha('6', 'vignette', 0, 0.6)
			doTweenAlpha('66', 'vignette2', 0, 0.6)
			doTweenAlpha('6666', 'hearts1', 0, 0.6)
			setProperty('littleheart4.visible', false)
			setProperty('littleheart5.visible', false)
			setProperty('littleheart1.visible', false)
			setProperty('littleheart2.visible', false)
			setProperty('littleheart3.visible', false)
		end
		if curStep == 775 then
			setProperty('vignette.alpha', 1)
			setProperty('vignette2.alpha', 1)
			setProperty('hearts1.alpha', 1)
			setProperty('littleheart4.visible', true)
			setProperty('littleheart5.visible', true)
			setProperty('littleheart1.visible', true)
			setProperty('littleheart2.visible', true)
			setProperty('littleheart3.visible', true)
		end
		if curStep == 925 then
			doTweenAlpha('6', 'vignette', 0, 0.6)
			doTweenAlpha('66', 'vignette2', 0, 0.6)
			doTweenAlpha('6666', 'hearts1', 0, 0.6)
			setProperty('littleheart4.visible', false)
			setProperty('littleheart5.visible', false)
			setProperty('littleheart1.visible', false)
			setProperty('littleheart2.visible', false)
			setProperty('littleheart3.visible', false)
		end
		if curStep == 1031 then
			setProperty('vignette.alpha', 1)
			setProperty('vignette2.alpha', 1)
			setProperty('hearts1.alpha', 1)
			setProperty('littleheart4.visible', true)
			setProperty('littleheart5.visible', true)
			setProperty('littleheart1.visible', true)
			setProperty('littleheart2.visible', true)
			setProperty('littleheart3.visible', true)
		end	
		if curStep == 1177 then
			doTweenAlpha('6', 'vignette', 0, 0.6)
			doTweenAlpha('66', 'vignette2', 0, 0.6)
			doTweenAlpha('6666', 'hearts1', 0, 0.6)
			setProperty('littleheart4.visible', false)
			setProperty('littleheart5.visible', false)
			setProperty('littleheart1.visible', false)
			setProperty('littleheart2.visible', false)
			setProperty('littleheart3.visible', false)
		end
		if curStep == 1288 then
			setProperty('vignette.alpha', 1)
			setProperty('vignette2.alpha', 1)
			setProperty('hearts1.alpha', 1)
			setProperty('littleheart4.visible', true)
			setProperty('littleheart5.visible', true)
			setProperty('littleheart1.visible', true)
			setProperty('littleheart2.visible', true)
			setProperty('littleheart3.visible', true)
		end	
	end
end