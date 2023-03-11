local bordersSize = 110
local dontCreateTheCinematicInThisSongs = 
{
    'Wistfulness',
    'Dejection',
    'Sunsets',
    'Versiculus Iratus',
    'Hellhole',
    'Carnival in Toyland',
    'Spring March',
    'Hunger Pangs',
    'Cravings',
    'Needle Mouse',
    'Unknown Defeat',
    'Corpse',
    'Too Slow',
    'Battered',
    'Accelerant',
    'Vesania',
    'Leak ma Balls',
    'Untold Loneliness',
    "Kriman't",
    'Clubhouse'
}
local foundedTheSound = false
local targetBordersY = {}
function onCreate()
    for songsLength = 1,#dontCreateTheCinematicInThisSongs do
        if dontCreateTheCinematicInThisSongs[songsLength] == songName or  string.find(songName,dontCreateTheCinematicInThisSongs[songsLength],0,true) ~= nil then
            foundedTheSound = true
        end
    end
    if foundedTheSound == false then
        makeLuaSprite('cinematicMickeyBorder1',nil,0,0)
        makeLuaSprite('cinematicMickeyBorder2',nil,0,screenHeight - bordersSize)
        for borders = 1,2 do
            makeGraphic('cinematicMickeyBorder'..borders,screenWidth,bordersSize,'000000')
            setObjectCamera('cinematicMickeyBorder'..borders,'hud')
            addLuaSprite('cinematicMickeyBorder'..borders,false)
        end
    end
end