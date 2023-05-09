local allowCountdown = false

function opponentNoteHit()
       health = getProperty('health')
    if getProperty('health') > 0.075 then
       setProperty('health', health- 0.016);
	end
end

function onCreate()
	setPropertyFromClass('GameOverSubstate', 'characterName', 'bf-ex'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx'); --put in mods/sounds/
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameOver'); --put in mods/music/
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEnd'); --put in mods/music/
end