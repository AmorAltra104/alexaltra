
local u = false;
local r = 0;
local shot = false;
local agent = 1
local health = 0;
local xx = 1100;
local yy = 1150;
local xx2 = 1100;
local yy2 = 1150;
local ofs = 0;
local followchars = true;
local del = 0;
local del2 = 0;
function onCreate()
    makeLuaSprite('bg', 'bg/hideSong/deadguy', -50, 27)
	addLuaSprite('bg', false);
	
	makeAnimatedLuaSprite('meeting', 'bg/hideSong/meeting', 0, 0)
	setObjectCamera('meeting', 'other')
	addLuaSprite('meeting', true)
    scaleObject('meeting', 1.4, 1.4)
	addAnimationByPrefix('meeting', 'idle', 'meeting buzz', 24, false)
	
	makeLuaSprite('66', 'bg/hideSong/KILLYOURSELF', 400, 10)
	addLuaSprite('66', true);
	setObjectCamera('66', 'other')
	scaleObject('66', 0.8, 0.8)
	
	makeLuaSprite('99', 'bg/hideSong/emergency', 400, 300)
	addLuaSprite('99', true);
	setObjectCamera('99', 'other')
	scaleObject('99', 0.8, 0.8)
	
	setProperty('99.visible', false)
	setProperty('66.visible', false)
	setProperty('meeting.visible', false)
end




function onUpdate()
    setProperty('gf.alpha', 0);
	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
    if followchars == true then
        if mustHitSection == false then
            setProperty('defaultCamZoom',0.7)
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

            setProperty('defaultCamZoom',0.7)
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
        --triggerEvent('Camera Follow Pos','','')
    end
	
	if curBeat == 94 or curBeat == 125 then
		followchars = false
		setProperty('cameraSpeed', 10000)
		setProperty('defaultCamZoom', 1.2)
	end
	if curBeat == 112 or curBeat == 216 or curBeat == 228 or curBeat == 266 then
		followchars = true
	end
	if curBeat == 115 then
		setProperty('cameraSpeed', 1)
	end
	if curBeat == 96 or curBeat == 100 or curBeat == 109 or curBeat == 126 or curBeat == 132 or curBeat == 144 or curBeat == 157 or curBeat == 165 or curBeat == 174 or curBeat == 182 or curBeat == 195 or curBeat == 200 or curBeat == 205 or curBeat == 215 or curBeat == 224 or curBeat == 228 or curBeat == 232 or curBeat == 240 or curBeat == 246 or curBeat == 256 or curBeat == 272 then
		triggerEvent('Camera Follow Pos','1400','1300')
		setProperty('defaultCamZoom', 1.1)
		followchars = false
	end
	if curBeat == 98 or curBeat == 102 or curBeat == 105 or curBeat == 125 or curBeat == 140 or curBeat == 152 or curBeat == 160 or curBeat == 172 or curBeat == 160 or curBeat == 177 or curBeat == 192 or curBeat == 197 or curBeat == 204 or curBeat == 208 or curBeat == 212 or curBeat == 220 or curBeat == 226 or curBeat == 235 or curBeat == 244 or curBeat == 248 or curBeat == 260 or curBeat == 280 then
		triggerEvent('Camera Follow Pos','650','1300')
		setProperty('defaultCamZoom', 1.1)
		followchars = false
	end
	if curBeat == 288 then
		setProperty('camHUD.alpha', 0)
		setProperty('99.visible', true)
		setProperty('66.visible', true)
		setProperty('meeting.visible', true)
	end
end

