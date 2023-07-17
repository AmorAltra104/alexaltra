function onCreate()
	makeAnimatedLuaSprite('sword','sword', 600, 0);
    addAnimationByPrefix('sword','sword', 'sword', 24, true);
        addAnimationByPrefix('sword','blee', 'blee', 24, false);
        addAnimationByPrefix('sword','bloo', 'bloo', 24, false);
    setProperty('sword.alpha', 0)
    setObjectCamera('sword', 'hud')
    addLuaSprite('sword', true); 
    if middlescroll then
        setProperty('sword.x', 300)
    end

end

function onEvent(name, value1, value2)
	if value1 == '1' then     
        setProperty('sword.alpha', 1)
        doTweenX('sword', 'sword', 750, 0.2,'linear')
        noteTweenY("left", 4, 90, 0.3, 'bounceOut')
        noteTweenY("down", 5, 90, 0.3, 'bounceOut')
        noteTweenY("up", 6, 10, 0.3, 'bounceOut')
        noteTweenY("right", 7, 10, 0.3, 'bounceOut')
        if downscroll then
        setProperty('sword.y', 600)
        doTweenX('sword', 'sword', 750, 0.2,'linear')
        noteTweenY("left", 4, 500, 0.3, 'bounceOut')
        noteTweenY("down", 5, 500, 0.3, 'bounceOut')
        noteTweenY("up", 6, 600, 0.3, 'bounceOut')
        noteTweenY("right", 7, 600, 0.3, 'bounceOut')
        end
        if middlescroll then
            doTweenX('sword', 'sword', 430, 0.2,'linear')
        end
    end

	if value1 == '0' then
        setProperty('sword.alpha', 0)
        setProperty('sword.x', 600)
        noteTweenY("left", 4, 50, 0.5, 'bounceOut')
        noteTweenY("down", 5, 50, 0.5, 'bounceOut')
        noteTweenY("up", 6, 50, 0.5, 'bounceOut')
        noteTweenY("right", 7, 50, 0.5, 'bounceOut')
        if downscroll then
            setProperty('sword.y', 600)
            doTweenX('sword', 'sword', 750, 0.2,'linear')
            noteTweenY("left", 4, 570, 0.3, 'bounceOut')
            noteTweenY("down", 5, 570, 0.3, 'bounceOut')
            noteTweenY("up", 6, 570, 0.3, 'bounceOut')
            noteTweenY("right", 7, 570, 0.3, 'bounceOut')
        end
	end
end