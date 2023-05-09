
local u = false;
local r = 0;
local i =0
local shot = false;
local agent = 1
local health = 0;
local xx = 450.95;
local yy = 570;
local xx2 = 1152.9;
local yy2 = 455;
local ofs = 35;
local followchars = true;
local del = 0;
local del2 = 0;
function onCreate()
	addHaxeLibrary('MP4Handler','vlc')
	addHaxeLibrary('Event','openfl.events')
	
    setProperty('defaultCamZoom',0.65)
    makeLuaSprite('bartop','',0,-30)
    makeGraphic('bartop',1280,100,'000000')
    addLuaSprite('bartop',false)
    setObjectCamera('bartop','hud')
    setScrollFactor('bartop',0,0)

    makeLuaSprite('barbot','',0,650)
    makeGraphic('barbot',1280,100,'000000')
    addLuaSprite('barbot',false)
    setScrollFactor('barbot',0,0)
    setObjectCamera('barbot','hud')
	
	makeLuaSprite('BG', 'Hotline/bg', -700, -700)
	scaleObject('BG', 1.5, 1.5)
    addLuaSprite('BG', false)
	
    makeLuaSprite('videoSprite','', -320, -180)
	scaleObject('videoSprite', 0.67, 0.67)
	setProperty('videoSprite.antialiasing', false)
	setObjectCamera('videoSprite', 'hud')
	addLuaSprite('videoSprite', true)
end

function onUpdate(elapsed)

	daElapsed = elapsed * 30
	i = i + daElapsed

	daYvalue = 
	
	setProperty('dad.y', (math.sin(i/20)*50) - 200)
	yy = (math.sin(i/20)*50) + 200

	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
     if followchars == true then
        if mustHitSection == false then
            setProperty('defaultCamZoom',0.65)
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
        else
      
            setProperty('defaultCamZoom',0.75)
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
    
end

function onUpdatePost()
	runHaxeCode([[
		var video = getVar('video');
		game.getLuaObject('videoSprite').loadGraphic(video.bitmapData);
		video.volume = FlxG.sound.volume + 0.4;
		if(game.paused)video.pause();
		]])
end

function onStepHit()
		if curStep == 440 then
				runHaxeCode([[
				var filepath = Paths.video('nikku');
				var video = new MP4Handler();
				video.playVideo(filepath);
				video.visible = false;
				setVar('video',video);
				FlxG.stage.removeEventListener('enterFrame', video.update); 
				]])		
end
		if curStep == 512 then
				setProperty('videoSprite.alpha', 0)
end
end


function onResume()
	runHaxeCode([[
		var video = getVar('video');
		video.resume();
		]])
end
