function onCreate()
	makeLuaSprite('videoSprite','', -500, 300)
	scaleObject('videoSprite', 0.8, 0.8)
	setProperty('videoSprite.antialiasing', false)
	setProperty('videoSprite.alpha', 0)
	addLuaSprite('videoSprite')
	
	makeLuaSprite('black','empty', 0, 0)
	setObjectCamera('black', 'other')
	setProperty('black.alpha', 0)
	addLuaSprite('black', false)
end

function onStepHit()
	if curStep == 640 then
		doTweenAlpha('blackTweenAlphaIntro', 'black', 1, 15, 'linear')
end
end

function onCreatePost()
	addHaxeLibrary('MP4Handler','vlc')
	addHaxeLibrary('Event','openfl.events')
end

function onSongStart()
	runHaxeCode([[

		var filepath = Paths.video('intro');
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
			  
	         

		          