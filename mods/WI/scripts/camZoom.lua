local bfZoom = 1
local dadZoom = 0.8
local gfZoom = 0.65

local currentTarget = ''
local enableZoom = true
local currentZoom = 0.8
function onCreatePost()
    if songName == 'Unknown Suffering' then
        dadZoom = 0.72
        bfZoom = 0.82
    elseif songName == 'Needle Mouse' or songName == 'Needle-Mouse-Old' then
        enableZoom = false
    end
    if getPropertyFromClass('PlayState','curStage') == 'vesania' then
        dadZoom = 0.65
        bfZoom = 0.7
        gfZoom = 0.65

    elseif getPropertyFromClass('PlayState','curStage') == 'vecindario' then
        dadZoom = 0.7
        bfZoom = 0.9

    elseif getPropertyFromClass('PlayState','curStage') == 'inferno' then
        gfZoom = 0.6

    elseif getPropertyFromClass('PlayState','curStage') == 'stageLeakers' then
        bfZoom = 0.75
        dadZoom = 0.73
        gfZoom = 0.7
        setProperty('camZooming',true)
    elseif getPropertyFromClass('PlayState','curStage') == 'jankacStage' then
        bfZoom = 0.7
        dadZoom = 0.65

    elseif getPropertyFromClass('PlayState','curStage') == 'hell' and songName == 'Versiculus Iratus' then
        dadZoom = 1

    elseif getPropertyFromClass('PlayState','curStage') == 'toyland' then
        bfZoom = 0.5
        dadZoom = 0.5
    elseif getPropertyFromClass('PlayState','curStage') == 'chedder' then
        dadZoom = 0.7
    end
end
function onUpdate()
    if getPropertyFromClass('PlayState','curStage') == 'vecindario' and songName == 'Dejection' then
        if curStep == 656 then
            dadZoom = 1.1
            bfZoom = 1.1
        end
    elseif getPropertyFromClass('PlayState','curStage') == 'bobux' and songName == 'Unknown Suffering' then
        if curStep > 129 and curStep < 223 then
            dadZoom = getProperty('defaultCamZoom') - 0.2
            bfZoom = getProperty('defaultCamZoom')
        end
    elseif getPropertyFromClass('PlayState','curStage') == 'stageLeakers' and songName == 'Leak ma Balls' then
        if curStep < 192 then
            gfZoom = 0.85
        elseif curStep == 192 then
            gfZoom = 0.7
        end
    end
    if enableZoom == true then
        if gfSection == false or gfSection == nil then
            if mustHitSection == false then
                if currentTarget ~= 'dad' or currentZoom ~= dadZoom then
                    setProperty('defaultCamZoom',dadZoom)
                    currentTarget = 'dad'
                    currentZoom = dadZoom
                end
                
            else
                if currentTarget ~= 'boyfriend' or currentZoom ~= bfZoom then
                    setProperty('defaultCamZoom',bfZoom)
                    currentTarget = 'boyfriend'
                    currentZoom = bfZoom
                end
            end
        else
            if currentTarget ~= 'gf' or currentZoom ~= gfZoom then
                setProperty('defaultCamZoom',gfZoom)
                currentTarget = 'gf'
                currentZoom = gfZoom
            end
        end
    end
end
function onStepHit()
    if songName == 'Wistfulness' then
        if curStep == 271 then
            dadZoom = 1
        
        elseif curStep == 527 then
            dadZoom = 1.1
        elseif curStep == 544 then
            dadZoom = 0.8
        end
    elseif songName == 'Needle Mouse' or songName == 'Needle-Mouse-Old' then
        if curStep == 128 then
            enableZoom = true
        end
    elseif songName == 'Untold Loneliness' then
        if curStep == 696 then
            dadZoom = 1.3
            bfZoom = 1.3
        elseif curStep == 1208 then
            bfZoom = 1
            dadZoom = 0.8
        end
    elseif songName == "Kriman't" then
        if curStep == 928 then
            dadZoom = 1
            
        elseif curStep == 1120 then
            dadZoom = 0.7
            bfZoom = 0.8
        end
    elseif songName == 'Versiculus Iratus' then
        if curStep == 512 or curStep == 1792 then
            dadZoom = 0.7
            bfZoom = 0.9
        elseif curStep == 1728 or curStep == 2302 then
            dadZoom = 0.65
            bfZoom = 0.65
        elseif curStep == 2303 then
            enableZoom = false
        end

    elseif songName == 'Hellhole' then
        if curStep == 2384 or curStep == 3552 then
            bfZoom = 1.2
            dadZoom = 1.2
        elseif curStep == 2912 then
            bfZoom = 1
            dadZoom = 0.8
        end
    elseif songName == 'Too Slow' then
        if curStep == 928 then
            dadZoom = 1.2
        elseif curStep == 1012 then
            dadZoom = 1
        elseif curStep == 1055 then
            dadZoom = 0.8
        end
    end
end