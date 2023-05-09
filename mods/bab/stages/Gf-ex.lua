local xx = 675;
local yy = 500;
local xx2 = 750;
local yy2 = 500;
local ofs = 50;
local followchars = true;
local del = 1;
local del2 = 1;



function onCreate()
	-- background shit




        setProperty('skipCountdown',true)
	makeLuaSprite('BG1', 'bob-ex/BG1', -1300, -590);
	setLuaSpriteScrollFactor('BG2', 0.98, 1.0);
        setProperty("BG1.scale.x", 0.63);
        setProperty("BG1.scale.y", 0.63);


	
	makeLuaSprite('BG2', 'bob-ex/BG2', -1300, -600);
	setLuaSpriteScrollFactor('BG2', 0.98, 0.98);
        setProperty("BG2.scale.x", 0.6);
        setProperty("BG2.scale.y", 0.6);



	makeLuaSprite('BG3', 'bob-ex/BG3', -600, -300);




        makeAnimatedLuaSprite('ex', 'bob-ex/ex_crowd', -320, -50);
	addAnimationByPrefix('ex', 'idle', 'bobidlebig instance 1', 24, false);
	objectPlayAnimation('ex', 'idle', true);
        setProperty("ex.scale.x", 1.25);
        setProperty("ex.scale.y", 1.25);



	makeLuaSprite('pp', 'bob-ex/pp_truck', -1900, 300);
        setProperty("pp.scale.x", 1.25);
        setProperty("pp.scale.y", 1.25);




	addLuaSprite('BG1', false);
	addLuaSprite('BG2', false);
	addLuaSprite('ex', false);
        addLuaSprite('BG3', false);
        addLuaSprite('pp', true);	

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
function onBeatHit()
       if curBeat % 2== 0 then

       objectPlayAnimation('ex', 'idle', true);

       end
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
	if name == 'Play Animation' then 
		

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
