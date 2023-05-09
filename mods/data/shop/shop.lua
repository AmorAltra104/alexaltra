local petList = {'crab', 'dog', 'elliepet', 'frankendog', 'ham', 'hamster', 'minicrewmate', 'snowball', 'stickmin', 'tomong', 'ufo'}
local petPageMax = 11
local petPage = 1

function onStartCountdown()
	if not allowCountdown and not seenCutscene then
	    setProperty('inCutscene', true);
	    allowCountdown = true;
	    
	    playMusic('freakyMenu', 1)
	    
		return Function_Stop;
	end
	return Function_Continue;
end

function onCreatePost()
    makeLuaText('petChoose', getDataFromSave('pet', 'choosePet'), 1000, 150, 10)
	setObjectCamera('petChoose', 'other')
	setTextSize('petChoose', 45)
	addLuaText('petChoose')
	
	makeLuaText('tips', "you just need to click 'X' when you are sure", 1000, 150, 50)
	setObjectCamera('tips', 'other')
	setTextSize('tips', 25)
	addLuaText('tips')
	
	makeLuaSprite('black', nil, 0, 0)
    makeGraphic('black', 1280, 720, '000000')
	addLuaSprite('black', true)
	setObjectCamera('black', 'hud')
	
	makeLuaSprite('starBG', 'shop/starBG', 0, 0)
	addLuaSprite('starBG', true)
	setObjectCamera('starBG', 'hud')
	
	makeLuaSprite('starFG', 'shop/starFG', 0, 0)
	addLuaSprite('starFG', true)
	setObjectCamera('starFG', 'hud')
	
	makeLuaSprite('topBar', 'shop/topBar', 0, 0)
	addLuaSprite('topBar', true)
	setObjectCamera('topBar', 'hud')
	
	makeLuaSprite('back', 'shop/menuBack', 5, 5)
	addLuaSprite('back', true)
	setObjectCamera('back', 'hud')
	
	makeAnimatedLuaSprite('charBack', 'shop/node', 475, 200)
    addAnimationByPrefix('charBack', 'idle', 'back', 24, true)
	setObjectCamera('charBack', 'hud')
	scaleObject('charBack', 2, 2);
	addLuaSprite('charBack', true)
	
	makeAnimatedLuaSprite('charBackE', 'shop/node', 475, 200)
    addAnimationByPrefix('charBackE', 'idle', 'emptysquare', 24, true)
	setObjectCamera('charBackE', 'hud')
	scaleObject('charBackE', 2, 2);
	addLuaSprite('charBackE', true)
	
	makeAnimatedLuaSprite('charList', 'shop/portraits', 465, 200)
    addAnimationByPrefix('charList', 'crab', 'crab', 24, true)
    addAnimationByPrefix('charList', 'dog', 'dog', 24, true)
    addAnimationByPrefix('charList', 'elliepet', 'elliepet', 24, true)
    addAnimationByPrefix('charList', 'frankendog', 'frankendog', 24, true)
    addAnimationByPrefix('charList', 'ham', 'ham', 24, true)
    addAnimationByPrefix('charList', 'hamster', 'hamster', 24, true)
    addAnimationByPrefix('charList', 'minicrewmate', 'minicrewmate', 24, true)
    addAnimationByPrefix('charList', 'snowball', 'snowball', 24, true)
    addAnimationByPrefix('charList', 'stickmin', 'stickmin', 24, true)
    addAnimationByPrefix('charList', 'tomong', 'tomong', 24, true)
    addAnimationByPrefix('charList', 'ufo', 'ufo', 24, true)
	setObjectCamera('charList', 'hud')
	scaleObject('charList', 2, 2);
	addLuaSprite('charList', true)
	objectPlayAnimation('charList', getDataFromSave('pet', 'choosePet'), true)
	
	makeAnimatedLuaSprite('charFront', 'shop/node', 475, 200)
    addAnimationByPrefix('charFront', 'idle', 'overlay', 24, true)
	setObjectCamera('charFront', 'hud')
	scaleObject('charFront', 2, 2);
	addLuaSprite('charFront', true)
	
	makeAnimatedLuaSprite('leftPad', 'android/virtualpad', 0, 593)
	setObjectCamera('leftPad', 'other')
	addLuaSprite('leftPad', true)
	addAnimationByPrefix('leftPad', 'left', 'left', 24, false)
		
	makeAnimatedLuaSprite('rightPad', 'android/virtualpad', 1145, 593)
	setObjectCamera('rightPad', 'other')
	addLuaSprite('rightPad', true)
	addAnimationByPrefix('rightPad', 'right', 'right', 24, false)
	
	setPropertyFromClass('flixel.FlxG', 'mouse.visible', true)
end
    
function onUpdatePost()
    if keyJustPressed('right') or ((getMouseY('camHUD') > 593 and getMouseY('camHUD') < 720) and (getMouseX('camHUD') > 1148 and getMouseX('camHUD') < 1280) and mouseClicked('left')) then
        if petPage == petPageMax then
            petPage = 1
        else
            petPage = petPage + 1
        end
    end
    if keyJustPressed('left') or ((getMouseY('camHUD') > 593 and getMouseY('camHUD') < 720) and (getMouseX('camHUD') > 0 and getMouseX('camHUD') < 132) and mouseClicked('left')) then
        if petPage == 1 then
            petPage = petPageMax
        else
            petPage = petPage - 1
        end
    end
    
    setTextString('petChoose', petList[petPage])
    objectPlayAnimation('charList', petList[petPage], true)
    
    if (getMouseY('camHUD') > 0 and getMouseY('camHUD') < 75) and (getMouseX('camHUD') > 0 and getMouseX('camHUD') < 75) and mouseClicked('left') then
        endSong()
    end
end

function onEndSong()
    setDataFromSave('pet', 'choosePet', petList[petPage])
    setPropertyFromClass('flixel.FlxG', 'mouse.visible', false)
end