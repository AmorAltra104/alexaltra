function onCreate()	
	makeLuaSprite('room', 'labAmalgam', -700, -550)
    setProperty('room.antialiasing', false)
	scaleObject('room', 10, 10)
	addLuaSprite('room', false)
	
	makeAnimatedLuaSprite('amalgamFriends', 'amalgams', 600, 350)
	addAnimationByPrefix('amalgamFriends', 'bounce', 'bounce', 24, false)
	scaleObject('amalgamFriends', 10, 10)
	setProperty('amalgamFriends.antialiasing', false)
	setProperty('amalgamFriends.alpha', 0)
	addLuaSprite('amalgamFriends', false)
	
	makeAnimatedLuaSprite('amalgamFriends1', 'amalgams', 150, 400)
	addAnimationByPrefix('amalgamFriends1', 'bounce', 'bounce', 24, false)
	scaleObject('amalgamFriends1', 10, 10)
	setProperty('amalgamFriends1.antialiasing', false)
    setProperty('amalgamFriends1.alpha', 0)	
	addLuaSprite('amalgamFriends1', false)
	
	makeAnimatedLuaSprite('amalgamFriends2', 'amalgams', -250, 600)
	addAnimationByPrefix('amalgamFriends2', 'bounce', 'bounce', 24, false)
	scaleObject('amalgamFriends2', 10, 10)
	setProperty('amalgamFriends2.antialiasing', false)
	setProperty('amalgamFriends2.alpha', 0)
	addLuaSprite('amalgamFriends2', false)
	
	makeAnimatedLuaSprite('amalgamFriends3', 'amalgams', 1050, 400)
	addAnimationByPrefix('amalgamFriends3', 'bounce', 'bounce', 24, false)
	scaleObject('amalgamFriends3', 10, 10)
	setProperty('amalgamFriends3.antialiasing', false)
	setProperty('amalgamFriends3.alpha', 0)
	addLuaSprite('amalgamFriends3', false)
	
	makeAnimatedLuaSprite('amalgamFriends4', 'amalgams', 1500, 600)
	addAnimationByPrefix('amalgamFriends4', 'bounce', 'bounce', 24, false)
	scaleObject('amalgamFriends4', 10, 10)
	setProperty('amalgamFriends4.antialiasing', false)
	setProperty('amalgamFriends4.alpha', 0)
	addLuaSprite('amalgamFriends4', false)
end

function onBeatHit()
			objectPlayAnimation('amalgamFriends', 'bounce', false)		
			objectPlayAnimation('amalgamFriends1', 'bounce', false)		
			objectPlayAnimation('amalgamFriends2', 'bounce', false)		
			objectPlayAnimation('amalgamFriends3', 'bounce', false)		
			objectPlayAnimation('amalgamFriends4', 'bounce', false)		
end

function onStepHit()
		if curStep == 128 then
		        onAmalgamsAppear()
		elseif curStep == 512 then
		        onAmalgamsDissapear()
		elseif curStep == 1023 then
		        onAmalgamsAppear()
		elseif curStep == 1407 then
		        onAmalgamsDissapear()
		elseif curStep == 1791 then
		        onAmalgamsAppear()
end
end

function onAmalgamsAppear()
				doTweenAlpha('amalgamTween1Alpha', 'amalgamFriends', 1, 0.3, 'linear')
				doTweenAlpha('amalgamTween2Alpha', 'amalgamFriends1', 1, 0.3, 'linear')
				doTweenAlpha('amalgamTween3Alpha', 'amalgamFriends2', 1, 0.3, 'linear')
				doTweenAlpha('amalgamTween4Alpha', 'amalgamFriends3', 1, 0.3, 'linear')
				doTweenAlpha('amalgamTween5Alpha', 'amalgamFriends4', 1, 0.3, 'linear')
end

function onAmalgamsDissapear()
				doTweenAlpha('amalgamTween1Alpha', 'amalgamFriends', 0, 0.3, 'linear')
				doTweenAlpha('amalgamTween2Alpha', 'amalgamFriends1', 0, 0.3, 'linear')
				doTweenAlpha('amalgamTween3Alpha', 'amalgamFriends2', 0, 0.3, 'linear')
				doTweenAlpha('amalgamTween4Alpha', 'amalgamFriends3', 0, 0.3, 'linear')
				doTweenAlpha('amalgamTween5Alpha', 'amalgamFriends4', 0, 0.3, 'linear')
end
            
			  
	         

		      
		          
		          
		          