function onUpdate()
	for i = 0,3 do
	setPropertyFromGroup('strumLineNotes',i,'x',9999)
	--setPropertyFromGroup('strumLineNotes', i, 'alpha', 0)
	end
        setPropertyFromGroup('playerStrums', 0, 'x', 410)
        setPropertyFromGroup('playerStrums', 1, 'x', 522)
        setPropertyFromGroup('playerStrums', 2, 'x', 633)
        setPropertyFromGroup('playerStrums', 3, 'x', 745)
end
