function onCreatePost()
	makeLuaText('currentCharter', (value1), 1250, 10, 680)
	setTextAlignment('currentCharter', 'left')
	addLuaText('currentCharter')
	setTextSize('currentCharter',20)
end
function onEvent(name, value1, value2)
	if name == 'chartthing' then
		setTextString('currentCharter', (value1));

		end
	end

