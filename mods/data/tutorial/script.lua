local pc_w = 1280
local pc_h = 720
local pc_miltiplier_w = 60
local pc_miltiplier_h = 34

function onCreate()
    --setPropertyFromClass('flixel.FlxG', 'fullscreen', true)

    makeLuaSprite('bar1', 'bar1', 0, 0);
makeGraphic('bar1',1500,500,'000000')
  addLuaSprite('bar1', true);
  makeLuaSprite('bar2', 'bar2', 0, 620);
  makeGraphic('bar2',1500,500,'000000')
	addLuaSprite('bar2', true);
	setObjectCamera('bar1', 'hud')
	setObjectCamera('bar2', 'hud')
	setObjectOrder('bar1', 1)
	setObjectOrder('bar2', 1)
    
    doTweenY('bar1up', 'bar1', -800, 0.5, 'quartOut')
    doTweenY('bar2up', 'bar2',  800, 0.5, 'quartOut')

    setPropertyFromClass('flixel.FlxG', 'fullscreen', true)
end

function onCreatePost()
    setPropertyFromClass('flixel.FlxG', 'fullscreen', false)
end

function onSongStart()
    addHaxeLibrary('Application', 'lime.app')
    runHaxeCode("FlxTween.tween(Application.current.window, {x: 300}, 0.8);")
    runHaxeCode("FlxTween.tween(Application.current.window, {y: 200}, 0.8);")
    --default is 1280x720
    setPropertyFromClass('openfl.Lib', 'application.window.width', pc_w)
    setPropertyFromClass('openfl.Lib', 'application.window.height', pc_h)
end


function windowbop()
    pc_w = pc_w + pc_miltiplier_w
    pc_h = pc_h + pc_miltiplier_h

    setPropertyFromClass('openfl.Lib', 'application.window.width', pc_w)
    setPropertyFromClass('openfl.Lib', 'application.window.height', pc_h)
end

function windowshrink()

    pc_w = pc_w - pc_miltiplier_w
    pc_h = pc_h - pc_miltiplier_h

    setPropertyFromClass('openfl.Lib', 'application.window.width', pc_w)
    setPropertyFromClass('openfl.Lib', 'application.window.height', pc_h)
end

function onStepHit()

if curStep == 16 or curStep == 32 or curStep == 48 or curStep == 64 then
    windowshrink()
end

if curStep == 80 then
    windowbop()
    windowbop()
    windowbop()
    windowbop()
end



end

function arrowfart()
	noteTweenX("note4", 4, defaultPlayerStrumX0 - 30, 0.3, 'quartOut')
	noteTweenX("note5", 5, defaultPlayerStrumX1 - 15, 0.3, 'quartOut')
	noteTweenX("note6", 6, defaultPlayerStrumX2 + 15, 0.3, 'quartOut')
	noteTweenX("note7", 7, defaultPlayerStrumX3 + 30, 0.3, 'quartOut')

end

function onTweenCompleted(tag)
    if tag == 'note7' then
        noteTweenX("note4", 4, defaultPlayerStrumX0 - 0, 0.2, 'quartOut')
        noteTweenX("note5", 5, defaultPlayerStrumX1 - 0, 0.2, 'quartOut')
        noteTweenX("note6", 6, defaultPlayerStrumX2 + 0, 0.2, 'quartOut')
        noteTweenX("note7", 7, defaultPlayerStrumX3 + 0, 0.2, 'quartOut')
    end
end

function bar()
    doTweenY('bar1up', 'bar1', -450, 0.5, 'quartOut')
    doTweenY('bar2up', 'bar2',  670, 0.5, 'quartOut')
end

function maxbar()
    -- max is  400 and 610
    doTweenY('bar1up', 'bar1', -400, 0.5, 'quartOut')
    doTweenY('bar2up', 'bar2',  620, 0.5, 'quartOut')
end

function killbar()
    doTweenY('bar1up', 'bar1', -500, 0.5, 'quartOut')
    doTweenY('bar2up', 'bar2',  720, 0.5, 'quartOut')
end