local zoomIn = 0
function onCreate()
	camY = 'camFollow.y';
	camX = 'camFollow.x'; --fisticuffs, spray up, paint down
	stages = true;

    --makeLuaSprite('Fire','Effects/Fire', 0, 565)
    --setLuaSpriteScrollFactor('Fire', 0.0, 0.0);
	--scaleObject('Fire', 0.5, 0.5);

    makeAnimatedLuaSprite('Fire', 'Effects/Fire', -1000, 450);
	addAnimationByPrefix('Fire', 'dance', 'asd', 24, true);
	objectPlayAnimation('Fire','dance',false)
	scaleObject('Fire', 1, 1)
	setScrollFactor('Fire', 0.9, 0.9);

    setObjectCamera("Fire","hud");

    addLuaSprite('Fire',true)
end

function onStepHit()
	if curStep == 164 then
        cameraShake('hud', 0.0025, 50);
	end

    if curStep == 420 then
        cameraShake('hud', 0.0050, 50);
	end

    if curStep == 676 then
        cameraShake('hud', 0.0025, 50);
	end

    if curStep == 932 then
        cameraShake('hud', 0.0100, 50);
	end

    if curStep == 948 then
        cameraShake('hud', 0.0050, 50);
	end

    if curStep == 1204 then
        cameraShake('hud', 0.0025, 50);
	end

    if curStep == 1236 then
        cameraShake('hud', 0.0050, 50);
	end

    if curStep == 1492 then
        cameraShake('hud', 0.0025, 50);
	end

    if curStep == 1747 then
        cameraShake('hud', 0.0000, 0);
	end

    if curStep == 2004 then
        cameraShake('hud', 0.0100, 50);
	end

    if curStep == 2516 then
        cameraShake('hud', 0.0025, 50);
	end

    if curStep == 2772 then
        cameraShake('hud', 0.0050, 50);
	end

    if curStep == 3028 then
        cameraShake('hud', 0.0150, 50);
	end

    if curStep == 3060 then
        cameraShake('hud', 0.0100, 50);
	end

    if curStep == 4084 then
        cameraShake('hud', 0.0150, 50);
	end

    if curStep == 4596 then
		removeLuaSprite('Fire',true)
        cameraShake('hud', 0.0000, 0);
	end

	function opponentNoteHit(id, direction, noteType, NOTE_assets)
		if NOTE_assets == false and curStep > 2004 then
			cameraShake('game', 0.0075, 0.1);
		end

		--if NOTE_assets == true and curStep > 1103 then
			--cameraShake('game', 0.0025, 0.1);
		--end

		--if curStep > 1359 then
			--cameraShake('game', 0, 0.1);
		--end
	end

	function onUpdate( elapsed )
	    setProperty('defaultCamZoom', getProperty('defaultCamZoom')+zoomIn*elapsed);
	end
end