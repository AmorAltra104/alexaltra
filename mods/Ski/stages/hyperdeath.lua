local trailColors = {'FF0000', 'FF6A00', 'FFFF00', '00FF00', '0000FF', 'FF00FF'}
local curTrail = 1
local canShockerBG = false

function onCreate()	
	addHaxeLibrary('MP4Handler','vlc')
	addHaxeLibrary('Event','openfl.events')
	
	originalWindowY = getPropertyFromClass("openfl.Lib", "application.window.y")
	
	runTimer('colorTrailTimer', 0.1, 0)
	makeLuaSprite('videoSprite','', 0, 300)
	scaleObject('videoSprite', 5, 5)
	setProperty('videoSprite.antialiasing', false)
	setProperty('videoSprite.alpha', 0)
	addLuaSprite('videoSprite', false)
	
	makeLuaSprite('stars', 'stars', 0, -720)
	setObjectCamera('stars', 'hud')
	addLuaSprite('stars', false)
	setProperty('stars.alpha', 0)
	doTweenX('starsTweenX', 'stars', -1280, 2, 'linear')
	doTweenY('starsTweenY', 'stars', 0, 2, 'linear')
	
	makeLuaSprite('platform', 'platform', 500, 1120)
	scaleObject('platform', 8, 8)
	setProperty('platform.antialiasing', false)
	addLuaSprite('platform', false)
	
		runHaxeCode([[
		var filepath = Paths.video('rainbow');
		var video = new MP4Handler();
		video.playVideo(filepath);
		video.visible = false;
		setVar('video',video);
		FlxG.stage.removeEventListener('enterFrame', video.update); 
		]])
		runTimer('rainbowTimer', 93, 1)
end

function onUpdatePost()
	runHaxeCode([[
		var video = getVar('video');
		game.getLuaObject('videoSprite').loadGraphic(video.bitmapData);
		video.volume = FlxG.sound.volume + 0.4;
		if(game.paused)video.pause();
		]])
end


function onResume()
	runHaxeCode([[
		var video = getVar('video');
		video.resume();
		]])
end

local rotInd = 0
local canFly = false
local canWindow = false

function onUpdate()
		triggerEvent('Change FlxTrail Color', trailColors[curTrail], trailColors[curTrail])
	if canFly == true then
	if difficultyName == "Normal" then
	if canWindow == true then
		rotInd = rotInd + 3
		rot = rotInd / 60
	elseif canWindow == false then
		rotInd = rotInd + 3
		rot = rotInd / 30
end
end
	if difficultyName ~= "Normal" then
	if canWindow == true then
		rotInd = rotInd + 3
		rot = rotInd / 30
	elseif canWindow == false then
		rotInd = rotInd + 3
		rot = rotInd / 30
end
end

		setProperty('boyfriend.x', getProperty('BF_X') + math.cos(rot / 5) * 500)
		setProperty('boyfriend.y', getProperty('BF_Y') + math.cos(rot / 3) * 500)
		
		triggerEvent('Camera Follow Pos', getProperty('boyfriend.x') + 200, getProperty('boyfriend.y') + 200)
end
	if canWindow == true and difficultyName == "Normal" then
		songPos = getSongPosition()
		local currentBeat = (songPos/5000)*(curBpm/60)
		setPropertyFromClass("openfl.Lib", "application.window.y", 100 - 150*math.sin((currentBeat+12*12)*math.pi)) 
end
end

function onStepHit()
	if curStep == 256 then
			cameraFlash('other', 'FFFFFF', 0.5, true)
			canFly = true
			canWindow = true
			setProperty('videoSprite.alpha', 1)
			setProperty('platform.alpha', 0)
			setProperty('stars.alpha', 1)
			canShockerBG = true
end
	if curStep == 512 then
			cameraFlash('other', 'FFFFFF', 0.5, true)
			setProperty('stars.alpha', 0)
			canWindow = false
			setPropertyFromClass("openfl.Lib", "application.window.y", originalWindowY)
end
	if curStep == 768 then
			cameraFlash('other', 'FFFFFF', 0.5, true)
			setProperty('stars.alpha', 1)
			canWindow = true
end
	if curStep == 1024 then
			cameraFlash('other', 'FFFFFF', 0.5, true)
			setProperty('stars.alpha', 0)
			canWindow = false
			setPropertyFromClass("openfl.Lib", "application.window.y", originalWindowY)
end
	if curStep == 1280 then
			canWindow = true
			cameraFlash('other', 'FFFFFF', 0.5, true)
			setProperty('stars.alpha', 1)
end
	if curStep == 1536 then
			cameraFlash('other', 'FFFFFF', 0.5, true)
			canFly = false
			canWindow = false
			setPropertyFromClass("openfl.Lib", "application.window.y", originalWindowY)
			triggerEvent('Camera Follow Pos', '', '')
			setProperty('videoSprite.alpha', 0)
			setProperty('stars.alpha', 0)
			canShockerBG = false
end
	if curStep == 1664 then
			cameraFlash('other', 'FFFFFF', 0.5, true)
			canFly = true
			canWindow = true
			setProperty('videoSprite.alpha', 1)
			setProperty('platform.alpha', 0)
			setProperty('stars.alpha', 1)
			canShockerBG = true
end	
	if curStep == 1916 then
			canWindow = false
			setPropertyFromClass("openfl.Lib", "application.window.y", originalWindowY)
			cameraFlash('other', 'FFFFFF', 0.5, true)
			setProperty('stars.alpha', 0)
end
	if curStep == 1984 then
			canWindow = true
			cameraFlash('other', 'FFFFFF', 0.5, true)
			setProperty('stars.alpha', 1)
end
	if curStep == 2009 then
			canWindow = false
			setPropertyFromClass("openfl.Lib", "application.window.y", originalWindowY)
			cameraFlash('other', 'FFFFFF', 0.5, true)
			setProperty('stars.alpha', 0)
			canShockerBG = false
end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'colorTrailTimer' then
	if curTrail ~= 7 then
		curTrail = curTrail + 1
	else
		curTrail = 1
end
end
	if tag == 'rainbowTimer' then
		runHaxeCode([[
		var filepath = Paths.video('rainbow');
		var video = new MP4Handler();
		video.playVideo(filepath);
		video.visible = false;
		setVar('video',video);
		FlxG.stage.removeEventListener('enterFrame', video.update); 
		]])
end
end

function onTweenCompleted(tag)
		if tag == 'starsTweenX' then
			setProperty('stars.x', 0)
			setProperty('stars.y', -720)
			doTweenX('starsTweenX', 'stars', -1280, 2, 'linear')
			doTweenY('starsTweenY', 'stars', 0, 2, 'linear')
end
end

local beatBG = 1

function onBeatHit()
	if canShockerBG == true then
	if beatBG == 1 or beatBG == 3 then
		makeLuaSprite('shockerBG', 'shocker', getRandomInt(-750, 1500), -400)
		setProperty('shockerBG.antialiasing', false)
		scaleObject('shockerBG', 10, 10)
		setProperty('shockerBG.alpha', 1)
		doTweenColor('shockerBGTweenColor', 'shockerBG', trailColors[getRandomInt(1, 6)], 0.001, 'linear')
		addLuaSprite('shockerBG', true)
		doTweenAlpha('shockerBGTweenAlpha', 'shockerBG', 0, 0.2, 'linear')
end
	if beatBG < 4 then
		beatBG = beatBG + 1
	else
		beatBG = 1
end
end
end
			  
	         

		          