function onEndSong()
	openCustomSubstate('soundTest', true)
end

local soundNames = {"Happy Town", "Meat Factory", "Trouble Dingle", "Gaster's Theme"}
local curSound = 2

function onCreate()
	setProperty('boyfriend.alpha', 0)
	
	makeLuaSprite('soundLogo', 'soundLogo', 400, 50)
	setObjectCamera('soundLogo', 'hud')
	setObjectOrder('soundLogo', 0)
	addLuaSprite('soundLogo', false)
	
	makeLuaSprite('arrowLeft', 'soundArrow', 200, 300)
	setObjectCamera('arrowLeft', 'hud')
		setObjectOrder('soundLogo', 0)
	addLuaSprite('arrowLeft', false)
	
	makeLuaSprite('arrowRight', 'soundArrow', 1000, 300)
	setObjectCamera('arrowRight', 'hud')
	setProperty('arrowRight.flipX', true)
	setObjectOrder('soundLogo', 0)
	addLuaSprite('arrowRight', false)
	
	makeLuaText('soundNameText', soundNames[curSound], 500, 400, 300)
	setTextFont('soundNameText', 'sans.otf')
	setObjectCamera('soundNameText', 'hud')
	setTextSize('soundNameText', 40)
	setObjectOrder('soundLogo', 0)
	addLuaText('soundNameText')
end

function onCustomSubstateUpdate(name, elapsed)
	if name == 'soundTest' then
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

function onCustomSubstateCreate(name)
	if name == 'soundTest' then
		noteTweenAlpha('soundNoteTween1', 4, 0, 0.2, 'linear')
		noteTweenAlpha('soundNoteTween2', 5, 0, 0.2, 'linear')
		noteTweenAlpha('soundNoteTween3', 6, 0, 0.2, 'linear')
		noteTweenAlpha('soundNoteTween4', 7, 0, 0.2, 'linear')
end
end

function onUpdate()
		setProperty('newHealth.alpha', 0)
		setProperty('healthRed.alpha', 0)
		setProperty('healthYellow.alpha', 0)
		setProperty('healthPurple.alpha', 0)
		setProperty('accText.alpha', 0)
		setProperty('healthText.alpha', 0)
		setProperty('levelText.alpha', 0)
		setProperty('timeText.alpha', 0)
		setProperty('songNameText.alpha', 0)
		setProperty('timeButton.alpha', 0)
		setProperty('timeBar.alpha', 0)
		setProperty('timeBarBG.alpha', 0)
		setProperty('showRating', false)
		setProperty('showComboNum', false)		
end

function onCountdownTick(counter)
     setProperty('countdownReady.visible', 0)
     setProperty('countdownSet.visible', 0)
     setProperty('countdownGo.visible', 0)
end