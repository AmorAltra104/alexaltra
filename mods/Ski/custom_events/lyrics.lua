function onCreatePost()
	makeLuaText('Lyrics', (value1), 1250, 0, 480)
	setTextAlignment('Lyrics', 'Center')
	addLuaText('Lyrics')
	setTextFont('Lyrics', "MonoAlt.ttf")
	setObjectCamera('Lyrics', 'other')
	setTextSize('Lyrics', 28)
end
function onEvent(name, value1, value2)
	if name == 'lyrics' then
		setTextString('Lyrics', (value1));
		if value2 == '' then
		    --do nothing lol
		else
		setTextFont('Lyrics', (value2))
		end
	end
end



--Comical Chaos made this event
--https://en.pronouns.page/@ComicalChaos