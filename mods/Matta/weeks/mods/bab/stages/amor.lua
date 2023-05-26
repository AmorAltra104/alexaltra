

local xx = 730;
local yy = 480;
local xx2 = 730;
local yy2 = 480;
local ofs = 35;
local followchars = true;
local del = 0;
local del2 = 0;



function onCreate()
	-- background shit



        setProperty('skipCountdown',true)
	makeLuaSprite('BG1', 'bob-ex/bosip-ex/amor/BG1', -1300, -590);
	setLuaSpriteScrollFactor('BG2', 0.98, 1.0);
        setProperty("BG1.scale.x", 0.63);
        setProperty("BG1.scale.y", 0.63);


	
	makeLuaSprite('BG2', 'bob-ex/bosip-ex/amor/BG2', -1300, -600);
	setLuaSpriteScrollFactor('BG2', 0.98, 0.98);
        setProperty("BG2.scale.x", 0.6);
        setProperty("BG2.scale.y", 0.6);



	makeLuaSprite('BG3', 'bob-ex/bosip-ex/amor/BG3', -600, -300);

	makeLuaSprite('BG4', 'bob-ex/bosip-ex/amor/BG4', -1300, -600);
        setProperty("BG4.scale.x", 0.6);
        setProperty("BG4.scale.y", 0.6);


	makeLuaSprite('BG6', 'bob-ex/bosip-ex/amor/BG6', -600, -300);

        makeAnimatedLuaSprite('DIVISION', 'bob-ex/bosip-ex/amor/pixelthing', 70, -100);
	addAnimationByPrefix('DIVISION', 'idle', 'pixelthing', 24, true);
        setProperty("DIVISION.scale.x", 2.5);
        setProperty("DIVISION.scale.y", 2.5);


	makeAnimatedLuaSprite('Dad2', 'characters/pc', 210, 310); -- Change to characters idle in XML
	addAnimationByPrefix('Dad2', 'idle', 'PC idle', 24, false); -- Change to characters idle in XML
        addAnimationByPrefix('Dad2', '0', 'PC Note LEFT', 24, false); -- Change to characters leftnote in XML
        addAnimationByPrefix('Dad2', '1', 'PC Note DOWN', 24, false); -- Change to characters downnote in XML
        addAnimationByPrefix('Dad2', '2', 'PC Note UP', 24, false); -- Change to characters upnote in XML
        addAnimationByPrefix('Dad2', '3', 'PC Note RIGHT', 24, false); -- Change to characters rightnote in XML
	objectPlayAnimation('Dad2', 'idle'); 


        makeAnimatedLuaSprite('luz2', 'bob-ex/bosip-ex/amor/luz', 0, 0);
	addAnimationByPrefix('luz2', 'idle', 'Luz Ass', 12, true);
	objectPlayAnimation('luz2', 'idle', true);
	setObjectCamera('luz2','camHud')
        setProperty('luz2.flipX', true)


        makeAnimatedLuaSprite('luz1', 'bob-ex/bosip-ex/amor/luz', 0, 0);
	addAnimationByPrefix('luz1', 'idle', 'Luz Ass', 12, true);
	objectPlayAnimation('luz1', 'idle', true);
	setObjectCamera('luz1','camHud')






	addLuaSprite('BG1', false);
	addLuaSprite('BG2', false);
        addLuaSprite('BG3', false);
	addLuaSprite('BG4', false);
	addLuaSprite('BG6', false);
	addLuaSprite('DIVISION', true);
	addLuaSprite('Dad2', false);
	addLuaSprite('luz1', false);
	addLuaSprite('luz2', false);

	setProperty('luz1.visible', false)
	setProperty('luz2.visible', false)



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
	-- triggered 4 times per section
	if curBeat % 2 == 0 then
		objectPlayAnimation('Dad2', 'idle');
	end
end

lastNote = {0, ""}

function opponentNoteHit(id,d,t,s)


    lastNote[1] = d
    lastNote[2] = t
    
    if lastNote[2] == "amor" then -- Change "amor" to be your note type, usually you can just keep it as no anim assuming you arent using it elsewhere
	objectPlayAnimation('Dad2', lastNote[1]);
end

       health = getProperty('health')
    if getProperty('health') > 0.1 then
       setProperty('health', health- 0.012);

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
	if name == 'Play Luz' then 
		

		if value1 == 'luz1' then
        	setProperty('luz1.visible', true)
	        setProperty('luz2.visible', false)

         	end

		if value1 == 'luz2' then
        	setProperty('luz1.visible', false)
        	setProperty('luz2.visible', true)


         	end

		if value1 == 'luz0' then
        	setProperty('luz1.visible', false)
        	setProperty('luz2.visible', false)


         	end
        end
end


