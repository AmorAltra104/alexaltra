local followchars = true;
local del = 0;
local del2 = 0;


function onEvent()
	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
    if followchars == true then
        if mustHitSection == false then
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                characterPlayAnim('boyfriend', 'block left', false);
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                characterPlayAnim('boyfriend', 'block right', false);
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                characterPlayAnim('boyfriend', 'block up', false);
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                characterPlayAnim('boyfriend', 'block down', false);
            end
            if getProperty('gf.animation.curAnim.name') == 'singLEFT' then
                characterPlayAnim('boyfriend', 'block left', false);
            end
            if getProperty('gf.animation.curAnim.name') == 'singRIGHT' then
                characterPlayAnim('boyfriend', 'block right', false);
            end
            if getProperty('gf.animation.curAnim.name') == 'singUP' then
                characterPlayAnim('boyfriend', 'block up', false);
            end
            if getProperty('gf.animation.curAnim.name') == 'singDOWN' then
                characterPlayAnim('boyfriend', 'block down', false);
            end

        else

            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                characterPlayAnim('dad', 'block left', false);
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                characterPlayAnim('dad', 'block right', false);
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                characterPlayAnim('dad', 'block up', false);
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                characterPlayAnim('dad', 'block down', false);
            end
            if getProperty('gf.animation.curAnim.name') == 'singLEFT' then
                characterPlayAnim('dad', 'block left', false);
            end
            if getProperty('gf.animation.curAnim.name') == 'singRIGHT' then
                characterPlayAnim('dad', 'block right', false);
            end
            if getProperty('gf.animation.curAnim.name') == 'singUP' then
                characterPlayAnim('dad', 'block up', false);
            end
            if getProperty('gf.animation.curAnim.name') == 'singDOWN' then
                characterPlayAnim('dad', 'block down', false);
            end
        end
    end
end