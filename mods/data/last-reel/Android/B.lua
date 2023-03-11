function onCreate()
    makeAnimatedLuaSprite('key_shift', 'key_shift', 50, 588);
    addAnimationByPrefix('key_shift', 'key_shift', 'key_shift', 24, true);
    addAnimationByPrefix('key_shift', 'key_shiftPress', 'key_shiftPressed', 24, true);
    addLuaSprite('key_shift', true);
    setObjectCamera('key_shift', 'hud')
    setPropertyFromClass('flixel.FlxG', 'mouse.visible', true);
    scaleObject('key_shift', 1.7, 1.7);
end

function onUpdatePost()
    if getMouseX('hud') > getProperty('key_shift.x') and getMouseY('hud') > getProperty('key_shift.y') and getMouseX('hud') < getProperty('key_shift.x') + getProperty('key_shift.width') and getMouseY('hud') < getProperty('key_shift.y') + getProperty('key_shift.height') and mouseReleased() then
    else
      objectPlayAnimation('key_shift', 'key_shift', true);
    end
end