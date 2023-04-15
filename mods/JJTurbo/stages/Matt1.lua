function onCreate()

  makeLuaSprite('Arena','arena-bg',-550,-300)
  addLuaSprite('Arena',false)
 
  makeAnimatedLuaSprite('audience','arena-characters',-900,-30)
  addAnimationByPrefix('audience','bg','bgcharacters',24,true)
  addLuaSprite('audience',false)
  objectPlayAnimation('audience','bg',false)

  makeLuaSprite('Railing','railing',-550,219)
  addLuaSprite('Railing',false)



	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end