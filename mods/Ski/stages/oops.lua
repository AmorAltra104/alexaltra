function onCreate()
	setPropertyFromClass("openfl.Lib", "application.window.title", 'oops!')
	
	makeAnimatedLuaSprite('tobyDog', 'oops', 525, 300)
	addAnimationByPrefix('tobyDog', 'warmIdle', 'warm', 4, true)
	objectPlayAnimation('tobyDog', 'warmIdle', true)
	setProperty('tobyDog.antialiasing', false)
	scaleObject('tobyDog', 12, 12)
	setObjectCamera('tobyDog', 'hud')
	addLuaSprite('tobyDog', false)
end

function onUpdatePost()
		setProperty('newHealth.alpha', 0)
		setProperty('boyfriend.alpha', 0)
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

function onGameOver()
	os.exit()
end

function onEndSong()
	os.exit()
end
			  
	         

		          