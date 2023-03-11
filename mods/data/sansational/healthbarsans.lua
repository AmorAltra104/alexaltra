function onCreate()
    makeLuaSprite('sanshealthbar', 'healthbars/sanshealthbar', 0, 0)
    setObjectCamera('sanshealthbar', 'hud')
    addLuaSprite('sanshealthbar', false)
end

function onCreatePost()
    if downscroll then
        yvi = 70
    else
        yvi = 652
    end

        setProperty('healthBarBG.visible', false)
        setProperty('healthBar.scale.y', 2.5)
        setObjectOrder('sanshealthbar',getProperty('healthBar'))
        setProperty('sanshealthbar.x',getProperty('healthBar.x')-55)
        setProperty('sanshealthbar.y',getProperty('healthBar.y')-7)
        setProperty('iconP2.y',getProperty('iconP2.y')-900)
        setProperty('iconP1.y',getProperty('iconP1.y')-900)
end