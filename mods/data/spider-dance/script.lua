function onCreatePost()
	if difficultyName == "Normal" then
		for i= 0, getProperty('unspawnNotes.length')-1 do
              if getPropertyFromGroup('unspawnNotes', i, 'mustPress') and getPropertyFromGroup('unspawnNotes', i, 'noteType') == '' then
	                  setPropertyFromGroup('unspawnNotes', i, 'texture', 'Note Skins/purple')
	                  setPropertyFromGroup('unspawnNotes', i, 'noteSplashTexture', 'Note Skins/purpleSplash')
end
end
		for a= 0,3,1 do
					  setPropertyFromGroup('playerStrums', a, 'texture', 'Note Skins/purple')
end
end
end
