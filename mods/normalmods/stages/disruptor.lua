function onCreate()

	makeLuaSprite('disruptor', 'disruptor', -600, -200);
	addGlitchEffect('disruptor', 2, 5);
	addLuaSprite('disruptor', false);
	if not lowQuality then
	makeLuaSprite('black', 'black', -600, -200);
	addLuaSprite('black', false);
end
end

function onUpdate()
if not lowQuality then
    if getProperty('black.alpha') == 1 then
        doTweenAlpha('dothetweenvg', 'black', 0, 3, 'quadInOut');
end
end
end
function onTweenCompleted(tag)
if not lowQuality then
    if tag == 'dothetweenvg' then
        doTweenAlpha('dothetweenvgagain', 'black', 1, 3, 'quadInOut');
    end
end
end
