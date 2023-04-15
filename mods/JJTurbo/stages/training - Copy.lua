
function onCreate()
    
    makeLuaSprite('martsky','javmm/martsky', -640, -350)
    addLuaSprite('martsky',false)
    setLuaSpriteScrollFactor('martsky', 0.1, 0.1);

    makeLuaSprite('martgallery','javmm/martgallery', -400, -280)
    addLuaSprite('martgallery',false)
    setLuaSpriteScrollFactor('martgallery', 0.5, 0.5);

    makeLuaSprite('martthrone','javmm/martthrone', -300, -280)
    addLuaSprite('martthrone',false)
    setLuaSpriteScrollFactor('martthrone', 0.7, 0.7);

    makeLuaSprite('martdesk','javmm/martdesk', -250, -250)
    addLuaSprite('martdesk',false)
    setLuaSpriteScrollFactor('martdesk', 0.8, 0.8);

    makeLuaSprite('bar1','javmm/bottommm', 0, -315)
    addLuaSprite('bar1',true)
    setLuaSpriteScrollFactor('bar1', 0.0, 0.0);

    makeLuaSprite('bar2','javmm/bottommm', 0, 675)
    addLuaSprite('bar2',true)
    setLuaSpriteScrollFactor('bar2', 0.0, 0.0);

    setObjectCamera("bar1","hud")
    setObjectCamera("bar2","hud")

    close(true)
end