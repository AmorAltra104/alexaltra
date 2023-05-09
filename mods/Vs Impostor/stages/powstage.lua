local xx = 500
local yy = 600
local xx2 = 1000

function onCreate()
makeLuaSprite('bg', 'bg/images/polus/roomcodebg',-1560,-970)
scaleObject('bg', 1.2,1.2)
setLuaSpriteScrollFactor('bg', 1,1)
addLuaSprite('bg', false)

makeLuaSprite('box', 'bg/images/polus/box',-350,390)
scaleObject('box', 1.4,1.4)
setLuaSpriteScrollFactor('box', 0.9,0.9)
addLuaSprite('box', false)
end

function onUpdate()
    setProperty("gf.alpha", 0)
    if mustHitSection == false then
		triggerEvent('Camera Follow Pos',xx,yy)
	else
		triggerEvent('Camera Follow Pos',xx2,yy)
	end
end

