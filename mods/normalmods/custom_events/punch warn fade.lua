-- Event notes hooks
function onEvent(name, value1, value2)
	if name == 'punch warn fade' then
		duration = tonumber(value1);
		if duration < 0 then
			duration = 0;
		end

		targetAlpha = tonumber(value2);
		if duration == 0 then
			setProperty('punch warn.alpha', targetAlpha);
		else
			doTweenAlpha('punch warnFadeEventTween', 'punch warn', targetAlpha, duration, 'linear');
		end
		--debugPrint('Event triggered: ', name, duration, targetAlpha);
	end
end