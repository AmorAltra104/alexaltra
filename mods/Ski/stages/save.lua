local trailColors = {'FF0000', 'FF6A00', 'FFFF00', '00FF00', '0000FF', 'FF00FF'}
local curTrail = 1
local canShockerBG = true
local canFly = true
local rotInd = 0

local colorInt = 0
local arrowNum = 1

local arrowColors = {
'red',
'orange',
'yellow', 
'green',
'cyan',
'blue',
'purple',
}

function onCreate()	
	addHaxeLibrary('MP4Handler','vlc')
	addHaxeLibrary('Event','openfl.events')
	triggerEvent('Toggle FlxTrail', 'on', 'on')
	
	runTimer('colorTrailTimer', 0.1, 0)
	makeLuaSprite('videoSprite','', 0, 300)
	scaleObject('videoSprite', 5, 5)
	setProperty('videoSprite.antialiasing', false)
	setProperty('videoSprite.alpha', 1)
	addLuaSprite('videoSprite', false)
	
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

function goodNoteHit(id, noteData, noteType, isSustainNote)
			setPropertyFromGroup('playerStrums', noteData, 'texture', getPropertyFromGroup('notes', id, 'texture'))
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

function onUpdate()
		triggerEvent('Change FlxTrail Color', trailColors[curTrail], trailColors[curTrail])
	if canFly == true then
		rotInd = rotInd + 3
		rot = rotInd / 30
end

		setProperty('boyfriend.x', getProperty('BF_X') + math.cos(rot / 5) * 500)
		setProperty('boyfriend.y', getProperty('BF_Y') + math.cos(rot / 3) * 500)
		
		setProperty('room.x', getProperty('boyfriend.x') - 1300)
		setProperty('room.y', getProperty('boyfriend.y') - 1000)
		
		triggerEvent('Camera Follow Pos', getProperty('boyfriend.x') + 200, getProperty('boyfriend.y') + 200)
end

function onStepHit()
		if curStep == 512 then
			canFly = false
			canShockerBG = false
			cameraFlash('hud', 'FFFFFF', 0.5, true)
			makeLuaSprite('room', 'SAVE/1', 0, 300)
			scaleObject('room', 10, 10)
			setProperty('room.antialiasing', false)
			setProperty('room.alpha', 0)
			addLuaSprite('room', false)
			setProperty('room.alpha', 1)
		elseif curStep == 544 then
			cameraFlash('hud', 'FFFFFF', 0.5, true)
			makeLuaSprite('room', 'SAVE/2', 0, 300)
			scaleObject('room', 10, 10)
			setProperty('room.antialiasing', false)
			setProperty('room.alpha', 0)
			addLuaSprite('room', false)
			setProperty('room.alpha', 1)
		elseif curStep == 576 then
			cameraFlash('hud', 'FFFFFF', 0.5, true)
			makeLuaSprite('room', 'SAVE/3', 0, 300)
			scaleObject('room', 10, 10)
			setProperty('room.antialiasing', false)
			setProperty('room.alpha', 0)
			addLuaSprite('room', false)
			setProperty('room.alpha', 1)
		elseif curStep == 608 then
			cameraFlash('hud', 'FFFFFF', 0.5, true)
			makeLuaSprite('room', 'SAVE/4', 0, 300)
			scaleObject('room', 10, 10)
			setProperty('room.antialiasing', false)
			setProperty('room.alpha', 0)
			addLuaSprite('room', false)
			setProperty('room.alpha', 1)
		elseif curStep == 640 then
			cameraFlash('hud', 'FFFFFF', 0.5, true)
			removeLuaSprite('room', true)
			canFly = true
			canShockerBG = true
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

function onCreatePost()
		triggerEvent('Toggle FlxTrail', 'on', 'on')
	for i= 0, getProperty('unspawnNotes.length')-1 do
            if getPropertyFromGroup('unspawnNotes', i, 'mustPress') and getPropertyFromGroup('unspawnNotes', i, 'isSustainNote') == false then
					  arrowNum = arrowNum + 1
				if arrowNum > 7 then
					  arrowNum = 1
end
end
				if getPropertyFromGroup('unspawnNotes', i, 'noteType') == '' then 
				      setPropertyFromGroup('unspawnNotes', i, 'texture', 'Note Skins/' .. arrowColors[arrowNum])
				      setPropertyFromGroup('unspawnNotes', i, 'noteSplashTexture', 'Note Skins/' .. arrowColors[arrowNum] .. 'Splash')
end
end
end

function onTweenCompleted(tag)
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
			  
	         

		          