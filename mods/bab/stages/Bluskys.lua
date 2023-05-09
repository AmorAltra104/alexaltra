
local xx = 450;
local yy = 350;
local xx2 = 620;
local yy2 = 350;
local ofs = 20;
local followchars = true;
local del = 1;
local del2 = 1;



function onCreate()
	-- background shit




        setProperty('skipCountdown',true)
	makeLuaSprite('BG1', 'bob-ex/Bluskys/BLU1', -590, -277);
	setLuaSpriteScrollFactor('BG1', 0.0, 0.0);


	makeLuaSprite('BG2', 'bob-ex/Bluskys/BLU1_1', -650, -300);
	setLuaSpriteScrollFactor('BG2', 0.5, 1.0);


	makeLuaSprite('BG3', 'bob-ex/Bluskys/BLU1_2', -670, -300);
	setLuaSpriteScrollFactor('BG3', 0.6, 1.0);

	makeLuaSprite('BG4', 'bob-ex/Bluskys/BLU2', -640, -300);
	setLuaSpriteScrollFactor('BG4', 0.9, 0.9);


	makeLuaSprite('BG5', 'bob-ex/Bluskys/BLU3', -600, -300);


	makeLuaSprite('BG6', 'bob-ex/Bluskys/BLU4', -600, -300);


	makeLuaSprite('BG7', 'bob-ex/Bluskys/BLU5', -600, -300);


        makeAnimatedLuaSprite('BG8', 'bob-ex/Bluskys/BLU8', -600, -340);
	addAnimationByPrefix('BG8', 'idle', 'BLU8 LUZ', 1, true);
	objectPlayAnimation('BG8', 'idle', true);


	addLuaSprite('BG1', false);
	addLuaSprite('BG2', false);
	addLuaSprite('BG3', false);
	addLuaSprite('BG4', false);
	addLuaSprite('BG5', false);
	addLuaSprite('BG8', false);
	addLuaSprite('BG6', false);




end

function onCreatePost()

   --makeLuaTexts
   makeLuaText('Watermark', 'Port by Thepotra', 0, 15, getProperty('healthBarBG.y') + 30);

  
   --addLuaText
   addLuaText('Watermark')


   --Text fonts
   setTextFont('botplayTxt', 'Minecrafter.Alt.ttf')
   setTextFont('Watermark', 'Minecrafter.Alt.ttf');

   
   --Text sizes
   setTextSize('Watermark', 20);
   setTextSize('botplayTxt', 30);


end
function onUpdate()
	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
    if followchars == true then
        if mustHitSection == false then
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
	    if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
    
end
function onEvent(name,value1,value2)
	if name == 'Play Luz' then 
		

		if value1 == 'pp' then
		setProperty('pp.x', 2000)
		doTweenX('pp','pp', -1900, 0.3,'cubeInOut')


         	end

		if value1 == 'co' then
	        playSound('carPass1');


         	end

		if value1 == 'fin' then
	        playSound('mike_died');


         	end
        end
end
