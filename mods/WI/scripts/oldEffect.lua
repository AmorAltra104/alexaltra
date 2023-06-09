local dontCreateTheStaticInThisSongs = {"Kriman't"}
local foundedSound = false
function onCreate()
    for songsLength = 1,#dontCreateTheStaticInThisSongs do
        if string.find(songName,dontCreateTheStaticInThisSongs[songsLength],0,true) ~= nil then
            foundedSound = true
        end
    end
    if foundedSound == false then
        makeAnimatedLuaSprite('mickeyStatic','daSTAT',0,0)
        addAnimationByPrefix('mickeyStatic','idle','staticFLASH',24,true)
        setObjectCamera('mickeyStatic','other')
        scaleObject('mickeyStatic',3.3,2.5)
        setProperty('mickeyStatic.alpha',0.05)
        addLuaSprite('mickeyStatic',true)

        makeAnimatedLuaSprite('mickeyGrain','grain',0,0)
        addAnimationByPrefix('mickeyGrain','idle','grain',24,true)
        setObjectCamera('mickeyGrain','other')
        scaleObject('mickeyGrain',1.25,1.25)
        addLuaSprite('mickeyGrain',true)
        close()
    else
        close()
    end
end