function onStartCountdown()
	return Function_Stop
end

local soundNames = {"Happy Town", "Meat Factory", "Trouble Dingle", "Gaster's Theme"}
local curSound = 1
local canSelectSound = false

function onCreate()
	setProperty('camGame.alpha', 0)
	setProperty('camHUD.alpha', 0)
	
	makeLuaSprite('soundTest', 'soundTest', 350, 50)
	setObjectCamera('soundTest', 'other')
	addLuaSprite('soundTest', true)
	
	makeLuaSprite('soundLogo', 'soundLogo', 400, 50)
	setObjectCamera('soundLogo', 'other')
	setProperty('soundLogo.alpha', 0)
	addLuaSprite('soundLogo', true)
	
	makeLuaSprite('arrowLeft', 'soundArrow', 200, 300)
	setObjectCamera('arrowLeft', 'other')
	setProperty('arrowLeft.alpha', 0)
	addLuaSprite('arrowLeft', true)
	
	makeLuaSprite('arrowRight', 'soundArrow', 1000, 300)
	setObjectCamera('arrowRight', 'other')
	setProperty('arrowRight.flipX', true)
	setProperty('arrowRight.alpha', 0)
	addLuaSprite('arrowRight', true)
	
	makeLuaText('soundNameText', "Gaster's Theme", 500, 400, 300)
	setTextFont('soundNameText', 'sans.otf')
	setObjectCamera('soundNameText', 'other')
	setTextSize('soundNameText', 40)
	setProperty('soundNameText.alpha', 0)
	addLuaText('soundNameText')

	runTimer('soundTimer', 2, 1)	
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'soundTimer' then
		setProperty('soundTest.alpha', 0)
		setProperty('arrowLeft.alpha', 1)
		setProperty('arrowRight.alpha', 1)
		setProperty('soundLogo.alpha', 1)
		setProperty('soundNameText.alpha', 1)
		canSelectSound = true
end
end

function onUpdate()
	if canSelectSound == true then
	if keyboardJustPressed('RIGHT') and curSound < 4 then
		curSound = curSound + 1
	elseif keyboardJustPressed('LEFT') and curSound > 1 then
		curSound = curSound - 1
end
	if keyJustPressed('accept') then
		loadSong(soundNames[curSound])
end
		setTextString('soundNameText', soundNames[curSound])
end
end