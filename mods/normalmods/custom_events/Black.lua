-- Event notes hooks
function onEvent(name, value1, value2)
	if name == 'Black' then
		duration = tonumber(value1);
		if duration < 0 then
			duration = 0;
		end

		targetAlpha = tonumber(value2);
		if duration == 0 then
			setProperty('black.alpha', targetAlpha);
		else
			doTweenAlpha('blackFadeEventTween', 'black', targetAlpha, duration, 'linear');
		end
		--debugPrint('Event triggered: ', name, duration, targetAlpha);
	end
end