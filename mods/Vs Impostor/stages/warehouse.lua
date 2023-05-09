
local u = false;
local r = 0;
local shot = false;
local agent = 1
local health = 0
local xx = 640;
local yy = 350;
local xx2 = 640;
local yy2 = 350;
local ofs = 20;
local followchars = true;
local del = 0;
local del2 = 0;

local idle = true;


function onCreate()
	makeLuaSprite('wall', 'bg/torture/torture_wall', -930, -850)
	addLuaSprite('wall', false)
	scaleObject('wall', 1, 1)

	makeLuaSprite('wall2', 'bg/torture/tort_floor', -300, 505)
	addLuaSprite('wall2', false)
	scaleObject('wall2', 1, 1)

	makeLuaSprite('iped', 'bg/torture/torture_glasses_preblended', 550, 600)
	addLuaSprite('iped', true)
	scaleObject('iped', 1, 1)

	makeLuaSprite('light', 'bg/torture/torture_glow2', -500, -800)
	addLuaSprite('light', true)
	scaleObject('light', 1, 1)

	makeAnimatedLuaSprite('wtf', 'bg/torture/rightblades', 800, -800)
	addAnimationByPrefix('wtf', 'idle', 'blad instance', 24, true)
	addLuaSprite('wtf', false)
	scaleObject('wtf', 1, 1)

	makeAnimatedLuaSprite('wtf2', 'bg/torture/rightblades', 200, -800)
	addAnimationByPrefix('wtf2', 'idle', 'blad instance', 24, true)
	addLuaSprite('wtf2', false)
	scaleObject('wtf2', 1, 1)
	
	makeAnimatedLuaSprite('man', 'characters/piptorture', -500, 0)
	addAnimationByPrefix('man', 'idle', 'piple', 24, false)
	addLuaSprite('man', true)
	scaleObject('man', 1, 1)

	makeAnimatedLuaSprite('pet', 'bg/torture/monty', 50, 400)
	addAnimationByPrefix('pet', 'idle', 'mole idle instance', 24, false)
	addLuaSprite('pet', true)
	scaleObject('pet', 1, 1)

	for i = 0,getProperty('unspawnNotes.length') do
	if getPropertyFromGroup('unspawnNotes',i,'noteType') == 'Opponent 2 Sing' then
		
	setPropertyFromGroup('unspawnNotes',i,'noAnimation',true) --Stops original animations
	end
    end
end

function onCreatePost()
    makeLuaSprite('gir', nil, 0, -100)
    makeGraphic('gir', 2000, 2000, '000000')
    addLuaSprite('gir')
	setObjectOrder('gir', 100)

	doTweenAlpha('oci', 'camHUD', 0, 0.1, 'linear')
end

function onStepHit()
    if curStep == 9 then
		makeAnimatedLuaSprite('man1', 'bg/torture/torture_startZiffy', 550, 200)
		addAnimationByPrefix('man1', 'idle', 'Opening', 24, false)
		addLuaSprite('man1', true)
		scaleObject('man1', 1, 1)
		setObjectOrder('man1', 100)
	end

	if curStep == 101 then
		removeLuaSprite('man1', false)
	end


    if curStep == 128 then
    chao = true
    doTweenAlpha('11451111', 'gir', 0, 1, 'linear')
	runTimer('iii', 1)
    end

    if curStep == 240 then
    doTweenY('tag1', 'wtf', -400, 1, 'circInOut')
    doTweenY('tag2', 'wtf2', -400, 1, 'circInOut')
    playSound('ziffSaw', 1)
    end

	if curStep == 1024 then
	makeAnimatedLuaSprite('wtfk', 'bg/torture/torture_roze', -300, -300)
	addAnimationByPrefix('wtfk', 'idle', 'RozeCamio', 24, false)
	addLuaSprite('wtfk', false)
	scaleObject('wtfk', 1, 1)
	setObjectOrder('wtfk', 101)
	isee = true

	doTweenAlpha('wsa', 'camHUD', 0, 1, 'linear')
	end

	if curStep == 1045 then
	idle = false
	makeAnimatedLuaSprite('man', 'characters/piptorture', -500, 0)
	addAnimationByPrefix('man', 'idle', 'piprozebud', 24, false)
	addLuaSprite('man', true)
	scaleObject('man', 1, 1)
	end

	if curStep == 1085 then
	isee = false
	idle = true

	doTweenAlpha('wsaa', 'camHUD', 1, 1, 'linear')
	doTweenAlpha('wsaaa', 'wtfk', 0, 1, 'linear')
	end
end

-- 这一部分借鉴无敌的黑化所写的lua

function onBeatHit()
	if chao == true then
	if idle == true then
    if curBeat % 2 == 0 then
	makeAnimatedLuaSprite('man', 'characters/piptorture', -500, 0)
	addAnimationByPrefix('man', 'idle', 'piple', 24, false)
	addLuaSprite('man', true)
	scaleObject('man', 1, 1)
	end
    end

	if curBeat % 4 == 0 then
	objectPlayAnimation('pet', 'idle')
	end
    end
end

function onUpdate()
	setProperty('skipCountdown', true)

    if isee == true then
	setProperty('defaultCamZoom',0.7)
	end


    setProperty('wtf.x', 700 + getProperty('health') * 50)
	setProperty('wtf2.x', 300 - getProperty('health') * 50)

    setProperty('wtf2.flipX', true)

	for i=0, getProperty('notes.length') do
	if getSongPosition() > getPropertyFromGroup('notes',i,'strumTime') and getPropertyFromGroup('notes',i,'noteType') == 'Opponent 2 Sing' then
		
	pnoteData = getPropertyFromGroup('notes',i,'noteData')
	
	if pnoteData == 0 then
	left = true

	makeAnimatedLuaSprite('man', 'characters/piptorture', -500, 0)
	addAnimationByPrefix('man', 'left', 'pip lef', 24, false)
	addLuaSprite('man', true)
	scaleObject('man', 1, 1)

	idle = false
	runTimer('114514', crochet/1000)
	end
	if pnoteData == 1 then
	down = true

	makeAnimatedLuaSprite('man', 'characters/piptorture', -500, 0)
	addAnimationByPrefix('man', 'down', 'pip down', 24, false)
	addLuaSprite('man', true)
	scaleObject('man', 1, 1)

	idle = false
	runTimer('114514', crochet/1000)
	end
	if pnoteData == 2 then
	up = true

	makeAnimatedLuaSprite('man', 'characters/piptorture', -500, 0)
	addAnimationByPrefix('man', 'up', 'pip up', 24, false)
	addLuaSprite('man', true)
	scaleObject('man', 1, 1)
	
	idle = false
	runTimer('114514', crochet/1000)
	end
	if pnoteData == 3 then
	right = true

	makeAnimatedLuaSprite('man', 'characters/piptorture', -500, 0)
	addAnimationByPrefix('man', 'right', 'pip righ', 24, false)
	addLuaSprite('man', true)
	scaleObject('man', 1, 1)
	
	idle = false
	runTimer('114514', crochet/1000)
	end
	removeFromGroup('notes',i)
	end
	end
end

function opponentNoteHit(membersIndex, noteData, noteType, isSustainNote)

end

function onUpdatePost()
	setProperty('light.alpha', 0.5);
	setProperty('gf.alpha', 0);
	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
	
	if curBeat < 256 or curBeat > 272 then
		if followchars == true then
			if mustHitSection == false then
				setProperty('defaultCamZoom',0.9)
				if getProperty('dad.animation.curAnim.name') == 'idle' or idle == true then
					triggerEvent('Camera Follow Pos',xx,yy)
				end
				if getProperty('mom.animation.curAnim.name') == 'singLEFT' then
					triggerEvent('Camera Follow Pos',xx-ofs-50,yy)
				end
				if getProperty('mom.animation.curAnim.name') == 'singRIGHT' then
					triggerEvent('Camera Follow Pos',xx+ofs-50,yy)
				end
				if getProperty('mom.animation.curAnim.name') == 'singUP' then
					triggerEvent('Camera Follow Pos',xx-50,yy-ofs)
				end
				if getProperty('mom.animation.curAnim.name') == 'singDOWN' then
					triggerEvent('Camera Follow Pos',xx-50,yy+ofs)
				end
				if getProperty('dad.animation.curAnim.name') == 'singLEFT'then
					triggerEvent('Camera Follow Pos',xx-ofs+50,yy)
				end
				if getProperty('dad.animation.curAnim.name') == 'singRIGHT'then
					triggerEvent('Camera Follow Pos',xx+ofs+50,yy)
				end
				if getProperty('dad.animation.curAnim.name') == 'singUP'then
					triggerEvent('Camera Follow Pos',xx+50,yy-ofs)
				end
				if getProperty('dad.animation.curAnim.name') == 'singDOWN'then
					triggerEvent('Camera Follow Pos',xx+50,yy+ofs)
				end
			else

				setProperty('defaultCamZoom',1.2)
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
	else
		triggerEvent('Camera Follow Pos',xx,yy - 50)
	end
    
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == '114514' then
	idle = true
	left = false
	down = false
	up = false
	right = false
	end

	if tag == 'iii' then
	removeLuaSprite('gir', false)
	end
end