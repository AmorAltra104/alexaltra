function onCreate()
	shopRandom = getRandomInt(1, 3)

	makeLuaSprite('room', 'songSHOP/BG' .. shopRandom, -200, 390)
    setProperty('room.antialiasing', false)
	scaleObject('room', 4, 4)
	addLuaSprite('room', false)
	
	makeLuaSprite('room1', 'songSHOP/FG' .. shopRandom, -200, 870)
    setProperty('room1.antialiasing', false)
	scaleObject('room1', 4, 4)
	addLuaSprite('room1', true)
end

function onSongStart()
	if shopRandom == 1 then
	    setTimeBarColors('DDA76A', 'D97E64')
	elseif shopRandom == 2 then
	    setTimeBarColors('AE6ACF', '3535A6')
	elseif shopRandom == 3 then
	    setTimeBarColors('9D8E26', '583B26')
end
end
			  
	         

		          