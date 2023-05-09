
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
	makeLuaSprite('BG1', 'bob-ex/Bluskys/hell/JGHOST 1', -590, -277);
	setLuaSpriteScrollFactor('BG1', 0.3, 0.3);


	makeLuaSprite('BG2', 'bob-ex/Bluskys/hell/JGHOST 1_2', -650, -280);
	setLuaSpriteScrollFactor('BG2', 0.5, 1.0);


	makeLuaSprite('BG3', 'bob-ex/Bluskys/hell/JGHOST 2', -700, -300);
	setLuaSpriteScrollFactor('BG3', 0.9, 1.0);


	makeLuaSprite('BG4', 'bob-ex/Bluskys/hell/JGHOST 3', -600, -300);


	makeLuaSprite('BG5', 'bob-ex/Bluskys/hell/JGHOST 4', -600, -300);

        makeAnimatedLuaSprite('gf-fake', 'bob-ex/GF_ass_sets_outfit', 280, 140);
	addAnimationByPrefix('gf-fake', 'idle', 'GF Dancing Beat', 30, true);
	objectPlayAnimation('gf-fake', 'idle', true);

	addLuaSprite('BG1', false);
	addLuaSprite('BG2', false);
	addLuaSprite('BG3', false);
	addLuaSprite('BG4', false);
	addLuaSprite('BG5', false);
	addLuaSprite('gf-fake', false);
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
		

		if value1 == 'anime' then
	setProperty('BG1-A.visible', true)
	setProperty('BG2-A.visible', true)
	setProperty('BG3-A.visible', true)
	setProperty('BG4-A.visible', true)
	setProperty('BG5-A.visible', true)
	setProperty('BG6-A.visible', true)

         	end

		if value1 == 'normal' then
	setProperty('BG1-A.visible', false)
	setProperty('BG2-A.visible', false)
	setProperty('BG3-A.visible', false)
	setProperty('BG4-A.visible', false)
	setProperty('BG5-A.visible', false)
	setProperty('BG6-A.visible', false)



         	end

		if value1 == 'final' then
	        playSound('Youdidfine');



         	end
        end
end
