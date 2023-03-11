function onCreate()
if boyfriendName == 'camellia-c' then
	setPropertyFromClass('GameOverSubstate', 'characterName', 'camellia-c'); --Character json file for the death animation
   	 setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx_camellia'); --put in mods/sounds/
   	 setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameOver'); --put in mods/music/
    	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEnd'); --put in mods/music/

end
end