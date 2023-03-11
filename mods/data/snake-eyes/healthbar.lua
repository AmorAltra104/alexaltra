function onCreate()
    makeLuaSprite('cuphealthbar', 'healthbars/cuphealthbar', 0, 0)
    setObjectCamera('cuphealthbar', 'hud')
    addLuaSprite('cuphealthbar', false)
end
    function onCreatePost()
    if downscroll then
        yvi = 70
    else
        yvi = 652
    end
        setProperty('healthBarBG.visible', false)
        setProperty('healthBar.scale.y',1.5)
        setObjectOrder('cuphealthbar',getObjectOrder('healthBar'))
        setProperty('cuphealthbar.x',getProperty('healthBar.x')-20)
        setProperty('cuphealthbar.y',getProperty('healthBar.y')-20)
        setProperty('iconP2.y',getProperty('iconP2.y')-8)
        setProperty('iconP1.y',getProperty('iconP1.y')-8)
end