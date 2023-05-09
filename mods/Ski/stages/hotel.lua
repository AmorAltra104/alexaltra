function onCreate()	
	makeLuaSprite('room', 'hotel', -1300, -1000)
    setProperty('room.antialiasing', false)
	scaleObject('room', 10, 10)
	addLuaSprite('room', false)
	
	makeAnimatedLuaSprite('fountain', 'HOTEL/fountain', 200, 80)
	addAnimationByPrefix('fountain', 'fountain', 'fountain', 3, true)
	playAnim('fountain', 'fountain', true)
	scaleObject('fountain', 10, 10)
	setProperty('fountain.antialiasing', false)
	addLuaSprite('fountain', false)
	
	makeAnimatedLuaSprite('water', 'HOTEL/water', 60, 100)
	addAnimationByPrefix('water', 'water', 'water', 3, true)
	playAnim('water', 'water', true)
	scaleObject('water', 10, 10)
	setProperty('water.antialiasing', false)
	addLuaSprite('water', false)
	
	makeAnimatedLuaSprite('puddle', 'HOTEL/puddle', -50, 700)
	addAnimationByPrefix('puddle', 'puddle', 'puddle', 3, true)
	playAnim('puddle', 'puddle', true)
	scaleObject('puddle', 10, 10)
	setProperty('puddle.antialiasing', false)
	addLuaSprite('puddle', false)
end
			  
	         

		          