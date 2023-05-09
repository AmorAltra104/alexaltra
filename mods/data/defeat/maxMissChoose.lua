yourMaxMiss = 5
maxMissNum = 5
inChoose = true
local allowCountdown = false

function onCreatePost()
	makeLuaSprite('back', nil, 0, 0);
    makeGraphic('back', 1280, 720, '000000');
    setObjectCamera('back', 'other');
    addLuaSprite('back', true);
    
    makeLuaSprite('max5', 'bg/defeat/dummypostor1', 150, 450);
    setObjectCamera('max5', 'other');
    addLuaSprite('max5', true);
    
    makeLuaSprite('max4', 'bg/defeat/dummypostor1', 325, 450);
    setObjectCamera('max4', 'other');
    addLuaSprite('max4', true);
    
    makeLuaSprite('max3', 'bg/defeat/dummypostor3', 500, 480);
    setObjectCamera('max3', 'other');
    addLuaSprite('max3', true);
    
    makeLuaSprite('max2', 'bg/defeat/dummypostor3', 675, 480);
    setObjectCamera('max2', 'other');
    addLuaSprite('max2', true);
    
    makeLuaSprite('max1', 'bg/defeat/dummypostor5', 825, 500);
    setObjectCamera('max1', 'other');
    addLuaSprite('max1', true);
    
    makeLuaSprite('max0', 'bg/defeat/dummypostor5', 1000, 500);
    setObjectCamera('max0', 'other');
    addLuaSprite('max0', true);
    
    makeLuaSprite('arrow', 'bg/defeat/arrow', 1000, 400);
    setObjectCamera('arrow', 'other');
    addLuaSprite('arrow', true);
    
    makeAnimatedLuaSprite('leftPad', 'android/virtualpad', 0, 593)
	setObjectCamera('leftPad', 'other')
	addLuaSprite('leftPad', true)
	addAnimationByPrefix('leftPad', 'left', 'left', 24, false)
		
	makeAnimatedLuaSprite('rightPad', 'android/virtualpad', 132, 593)
	setObjectCamera('rightPad', 'other')
	addLuaSprite('rightPad', true)
	addAnimationByPrefix('rightPad', 'right', 'right', 24, false)
		
	makeAnimatedLuaSprite('aPad', 'android/virtualpad', 1148, 593)
	setObjectCamera('aPad', 'other')
	addLuaSprite('aPad', true)
	addAnimationByPrefix('aPad', 'a', 'a', 24, false)
    
    makeLuaText('maxText', yourMaxMiss..'/5 COMBO BREAKS', 0, 150, 150)
	setObjectCamera('maxText', 'other')
	setTextSize('maxText', 100)
	setTextColor('maxText', 'FF0000')
	addLuaText('maxText')
end

function onUpdate()
	setTextString('maxText', yourMaxMiss..'/5 COMBO BREAKS')
	if keyJustPressed('right') or ((getMouseY('camHUD') > 593 and getMouseY('camHUD') < 720) and (getMouseX('camHUD') > 132 and getMouseX('camHUD') < 264) and mouseClicked('left')) then
	if inChoose then
		if yourMaxMiss > 0 then
        	yourMaxMiss = yourMaxMiss - 1
    	else
        	yourMaxMiss = maxMissNum
    	end
    end
    end
    
    if keyJustPressed('left') or ((getMouseY('camHUD') > 593 and getMouseY('camHUD') < 720) and (getMouseX('camHUD') > 0 and getMouseX('camHUD') < 132) and mouseClicked('left')) then
    if inChoose then
    	if yourMaxMiss < maxMissNum then
        	yourMaxMiss = yourMaxMiss + 1
    	else
        	yourMaxMiss = 0
   	 	end
    end
    end
    
    if keyJustPressed('space') or ((getMouseY('camHUD') > 593 and getMouseY('camHUD') < 720) and (getMouseX('camHUD') > 1148 and getMouseX('camHUD') < 1280) and mouseClicked('left')) then
    if inChoose then
    	playSound('amongkill', 1)
    	setProperty('max0.visible', false)
    	setProperty('max1.visible', false)
    	setProperty('max2.visible', false)
    	setProperty('max3.visible', false)
    	setProperty('max4.visible', false)
    	setProperty('max5.visible', false)
    	setProperty('maxText.visible', false)
    	setProperty('rightPad.visible', false)
    	setProperty('leftPad.visible', false)
    	setProperty('aPad.visible', false)
    	setProperty('arrow.visible', false)
    	inChoose = false
    	runTimer('start', 1.5)
    end
    end
    
    setProperty('arrow.x', getProperty('max'..yourMaxMiss..'.x'))
    
    local acc = rating * 100
    
    if dadName == 'black' then
    	setTextColor('NewScoreTxt', 'FF0000')
    	setTextSize('NewScoreTxt', 23)
    	setProperty('NewScoreTxt.scale.x', getProperty('scoreTxt.scale.x'))
    	setProperty('NewScoreTxt.scale.y', getProperty('scoreTxt.scale.y'))
    	setProperty('NewScoreTxt.y', getProperty('scoreTxt.y'))
    	if hits > 0 then
        	setTextString('NewScoreTxt', 'Score: ' .. score .. ' | Combo Breaks: '..getProperty('songMisses')..' / '..yourMaxMiss..' | Accuracy: ' .. math.floor(acc * 100) / 100 .. '% ['..ratingFC..']')
    	else
        	setTextString('NewScoreTxt', 'Score: 0 | combo Breaks: '..getProperty('songMisses')..' / '..yourMaxMiss..' | Accurary: 0%')
    	end
    elseif dadName == 'blackold' then
    	setTextColor('NewScoreTxt', 'FFFFFF')
    	setTextSize('NewScoreTxt', 20)
    	setProperty('NewScoreTxt.y', 100)
    	if downscroll then
        setProperty('NewScoreTxt.y', 670)
        end
    	if hits > 0 then
        	setTextString('NewScoreTxt', 'Score: ' .. score .. ' | Combo Breaks: '..getProperty('songMisses')..' | Accuracy: ' .. math.floor(acc * 100) / 100 .. '% | ('..ratingFC..') AAAAA')
    	else
        	setTextString('NewScoreTxt', 'Score: 0 | combo Breaks: '..getProperty('songMisses')..' | Accurary: 0% | ('..ratingFC..') AAAAA')
    	end
    end
end

function onStartCountdown()
	if not allowCountdown then
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end

function onTimerCompleted(tag)
	if tag == 'start' then
		startCountdown()
		setProperty('back.visible', false)
	end
end

function onUpdatePost()
	if getProperty('songMisses') > yourMaxMiss then
		setProperty('health', -1)
	else
		setProperty('health', 1)
	end
end