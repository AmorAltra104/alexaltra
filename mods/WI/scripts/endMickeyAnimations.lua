local foundedMickey = false
local precachedImage = false
local mickeyCharacter = 'dad'
local characterPlaying = false
function onUpdate()
    if string.find(getProperty('dad.curCharacter'),'leakermouse') ~= nil or string.find(getProperty('boyfriend.curCharacter'),'leakermouse') ~= nil then
        foundedMickey = true
        if string.find(getProperty('dad.curCharacter'),'leakermouse') ~= nil then
            mickeyCharacter = 'dad'

        elseif string.find(getProperty('boyfriend.curCharacter'),'leakermouse') ~= nil then
            mickeyCharacter = 'boyfriend'
        end
    else
        foundedMickey = false
    end
    if precachedImage == false and foundedMickey == true then
        for eventNotes = 0,getProperty('eventNotes.length')-1 do
            if  getPropertyFromGroup('eventNotes',eventNotes,'event') == 'Play Animation' then
                if getPropertyFromGroup('eventNotes',eventNotes,'value1') == 'waifu' then
                    addCharacterToList('leakermouse-book',getPropertyFromGroup('eventNotes',eventNotes,'value2'))
                end
            end
        end
    end
    if foundedMickey == true then
        if getProperty(mickeyCharacter..'.animation.curAnim.finished') == true and getProperty(mickeyCharacter..'.animation.curAnim.name') == 'wafiu' then
            triggerEvent('Change Character',mickeyCharacter,'leakermouse')
        end
    end
    if getProperty(mickeyCharacter..'.curCharacter') == 'leakermouse-dialogues' then
        characterPlaying = true
    else
        characterPlaying = false
    end
end
function opponentNoteHit(id,noteData,noteType,sus)
    if characterPlaying == true and getPropertyFromGroup('notes',id,'noAnimation') == false and getProperty('dad.animation.curAnim.name') == 'wafiu' then
        triggerEvent('Change Character','dad','leakermouse')
    end
end