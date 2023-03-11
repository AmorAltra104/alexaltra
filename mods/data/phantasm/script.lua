function onCreatePost()
    setProperty('dad.visible',false)
    setProperty('iconP2.visible',false)
    setProperty('iconP1.visible',false)
    setProperty('healthBar.visible',false)
    setProperty('healthBarBG.visible',false)

    makeLuaText('healthTextMickey','Health: 50',200,580,600)
    setTextSize('healthTextMickey',22)
    setObjectCamera('healthTextMickey','hud')
    setTextAlignment('healthTextMickey','left')
    setTextFont('healthTextMickey','MilkyNice.ttf')
    addLuaText('healthTextMickey',true)
    if getPropertyFromClass('PlayState','curStage') == 'hell' then
        setProperty('boyfriendGroup.x',550)
        setProperty('boyfriend.x',550)
    end
end
function onUpdate()
    setTextString('healthTextMickey','Health:'..math.min(100,math.floor(getProperty('health') * 50)))
    setProperty('healthTextMickey.x',getProperty('healthBar.x') + 250)
    setProperty('healthTextMickey.y',getProperty('healthBar.y') - 12)
end