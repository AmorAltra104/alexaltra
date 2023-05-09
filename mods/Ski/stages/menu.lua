function onCreate()
    makeLuaSprite('startScreen', 'start', 0, -500)
    scaleObject('startScreen', 2.5, 2.5)
    setProperty('startScreen.antialiasing', false)
    addLuaSprite('startScreen', false)
end