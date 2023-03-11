local foundedSound = false
local songsCutscene = {'Wistfulness','Wistfulness Old','Unknown Suffering','Unknown Suffering Old','Last Day','Last Day Old','Sunsets','Sunsets Old','Hellhole','Versiculus Iratus'}
function onCreate()
    for songsCutsceneLength = 1,#songsCutscene do
        if songName == songsCutscene[songsCutsceneLength] and foundedSound == false then
            foundedSound = true
        end
    end
end
local allowCountDown = false
function onStartCountdown()
    if foundedSound == true and allowCountDown == false and isStoryMode and not seenCutscene then
        if songName == 'Wistfulness' or songName == 'Wistfulness Old' then
            startVideo('StoryStart')
        elseif songName == 'Unknown Suffering' or songName == 'Unknown Suffering Old' then
            startVideo('TransformUN')
        elseif songName == 'Sunsets' or songName == 'Sunsets Old' then
            startVideo('Good ending cinematica')
        elseif songName == 'Last Day' or songName == 'Last Day Old' then
            startVideo('Portal')
        elseif songName == 'Versiculus Iratus' then
            startVideo('good ending oh no')

        elseif songName == 'Hellhole' then
            startVideo('LD + HH')
        end
        allowCountDown = true
        return Function_Stop;
    end
    return Function_Continue;
end