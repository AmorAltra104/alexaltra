function onCreate()
    makeLuaSprite('toylandBg','backgrounds/julian',-1250,-350)
    scaleObject('toylandBg',0.75,0.75)
    addLuaSprite('toylandBg')

    makeLuaSprite('toylandFront','backgrounds/pipi',-1550,-350)
    setScrollFactor('toylandFront',0.8,0.8)
    scaleObject('toylandFront',0.9,0.9)
    addLuaSprite('toylandFront',true)
end