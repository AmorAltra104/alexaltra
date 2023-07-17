--GATO CHISTOSO MADE THIS SHIT PLEASE CREDIT AWUIGHAJSDKF
function onCreate()

    makeAnimatedLuaSprite('ghost', 'GHOST_BF', getProperty('boyfriend.x'), getProperty('boyfriend.y') -20);
    addAnimationByPrefix('ghost', 'first', 'Echo Shield', 24, false);
    addAnimationByPrefix('ghost', 'left', 'Echo Attack Left', 24, false);
    addAnimationByPrefix('ghost', 'right', 'Echo Attack Right', 24, false);
    addAnimationByPrefix('ghost', 'up', 'Echo Attack Up', 24, false);
    addAnimationByPrefix('ghost', 'down', 'Echo Attack Down', 24, false);
    addAnimationByPrefix('ghost', 'back', 'Echo Attack FistThrow', 24, false);
    setProperty('ghost.alpha', 0)
    objectPlayAnimation('ghost', 'first', true);
    addLuaSprite('ghost', true)

    shit = false;

    dadx = getProperty('dad.x')
    dady = getProperty('dad.y')
    bfx = getProperty('boyfriend.x')
    bfy = getProperty('boyfriend.y')
    dad = getObjectOrder('dad')
end

function onUpdate()
    if shit == true then
        function goodNoteHit(id, noteData, noteType, isSustainNote)
            if noteData == 0 then
                setProperty('ghost.x', bfx -200)
                setProperty('ghost.y', bfy)
                objectPlayAnimation('ghost', 'left', false)
            end
            if noteData == 2 then
                setProperty('ghost.x', bfx -200)
                setProperty('ghost.y', bfy -10)
                objectPlayAnimation('ghost', 'up', false)
            end
            if noteData == 1 then
                setProperty('ghost.x', bfx -185)
                setProperty('ghost.y', bfy +30)
                objectPlayAnimation('ghost', 'down', false)
            end
            if noteData == 3 then
                setProperty('ghost.x', bfx -200)
                setProperty('ghost.y', bfy -20)
                objectPlayAnimation('ghost', 'right', false)
            end
        end

        function onBeatHit()
            if curBeat % 3 == 0 then
                setObjectOrder('ghost', 9)
                objectPlayAnimation('ghost', 'first', false);
                setProperty('ghost.x', bfx -50)
                setProperty('ghost.y', bfy -20)
            else
                setObjectOrder('ghost', 10)
            end
        end
    end
    if shit == false then
        function goodNoteHit(id, noteData, noteType, isSustainNote)
            --do nothing
        end
        function onBeatHit()
            if curBeat % 2 == 0 then
                -- do nothing
            end
        end
    end
end

function onEvent(name, value1, value2)
    if name == "bf_ghost_mechanic" then
        if value1 == '1' then
            setProperty('ghost.alpha', 0.4)
            doTweenX('start1', 'ghost', bfx -50, 0.3, 'cubeOut')
            doTweenX('start2', 'boyfriend', bfx +300, 0.3, 'cubeOut')
            objectPlayAnimation('ghost', 'first');
            shit = true
        end
        if value2 == '2' then
            shit = false
            setProperty('ghost.alpha', 0.4)
            objectPlayAnimation('ghost', 'back')
            setProperty('ghost.flipX', true)
            setProperty('ghost.x', dadx -450)
        end
        if value1 == '0' and shit == true then  
            doTweenAlpha('bye', 'ghost', 0, 0.2, 'cubeIn')
            doTweenX('bye2', 'ghost', bfx, 0.3, 'cubeOut')
            doTweenX('bye3', 'boyfriend', bfx, 0.3, 'cubeOut')
        end
        if value2 == '0' and shit == false then
            setProperty('ghost.flipX', false)
            doTweenAlpha('bye', 'ghost', 0, 0.2, 'cubeIn')
            doTweenX('bye2', 'ghost', bfx, 0.3, 'cubeOut')
        end
    end
end