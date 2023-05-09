function onCreatePost()
	if difficultyName == "Normal" then
					  noteTweenX('yellowNoteTween1X', 4, 680, 0.01, 'linear')
					  noteTweenX('yellowNoteTween2X', 5, 790, 0.01, 'linear')
		for i= 0, getProperty('unspawnNotes.length')-1 do
              if getPropertyFromGroup('unspawnNotes', i, 'mustPress') and getPropertyFromGroup('unspawnNotes', i, 'noteType') == '' then
	                  setPropertyFromGroup('unspawnNotes', i, 'texture', 'Note Skins/yellow')
	                  setPropertyFromGroup('unspawnNotes', i, 'noteSplashTexture', 'Note Skins/yellowSplash')
end
end
		for a= 0,3,1 do
					  setPropertyFromGroup('playerStrums', a, 'texture', 'Note Skins/yellow')
end
end
end