local DadX = 0
local DadY = 0
local BfX = 0
local BfY = 0

function onUpdate()
    if gfSection == false or gfSection == nil then
        if mustHitSection == false then
            DadX = getMidpointX('dad') + 150 + getProperty('dad.cameraPosition[0]') + getProperty('opponentCameraOffset[0]')
            DadY = getMidpointY('dad') - 100 + getProperty('dad.cameraPosition[1]') + getProperty('opponentCameraOffset[1]')
        else
            BfX = getMidpointX('boyfriend') - 100 - getProperty('boyfriend.cameraPosition[0]') + getProperty('boyfriendCameraOffset[0]')
            BfY = getMidpointY('boyfriend') - 100 + getProperty('boyfriend.cameraPosition[1]') + getProperty('boyfriendCameraOffset[1]')
        end
    end
    if curStep == 58 then
        BfX = getMidpointX('boyfriend') - 100 - getProperty('boyfriend.cameraPosition[0]') + getProperty('boyfriendCameraOffset[0]')
        BfY = getMidpointY('boyfriend') - 100 + getProperty('boyfriend.cameraPosition[1]') + getProperty('boyfriendCameraOffset[1]')
        triggerEvent('Camera Follow Pos',BfX + 200,BfY)
    elseif curStep == 192 then
        triggerEvent('Camera Follow Pos',DadX,DadY)
    elseif curStep == 201 then
        triggerEvent('Camera Follow Pos',DadX - 70,DadY)

    elseif curStep == 219 then
        triggerEvent('Camera Follow Pos',DadX - 100,DadY - 10)

    elseif curStep == 241 then
        triggerEvent('Camera Follow Pos',DadX - 105,DadY - 15)

    elseif curStep == 259 then
        triggerEvent('Camera Follow Pos',DadX - 60,DadY - 15)
    elseif curStep == 266 then
        triggerEvent('Camera Follow Pos',DadX,DadY)
    elseif curStep == 286 or curStep == 309 then
        triggerEvent('Camera Follow Pos',DadX,DadY + 15)
    elseif curStep == 287 then
        triggerEvent('Camera Follow Pos',DadX + 30,DadY)
    elseif curStep == 312 then
        triggerEvent('Camera Follow Pos',DadX - 10,DadY)

    --Book Cutscene
    elseif curStep == 961 then
        triggerEvent('Camera Follow Pos',DadX + 10,DadY)

    elseif curStep == 973 then
        triggerEvent('Camera Follow Pos',DadX - 10,DadY + 10)
    elseif curStep == 974 then
        triggerEvent('Camera Follow Pos',DadX - 10,DadY - 10)
    elseif curStep == 975 then
        triggerEvent('Camera Follow Pos',DadX - 10,DadY)

    elseif curStep == 996 then
        triggerEvent('Camera Follow Pos',DadX + 10,DadY - 10)

    elseif curStep == 1006 then
        triggerEvent('Camera Follow Pos',DadX - 20,DadY + 5)
    elseif curStep == 1015 then
        triggerEvent('Camera Follow Pos',DadX - 20,DadY - 10)
        
    elseif curStep == 1026 then
        triggerEvent('Camera Follow Pos',DadX + 20,DadY - 10)

    elseif curStep == 1035 then
        triggerEvent('Camera Follow Pos',DadX + 25,DadY - 5)

    elseif curStep == 1045 then
        triggerEvent('Camera Follow Pos',DadX - 25,DadY)

    elseif curStep == 1053 then
        triggerEvent('Camera Follow Pos',DadX - 35,DadY - 10)

    elseif curStep == 1058 then
        triggerEvent('Camera Follow Pos',DadX + 10,DadY - 20)

    elseif curStep == 1061 then
        triggerEvent('Camera Follow Pos',DadX - 20,DadY)

    elseif curStep == 1076 then
        triggerEvent('Camera Follow Pos',DadX - 20,DadY - 10)

    elseif curStep == 320 or curStep == 1087 then
        triggerEvent('Camera Follow Pos','','')
    end
end