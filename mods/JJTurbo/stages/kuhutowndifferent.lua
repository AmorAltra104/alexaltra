function onCreate()
	-- background shit
	makeLuaSprite('theSky','sky',-775,-350)
	addLuaSprite('theSky',false)
	setLuaSpriteScrollFactor('sky', 1,1)

	makeLuaSprite('bridge','bridge',700,0)
	addLuaSprite('bridge',false)
	setLuaSpriteScrollFactor('bridge', 0.8,0.8)

	makeLuaSprite('mountain','mountain',-775,-425)
	addLuaSprite('mountain',false)
	setLuaSpriteScrollFactor('bridge', 0.7,0.7);

	makeLuaSprite('theGround','street',-775,-150)
	addLuaSprite('theGround',false)

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end