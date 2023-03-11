local enabledLuaCharacter = false
local characterOffset = {{{'idle',0,0},{'singLEFT',-20,110},{'singDOWN',-20,-10},{'singUP',-10,180},{'singRIGHT',-20,-10},{'leakers',0,10}}}
local charactersCreated = {}
local charactersHoldTime = {}
function onCreatePost()
    if songName == 'Leak ma Balls' then
        makeAnimatedLuaSprite('satan-leaked','characters/leakers/SATAN LEAKERS',-70,160)
        addAnimationByPrefix('satan-leaked','idle','SATAN IDLE',0,true)
        addAnimationByPrefix('satan-leaked','singLEFT','SATAN LEFT',24,false)
        addAnimationByPrefix('satan-leaked','singDOWN','SATAN DOWN',24,false)
        addAnimationByPrefix('satan-leaked','singUP','SATAN UP',24,false)
        addAnimationByPrefix('satan-leaked','singRIGHT','SATAN RIGHT',24,false)
        addAnimationByPrefix('satan-leaked','leakers','SATAN DIALOGUE 1',24,false)
        addLuaSprite('satan-leaked',false)
        table.insert(charactersCreated,'satan-leaked')
        table.insert(charactersHoldTime,4)
        enabledLuaCharacter = true
    end
end
function onUpdate()
    if enabledLuaCharacter == true then
        for characterLength = 1,#charactersCreated do
            if getProperty(charactersCreated[characterLength]..'.animation.curAnim.finished') == true then
                if charactersCreated[characterLength] == 'satan-leaked' then
                    setProperty(charactersCreated[characterLength]..'.alpha',0.001)
                end
            else
                if charactersCreated[characterLength] == 'satan-leaked' then
                    setProperty(charactersCreated[characterLength]..'.alpha',1)
                end
            end
            for anims = 1,#characterOffset[characterLength] do
                if getProperty(charactersCreated[characterLength]..'.animation.curAnim.name') == characterOffset[characterLength][anims][1] then
                    setProperty(charactersCreated[characterLength]..'.offset.x',characterOffset[characterLength][anims][2])
                    setProperty(charactersCreated[characterLength]..'.offset.y',characterOffset[characterLength][anims][3])
                end
            end
        end
    end
end
function onStepHit()
    if songName == 'Leak ma Balls' and curStep == 16 and enabledLuaCharacter == true then
        objectPlayAnimation('satan-leaked','leakers',true)
    end
end

local characterSingAnims = {'singLEFT','singDOWN','singUP','singRIGHT'}
function opponentNoteHit(id,noteData,noteType,sus)
    if noteType == 'Devil Sing' and enabledLuaCharacter == true then
        for charactersLength = 1,#charactersCreated do
            if charactersCreated[charactersLength] == 'satan-leaked' then
                objectPlayAnimation('satan-leaked',characterSingAnims[noteData + 1],true)
            end
        end
    end
end
