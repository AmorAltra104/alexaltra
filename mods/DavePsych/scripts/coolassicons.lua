function onUpdatePost()
  if not inGameOver then
    if getProperty('health') > 0.4 then
      setProperty("iconP1.scale.y", (getProperty("iconP1.scale.y") - 1) / -0.75 + 1)
      setProperty("iconP1.y", 500 + (getProperty("iconP1.scale.y") * 75))
    else
      setProperty("iconP1.scale.y", 1)
      setProperty("iconP1.scale.x", 1)
      updateHitbox('iconP1')
    end
    if getProperty('health') < 1.6 then
      setProperty("iconP2.scale.y", (getProperty("iconP2.scale.y") - 1) / -0.55 + 1)
      setProperty("iconP2.y", 500 + (getProperty("iconP2.scale.y") * 75))
    else
      setProperty("iconP2.scale.y", 1)
      setProperty("iconP2.scale.x", 1)
      updateHitbox('iconP2')
    end
    -- debugPrint(getProperty('health'))
  end
end