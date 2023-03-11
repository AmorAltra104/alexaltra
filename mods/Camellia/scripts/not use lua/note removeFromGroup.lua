function onCreatePost()
for i =0,getProperty('unspawnNotes.length')+7 do
if getPropertyFromGroup('unspawnNotes',i,'NoteType') =='Hurt Note' then 
removeFromGroup('unspawnNotes', i)
end
end
end
