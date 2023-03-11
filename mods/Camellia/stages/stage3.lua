function onCreate()

    makeLuaSprite('city', 'stage2/stage2wall', -2400, -930); 
	setLuaSpriteScrollFactor('city', 1.0, 1.0);
	scaleObject('city', 2.0, 2.0);
	
	makeAnimatedLuaSprite('light', 'stage2/light', -2400, -850); 
	setLuaSpriteScrollFactor('light', 1.0, 1.0);
	scaleObject('light', 4.0, 4.0);
	
	makeLuaSprite('stage', 'stage2/stage', -2400, -950);
	setLuaSpriteScrollFactor('stage', 1.0, 1.0);
	scaleObject('stage', 2.0, 2.0);
	
	makeAnimatedLuaSprite('bocina', 'stage2/speaker_left', -1670, -125);
	setLuaSpriteScrollFactor('bocina', 1.0, 1.0);
	scaleObject('bocina', 0.9, 0.9);
	
	makeAnimatedLuaSprite('bocina2', 'stage2/speaker_right', 270, -125);
	setLuaSpriteScrollFactor('bocina2', 1.0, 1.0);
	scaleObject('bocina2', 0.9, 0.9);
	
	makeAnimatedLuaSprite('bocina1', 'stage2/speakerleft', -1320, 65);
	setLuaSpriteScrollFactor('bocina1', 1.0, 1.0);
	scaleObject('bocina1', 1.2, 1.2);
	
	makeAnimatedLuaSprite('bocina3', 'stage2/speakerright', -50, 65);
	setLuaSpriteScrollFactor('bocina3', 1.0, 1.0);
	scaleObject('bocina3', 1.2, 1.2);
	
	makeAnimatedLuaSprite('ruria', 'stage2/backcrowd', -2475, -65);
	setLuaSpriteScrollFactor('ruria', 1.0, 1.0);
	scaleObject('ruria', 2.12, 2.12);
	
	makeAnimatedLuaSprite('publi', 'stage2/frontcrowd_hf', -2450, 600);
	setLuaSpriteScrollFactor('publi', 1.0, 1.0);
	scaleObject('publi', 2.12, 2.12);
	
	makeLuaText('watermark', "PORTED BY", 0, 1095, 640); -- You can edit the created by Prisma Text just dont change anything else
    setTextSize('watermark',30);
    setObjectCamera('watermark', 'other');
    addLuaText('watermark');
    setTextFont('watermark', 'font.ttf');
    
    	makeLuaText('watermark1', "b站一北狐    逐梦", 0, 1070, 680); -- You can edit the created by Prisma Text just dont change anything else
    setTextSize('watermark1',26);
    setObjectCamera('watermark1', 'other');
    addLuaText('watermark1');
    setTextFont('watermark1', 'font.ttf');
    
    makeLuaText('watermark2', "丶", 0, 1190, 680); -- You can edit the created by Prisma Text just dont change anything else
    setTextSize('watermark2',26);
    setObjectCamera('watermark2', 'other');
    addLuaText('watermark2');
    setTextFont('watermark2', '2.ttf');
    
    makeLuaText('watermark3', "作者Q群721322657", 0, 0, 670); -- You can edit the created by Prisma Text just dont change anything else
    setTextSize('watermark3',20);
    setObjectCamera('watermark3', 'other');
    addLuaText('watermark3');
    setTextFont('watermark3', '2.ttf');
	
    
    addLuaSprite('city', false);
    addLuaSprite('light', false);
    addAnimationByPrefix('light','idle','win',6, true);
    addLuaSprite('ruria', false);

    addAnimationByPrefix('ruria','bg1','bg1',60, true);
    addLuaSprite('stage', false);
    addLuaSprite('bocina', false);
    addAnimationByPrefix('bocina','idle','speaker',20, true);
    addLuaSprite('bocina2', false);
    addAnimationByPrefix('bocina2','idle','speaker',20, true);
    
    addLuaSprite('bocina1', false);
    addAnimationByPrefix('bocina1','idle','speaker',20, true);
    addLuaSprite('bocina3', false);
    addAnimationByPrefix('bocina3','idle','speaker',20, true);
     addLuaSprite('publi', true);
    addAnimationByPrefix('publi','bg2','bg2',60, true);
    
end



local xx = -390;
local yy = 220;
local xx2 = -390;
local yy2 = 220;
local ofs = 20;
local followchars = true;
local del = 0;
local del2 = 0;


function onUpdate()
	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
    if followchars == true then
        if mustHitSection == false then
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
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
