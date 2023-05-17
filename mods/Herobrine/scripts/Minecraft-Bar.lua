function onCreate()
    makeLuaSprite('Steve-Bar', 'Minecraft-Bar', 0, 0)
    setProperty('Steve-Bar.alpha', 0)
    addLuaSprite('Steve-Bar', true)
    setObjectCamera('Steve-Bar', 'hud')
    setProperty('Steve-Bar.x', getProperty('Steve-Bar.x') + 339)
    setProperty('Steve-Bar.y', getProperty('Steve-Bar.y') + 640.5)
end

function onCreatePost()
    makeLuaSprite('mcdeez', 'mc-bar', getProperty('healthBar.x') - 3.25, getProperty('healthBar.y') + 0.1)
    addLuaSprite('mcdeez', true)
    setObjectCamera('mcdeez', 'hud')
    setObjectOrder('mcdeez', getObjectOrder('iconP1') - 1)
    setProperty('mcdeez.scale.x', 1)
    setProperty('mcdeez.scale.y', 1)
    setProperty('mcdeez.x', getProperty('healthBar.x') - 50)
    setProperty('mcdeez.y', getProperty('healthBar.y') - 13.25)
    setProperty('healthBar.visible', false)
    setProperty('healthBarBG.visible', false)
    setProperty('redBar.visible', true)
    setProperty('BF-Health.visible', true)
    setObjectCamera('Steve-BarBG', 'hud')
    setObjectCamera('mcdeez', 'hud')
    makeLuaSprite('redBar', 'retardedPsych', getProperty('healthBar.x') - 3.25, getProperty('healthBar.y') + 0.1)
    makeLuaSprite('BF-Health', 'retardedPsych', getProperty('healthBar.x') - 3.25, getProperty('healthBar.y') + 0.1)
    setProperty('redBar.color', getColorFromHex('31b0d1'))
    setProperty('BF-Health.color', getColorFromHex('ff0000'))
    setProperty('redBar.scale.x', getProperty('Steve-Bar.scale.x') * 1.99)
    setProperty('BF-Health.scale.y', getProperty('Steve-Bar.scale.y') - 0.45)
    setProperty('redBar.scale.y', getProperty('Steve-Bar.scale.y') - 0.45)
    updateHitbox('redBar')
    setProperty('healthBarBG.alpha', 1)
    setProperty('healthBar.alpha', 1)
    setObjectCamera('redBar', 'hud')
    setObjectCamera('BF-Health', 'hud')
    addLuaSprite('redBar', true)
    addLuaSprite('BF-Health', true)
    setObjectOrder('redBar', getObjectOrder('iconP1') - 3)
    setObjectOrder('BF-Health', getObjectOrder('iconP1') - 2)
    setObjectOrder('healthBarBG', getObjectOrder('iconP1') - 3)
    
end

function onUpdatePost(elasped)

    local iconFix = (getProperty('iconP1.x') - (getProperty('BF-Health.scale.x') * 10) - 0)

    setProperty('iconP1.x', iconFix)
    setProperty('iconP2.x', iconFix - 90)

    local scale = (2 - getProperty('health') * 1.00)
    if scale > 2 then
        scale = 2
    end
    setProperty('BF-Health.scale.x', scale)
    updateHitbox('BF-Health')
end
--i got better at lua :D