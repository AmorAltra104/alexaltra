
function onCreate()
    
    makeLuaSprite('Out','javmm/outm', -250, 50)
    addLuaSprite('Out',false)
    setLuaSpriteScrollFactor('Out', 0.7, 1.0);

    makeLuaSprite('Back','javmm/backm', -250, 50)
    addLuaSprite('Back',false)
    setLuaSpriteScrollFactor('Back', 0.915, 0.915);

    makeLuaSprite('Front','javmm/frontm', -250, 50)
    addLuaSprite('Front',false)
    setLuaSpriteScrollFactor('Front', 0.985, 0.985);

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