function onCreate()

	setPropertyFromClass('GameOverSubstate', 'characterName', 'neobf-dead'); --Character json file for the death animation
   	 setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx'); --put in mods/sounds/
   	 setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameOver_alt'); --put in mods/music/
    	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEnd'); --put in mods/music/

end
