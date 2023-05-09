function onCreatePost()
		for i= 0, getProperty('unspawnNotes.length')-1 do
              if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
				if getPropertyFromGroup('unspawnNotes', i, 'noteData') == 0 or getPropertyFromGroup('unspawnNotes', i, 'noteData') == 1 then
	                  setPropertyFromGroup('unspawnNotes', i, 'texture', 'Note Skins/switchBlue')
	                  setPropertyFromGroup('unspawnNotes', i, 'noteSplashTexture', 'Note Skins/switchBlueSplash')
				elseif getPropertyFromGroup('unspawnNotes', i, 'noteData') == 2 or getPropertyFromGroup('unspawnNotes', i, 'noteData') == 3 then
	                  setPropertyFromGroup('unspawnNotes', i, 'texture', 'Note Skins/redSwitch')
	                  setPropertyFromGroup('unspawnNotes', i, 'noteSplashTexture', 'Note Skins/redSwitchSplash')
end
end
end
					setPropertyFromGroup('playerStrums', 0, 'texture', 'Note Skins/switchBlue')
					setPropertyFromGroup('playerStrums', 1, 'texture', 'Note Skins/switchBlue')
					setPropertyFromGroup('playerStrums', 2, 'texture', 'Note Skins/redSwitch')
					setPropertyFromGroup('playerStrums', 3, 'texture', 'Note Skins/redSwitch')
end