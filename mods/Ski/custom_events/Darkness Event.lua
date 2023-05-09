local isTrans = false 

function onEvent(name, value1, value2)
	if name == 'Darkness Event' then
			isTrans = value1
end
end

function onUpdatePost()
	if isTrans == 'false' then
		setProperty('room.alpha', 1)
		setProperty('newHealth.alpha', 1)
		setProperty('healthRed.alpha', 1)
		setProperty('healthYellow.alpha', 1)
		setProperty('healthPurple.alpha', 0)
		setProperty('accText.alpha', 1)
		setProperty('healthText.alpha', 1)
		setProperty('levelText.alpha', 1)
		setProperty('timeText.alpha', 1)
		setProperty('songNameText.alpha', 1)
		setProperty('timeButton.alpha', 1)
		setProperty('timeBar.alpha', 1)
		setProperty('timeBarBG.alpha', 1)
		setProperty('showRating', true)
		setProperty('showComboNum', true)
	elseif isTrans == 'true' then
		setProperty('room.alpha', 0)
		setProperty('newHealth.alpha', 0)
		setProperty('healthRed.alpha', 0)
		setProperty('healthYellow.alpha', 0)
		setProperty('healthPurple.alpha', 0)
		setProperty('accText.alpha', 0)
		setProperty('healthText.alpha', 0)
		setProperty('levelText.alpha', 0)
		setProperty('timeText.alpha', 0)
		setProperty('songNameText.alpha', 0)
		setProperty('timeButton.alpha', 0)
		setProperty('timeBar.alpha', 0)
		setProperty('timeBarBG.alpha', 0)
		setProperty('showRating', false)
		setProperty('showComboNum', false)			
end
end