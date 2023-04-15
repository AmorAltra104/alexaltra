function onCreatePost()
  initLuaShader('GlitchShader')
	makeLuaSprite('redsky', 'backgrounds/void/redsky', -600, -200)
  setProperty('redsky.antialiasing', false)
	addLuaSprite('redsky', false)
	
  setSpriteShader('redsky', 'GlitchShader')
end
elapsedTime = 0
function onUpdate(elapsed)
  elapsedTime = elapsedTime + elapsed
  setShaderFloat('redsky', 'uTime', elapsedTime)
end