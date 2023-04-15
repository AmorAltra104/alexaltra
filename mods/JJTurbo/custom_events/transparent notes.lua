function onEvent(name, value1, value2)
	if name == "transparent notes" then
		if value1 == 'on' then
	noteTweenAlpha("dave n bambi", 4, 0.5, 1, "linear")
	noteTweenAlpha("odd noise intesifies", 5, 0.5, 1, "linear")
	noteTweenAlpha("note", 6, 0.5, 1, "linear")
	noteTweenAlpha("susy bitch", 7, 0.5, 1, "linear")

end
end

	if value2 == 'off' then
	noteTweenAlpha("dave n bambi", 4, 1, 0.5, "linear")
	noteTweenAlpha("odd noise intesifies", 5, 1, 0.5, "linear")
	noteTweenAlpha("note", 6, 1, 0.5, "linear")
	noteTweenAlpha("susy bitch", 7, 1, 0.5, "linear")

end
end