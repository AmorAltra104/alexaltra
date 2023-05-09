function onCreate()
	makeLuaSprite('videoSprite','', -310, -180)
	scaleObject('videoSprite', 0.68, 0.68)
	setProperty('videoSprite.antialiasing', false)
	setProperty('videoSprite.alpha', 0)
	setObjectCamera('videoSprite', 'hud')
	addLuaSprite('videoSprite', true)
	
	makeLuaSprite('family','family', 0, 0)
	setProperty('family.alpha', 0)
	setObjectCamera('family', 'other')
	addLuaSprite('family', false)
	
	makeLuaSprite('endPhoto','endPhoto', 0, 0)
	setProperty('endPhoto.alpha', 0)
	setObjectCamera('endPhoto', 'other')
	addLuaSprite('endPhoto', false)
end

function onCreatePost()
	addHaxeLibrary('MP4Handler','vlc')
	addHaxeLibrary('Event','openfl.events')
	runHaxeCode([[

		var filepath = Paths.video('goodbye');
		//get the video path
		
		var video = new MP4Handler();
		//create the video object

		video.playVideo(filepath);
		//play the video file

		video.visible = false;
		//make the video object overlay invisible

		setVar('video',video);
		//set global variable

		FlxG.stage.removeEventListener('enterFrame', video.update); 
		//removes the native update event the video has (disables skipping pressing enter)
	]])

	    doTweenAlpha('videoTweenAlpha', 'videoSprite', 1, '0.2', 'linear')
							 
		noteTweenX('asdfTweenX1', 4, 440, 0.01, 'linear')		
		noteTweenX('asdfTweenX2', 5, 550, 0.01, 'linear')		
		noteTweenX('asdfTweenX3', 6, 660, 0.01, 'linear')		
		noteTweenX('asdfTweenX4', 7, 770, 0.01, 'linear')
		setProperty('boyfriend.alpha', 0)
end

function onUpdatePost()
	runHaxeCode([[
		var video = getVar('video');
		//get video object variable

		game.getLuaObject('videoSprite').loadGraphic(video.bitmapData);
		//set video sprite's graphic as the video's bitmap data

		video.volume = FlxG.sound.volume + 0.4;
		//set video volume as the game's volume (plus 0.4 idk psych has that for some reason)
		
		if(game.paused)video.pause();
		//pause video if the game is paused

	]])

end


function onResume()

	--run the main haxe code
	runHaxeCode([[
		var video = getVar('video');
		//get video object variable

		video.resume();
		//resume video when game is resumed
	]])

end

function onStepHit()
	if curStep == 544 then
		doTweenAlpha('familyTweenAlpha', 'family', 1, '5', 'linear')
	elseif curStep == 811 then
		doTweenAlpha('familyTweenAlpha', 'family', 0, '2', 'linear')
	elseif curStep == 1369 then
		doTweenAlpha('endThingTweenAlpha', 'endPhoto', 1, '2', 'linear')
end
end	
		       
			  
	         

		          