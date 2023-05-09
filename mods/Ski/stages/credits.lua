function onCreate()
	addCharacterToList("ski-smaller", 'boyfriend')

	makeLuaSprite('videoSprite','', -300, -180)
	scaleObject('videoSprite', 0.67, 0.67)
	setProperty('videoSprite.antialiasing', false)
	setObjectCamera('videoSprite', 'hud')
	addLuaSprite('videoSprite', false)
	
	makeLuaSprite('logo', 'Guys/logo', 0, 0)
	scaleObject('logo', 1, 1)
	setProperty('logo.antialiasing', false)
	setObjectCamera('logo', 'hud')
	setProperty('logo.alpha', 0)
	addLuaSprite('logo', false)
	
	makeLuaSprite('city', 'Guys/city', 0, 0)
	scaleObject('city', 1, 1)
	setProperty('city.antialiasing', false)
	setObjectCamera('city', 'hud')
	addLuaSprite('city', false)
	setProperty('city.alpha', 0)
	doTweenX('cityTweenX', 'city', -2500, 60, 'linear')
	
	makeLuaSprite('road', 'Guys/road', 0, 0)
	scaleObject('road', 1, 1)
	setProperty('road.antialiasing', false)
	setObjectCamera('road', 'hud')
	addLuaSprite('road', false)
	setProperty('road.alpha', 0)
	doTweenX('roadTweenX', 'road', -1280, 2, 'linear')
	
	makeLuaSprite('carBack', 'Guys/carBack', -500, 400)
	scaleObject('carBack', 5, 5)
	setProperty('carBack.antialiasing', false)
	setObjectCamera('carBack', 'hud')
	setProperty('carBack.alpha', 0)
	addLuaSprite('carBack', false)
	
	makeLuaSprite('carFront', 'Guys/carFront', -500, 400)
	scaleObject('carFront', 5, 5)
	setProperty('carFront.antialiasing', false)
	setObjectCamera('carFront', 'hud')
	setProperty('carFront.alpha', 0)
	addLuaSprite('carFront', true)
	
	makeLuaSprite('beach', 'Guys/beach', 0, 0)
	scaleObject('beach', 1, 1)
	setProperty('beach.antialiasing', false)
	setObjectCamera('beach', 'hud')
	setProperty('beach.alpha', 0)
	addLuaSprite('beach', false)
	
	makeLuaSprite('stage', 'Guys/stage', 0, 0)
	scaleObject('stage', 1, 1)
	setProperty('stage.antialiasing', false)
	setObjectCamera('stage', 'hud')
	setProperty('stage.alpha', 0)
	addLuaSprite('stage', false)
	
	makeLuaSprite('curtain1', 'Guys/stageCurtain', 640, 0)
	scaleObject('curtain1', 1, 1)
	setProperty('curtain1.antialiasing', false)
	setObjectCamera('curtain1', 'hud')
	setProperty('curtain1.alpha', 0)
	addLuaSprite('curtain1', true)
	
	makeLuaSprite('curtain2', 'Guys/stageCurtain', -640, 0)
	scaleObject('curtain2', 1, 1)
	setProperty('curtain2.antialiasing', false)
	setObjectCamera('curtain2', 'hud')
	setProperty('curtain2.alpha', 0)
	addLuaSprite('curtain2', true)
	
	makeLuaSprite('beams', 'Guys/stageBeam', 0, 0)
	scaleObject('beams', 1, 1)
	setProperty('beams.antialiasing', false)
	setObjectCamera('beams', 'hud')
	setProperty('beams.alpha', 0)
	addLuaSprite('beams', true)
	
	makeLuaSprite('school', 'Guys/school', 0, -560)
	scaleObject('school', 1, 1)
	setProperty('school.antialiasing', false)
	setObjectCamera('school', 'hud')
	setProperty('school.alpha', 0)
	addLuaSprite('school', false)
	
	makeLuaSprite('mountain1', 'Guys/ebottGreen', 0, 0)
	scaleObject('mountain1', 1, 1)
	setProperty('mountain1.antialiasing', false)
	setObjectCamera('mountain1', 'hud')
	setProperty('mountain1.alpha', 0)
	addLuaSprite('mountain1', false)
	
	makeLuaSprite('mountain2', 'Guys/ebottOrange', 0, 0)
	scaleObject('mountain2', 1, 1)
	setProperty('mountain2.antialiasing', false)
	setObjectCamera('mountain2', 'hud')
	setProperty('mountain2.alpha', 0)
	addLuaSprite('mountain2', false)

	makeLuaSprite('black', 'empty', 0, 0)
	setObjectCamera('black', 'hud')
	addLuaSprite('black', true)
end

function onTweenCompleted(tag)
	if tag == 'roadTweenX' then
		setProperty('road.x', 0)
		doTweenX('roadTweenX', 'road', -1280, 2, 'linear')
end
end

function onSongStart()
	setProperty('logo.alpha', 1)
	setProperty('black.alpha', 0)
	setProperty('boyfriend.alpha', 0)
end

function onStepHit()
	if curStep == 96 then
		doTweenY('logoTweenY', 'logo', -1300, 17, 'linear')
		runHaxeCode([[
		var filepath = Paths.video('Guys/1');
		var video = new MP4Handler();
		video.playVideo(filepath);
		video.visible = false;
		setVar('video',video);
		FlxG.stage.removeEventListener('enterFrame', video.update); 
		]])
end
	if curStep == 408 then		
		doTweenAlpha('blackTweenAlpha', 'black', 1, 0.2, 'linear')
end
	if curStep == 416 then
		setProperty('city.alpha', 1)
		setProperty('boyfriend.alpha', 1)
		setProperty('road.alpha', 1)
		setProperty('carBack.alpha', 1)
		setProperty('carFront.alpha', 1)
		doTweenX('carFrontTweenX', 'carFront', 400, 3, 'smootherStepInOut')
		doTweenX('carBackTweenX', 'carBack', 400, 3, 'smootherStepInOut')
		doTweenX('skiCarTweenX', 'boyfriend', 500, 3, 'smootherStepInOut')
		doTweenAlpha('blackTweenAlpha', 'black', 0, 0.2, 'linear')
end
	if curStep == 624 then
		doTweenAlpha('blackTweenAlpha', 'black', 1, 0.2, 'linear')
	elseif curStep == 640 then
		setProperty('city.alpha', 0)
		setProperty('road.alpha', 0)
		setProperty('carBack.alpha', 0)
		setProperty('carFront.alpha', 0)
		setProperty('boyfriend.alpha', 0)
		doTweenAlpha('blackTweenAlpha', 'black', 0, 0.2, 'linear')
		runHaxeCode([[
		var filepath = Paths.video('Guys/2');
		var video = new MP4Handler();
		video.playVideo(filepath);
		video.visible = false;
		setVar('video',video);
		FlxG.stage.removeEventListener('enterFrame', video.update); 
		]])
end
	if curStep == 1024 then
		doTweenAlpha('blackTweenAlpha', 'black', 1, 0.2, 'linear')
	elseif curStep == 1056 then
		setProperty('beach.alpha', 1)
		setProperty('boyfriend.x', 100)
		setProperty('boyfriend.y', 50)
		setProperty('boyfriend.alpha', 1)
		setObjectCamera('boyfriend', 'hud')
		setObjectOrder('boyfriend', 30)
		doTweenAlpha('blackTweenAlpha', 'black', 0, 0.2, 'linear')
end
	if curStep == 1242 then
		doTweenAlpha('blackTweenAlpha', 'black', 1, 0.2, 'linear')
	elseif curStep == 1248 then
		setProperty('beach.alpha', 0)
		setProperty('boyfriend.alpha', 0)		
		runHaxeCode([[
		var filepath = Paths.video('Guys/3');
		var video = new MP4Handler();
		video.playVideo(filepath);
		video.visible = false;
		setVar('video',video);
		FlxG.stage.removeEventListener('enterFrame', video.update); 
		]])
		doTweenAlpha('blackTweenAlpha', 'black', 0, 0.2, 'linear')
end
	if curStep == 1476 then
		doTweenAlpha('blackTweenAlpha', 'black', 1, 0.2, 'linear')
	elseif curStep == 1553 then
		setProperty('stage.alpha', 1)
		setProperty('curtain1.alpha', 1)
		setProperty('curtain2.alpha', 1)
		setProperty('beams.alpha', 1)
		setProperty('boyfriend.alpha', 1)		
		doTweenAlpha('blackTweenAlpha', 'black', 0, 0.2, 'linear')
		setProperty('boyfriend.x', 500)
		setProperty('boyfriend.y', 100)
	elseif curStep == 1583 then			
		doTweenX('curtainTweenX', 'curtain1', 1280, 3, 'linear')
		doTweenX('curtainTweenX1', 'curtain2', -1280, 3, 'linear')
end
	if curStep == 1705 then
		doTweenAlpha('blackTweenAlpha', 'black', 1, 0.2, 'linear')
	elseif curStep == 1712 then
		setProperty('stage.alpha', 0)
		setProperty('curtain1.alpha', 0)
		setProperty('curtain2.alpha', 0)
		setProperty('beams.alpha', 0)
		setProperty('boyfriend.alpha', 0)
		runHaxeCode([[
		var filepath = Paths.video('Guys/4');
		var video = new MP4Handler();
		video.playVideo(filepath);
		video.visible = false;
		setVar('video',video);
		FlxG.stage.removeEventListener('enterFrame', video.update); 
		]])		
		doTweenAlpha('blackTweenAlpha', 'black', 0, 0.2, 'linear')
end
	if curStep == 2264 then
		doTweenAlpha('blackTweenAlpha', 'black', 1, 0.2, 'linear')
	elseif curStep == 2306 then
		setProperty('school.alpha', 1)
		setProperty('videoSprite.alpha', 0)
		setProperty('boyfriend.alpha', 1)
		setObjectCamera('boyfriend', 'hud')
		setObjectOrder('boyfriend', 50)		
		setProperty('boyfriend.x', 500)
		setProperty('boyfriend.y', -300)
		doTweenAlpha('blackTweenAlpha', 'black', 0, 0.2, 'linear')			
		doTweenY('schoolTweenY', 'school', 0, 15, 'linear')
		doTweenY('skiSchoolTweenY', 'boyfriend', 260, 15, 'linear')
end
	if curStep == 2395 then
		setObjectCamera('boyfriend', 'hud')
		setObjectOrder('boyfriend', 30)	
		doTweenAlpha('blackTweenAlpha', 'black', 1, 1, 'linear')	
	elseif curStep == 2410 then
		setProperty('school.alpha', 0)
		setProperty('boyfriend.alpha', 0)	
		setProperty('mountain1.alpha', 1)	
		doTweenAlpha('blackTweenAlpha', 'black', 0, 1, 'linear')
	elseif curStep == 2458 then
		doTweenAlpha('mountainTweenAlpha', 'mountain2', 1, 3, 'linear')
	elseif curStep == 2458 then
		doTweenAlpha('blackTweenAlpha', 'black', 1, 1, 'linear')
end
end

function onCreatePost()
	addHaxeLibrary('MP4Handler','vlc')
	addHaxeLibrary('Event','openfl.events')
	
	setObjectCamera('boyfriend', 'hud')
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
			  
	         

		          