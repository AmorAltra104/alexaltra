function onBeatHit()
  if curBeat == 176 then
    setProperty('dad.skipDance', true)
  elseif curBeat == 196 then
    setProperty('dad.skipDance', false)
  elseif curBeat == 294 then
    callOnLuas('forceMoveCam', {'dad'})
  end
end
function onEvent(n, v1, v2)
  if n:lower() == 'change character' then
    if curBeat < 293 then
      if v2 == 'dave-angey' then
        setProperty('redsky_2.visible', true)
        playSound('static')
      else
        setProperty('redsky_2.visible', false)
      end
    else
      if v2 == 'dave-angey' then
        setProperty('redsky.visible', true)
        playSound('static')
      else
        setProperty('dad.skipDance', true)
      end
    end
  end
end
function onCreatePost()
  initLuaShader('GlitchShader')
  
  makeLuaSprite('redsky_2', 'backgrounds/void/redsky_insanity', -600, -200)
  setProperty('redsky_2.antialiasing', false)
  setProperty('redsky_2.visible', false)
  setProperty('redsky_2.alpha', 0.75)
	addLuaSprite('redsky_2')
  
	makeLuaSprite('redsky', 'backgrounds/void/redsky', -600, -200)
  setProperty('redsky.antialiasing', false)
  setProperty('redsky.visible', false)
	addLuaSprite('redsky')
  
  
	
  setSpriteShader('redsky', 'GlitchShader')
  setSpriteShader('redsky_2', 'GlitchShader')
end
elapsedTime = 0
function onUpdate(elapsed)
  elapsedTime = elapsedTime + elapsed
  setShaderFloat('redsky', 'uTime', elapsedTime)
  setShaderFloat('redsky_2', 'uTime', elapsedTime)
end