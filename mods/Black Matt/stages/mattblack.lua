
function onCreate()

  makeLuaSprite('space','the space', -950, -300)
  addLuaSprite('space',false)
  setLuaSpriteScrollFactor('space', 0.05, 0.0);

  makeLuaSprite('rocks','the rocks', -950, -300)
  addLuaSprite('rocks',false)
  setLuaSpriteScrollFactor('rocks', 0.1, 0.1);

  makeLuaSprite('pla','the planets', -850, -200)
  addLuaSprite('pla',false)
  setLuaSpriteScrollFactor('pla', 0.3, 0.3);
  scaleObject('pla', 0.9, 0.9);

  makeLuaSprite('rock','the float', -950, -300)
  addLuaSprite('rock',false)
  setLuaSpriteScrollFactor('rock', 0.5, 0.5);

  makeLuaSprite('staeg','the behind stage', -850, -200)
  addLuaSprite('staeg',false)
  setLuaSpriteScrollFactor('staeg', 0.85, 0.85);
  scaleObject('staeg', 0.9, 0.9);

  makeLuaSprite('stag','the stage', -950, -300)
  addLuaSprite('stag',false)
  setLuaSpriteScrollFactor('stag', 1, 1);

  makeLuaSprite('stafg','the front', -900, -250)
  addLuaSprite('stafg',true)
  setLuaSpriteScrollFactor('stafg', 1.4, 1.4);

  makeLuaSprite('sace','the overlay', -950, -300)
  addLuaSprite('sace',true)
  setLuaSpriteScrollFactor('sace', 0.05, 0.0);

  makeLuaSprite('bar1','za bar', 0, -295)
  addLuaSprite('bar1',true)
  setLuaSpriteScrollFactor('bar1', 0.0, 0.0);

  makeLuaSprite('bar2','za bar', 0, 665)
  addLuaSprite('bar2',true)
  setLuaSpriteScrollFactor('bar2', 0.0, 0.0);

  setObjectCamera("bar1","hud")
  setObjectCamera("bar2","hud");

end

function onUpdate(elapsed)

	if curStep >= 0 then
	  songPos = getSongPosition()
	  local currentBeat = (songPos/1000)*(bpm/170)
	  doTweenY('balls1', 'rock', -255-70*math.sin((currentBeat*0.25)*math.pi),0.001)
	end

  if curStep >= 0 then
	  songPos = getSongPosition()
	  local currentBeat = (songPos/1000)*(bpm/20)
	  doTweenY('balls2', 'dad', -55-50*math.sin((currentBeat*0.25)*math.pi),0.001)
	end

end