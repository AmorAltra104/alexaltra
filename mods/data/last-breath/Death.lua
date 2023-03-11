function onCreate()
	setPropertyFromClass('GameOverSubstate', 'characterName', 'deathgod'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'goddamn'); --put in mods/sounds/
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'nothingness'); --put in mods/music/
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEnd'); --put in mods/music/
end