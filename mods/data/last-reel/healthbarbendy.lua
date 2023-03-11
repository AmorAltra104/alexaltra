function onCreate()
    makeLuaSprite('bendyhealthbar', 'healthbars/bendyhealthbar', 0, 0)
    setObjectCamera('bendyhealthbar', 'hud')
    addLuaSprite('bendyhealthbar', false)
end
    function onCreatePost()
    if downscroll then
        yvi = 70
    else
        yvi = 652
    end
        setProperty('healthBarBG.visible', false)
        setProperty('healthBar.scale.y',2.2)
        setObjectOrder('bendyhealthbar',getObjectOrder('healthBar'))
        setProperty('bendyhealthbar.x',getProperty('healthBar.x')-40)
        setProperty('bendyhealthbar.y',getProperty('healthBar.y')-87)
        setProperty('iconP2.y',getProperty('iconP2.y')-8)
        setProperty('iconP1.y',getProperty('iconP1.y')-8)
end