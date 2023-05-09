local pets = true

crab = {
    image = "pets/crab",
    posX = 250,
    posY = 350
}

dog = {
    image = "pets/dog",
    posX = 180,
    posY = 245
}

elliepet = {
    image = "pets/ellie",
    posX = 250,
    posY = 300
}

frankendog = {
    image = "pets/frankendog",
    posX = 180,
    posY = 245
}

ham = {
    image = "pets/ham",
    posX = 250,
    posY = 350
}

hamster = {
    image = "pets/hamster",
    posX = 250,
    posY = 300
}

minicrewmate = {
    image = "pets/minicrewmate",
    posX = 250,
    posY = 350
}

snowball = {
    image = "pets/snowball",
    posX = 250,
    posY = 300
}

stickmin = {
    image = "pets/stickmin",
    posX = 250,
    posY = 300
}

tomong = {
    image = "pets/tomong",
    posX = 250,
    posY = 325
}

ufo = {
    image = "pets/ufo",
    posX = 250,
    posY = 300
}
    
function onCreatePost()
    initSaveData('pet', 'psychenginemods')
	if getDataFromSave('pet', 'choosePet') == 'crab' then
        makeAnimatedLuaSprite('pet', crab["image"], getProperty('boyfriend.x') + crab["posX"], getProperty('boyfriend.y') + crab["posY"])
        addAnimationByPrefix('pet', 'idle', 'idle', 24, true)
	    addLuaSprite('pet', true)
    elseif getDataFromSave('pet', 'choosePet') == 'dog' then
        makeAnimatedLuaSprite('pet', dog["image"], getProperty('boyfriend.x') + dog["posX"], getProperty('boyfriend.y') + dog["posY"])
        addAnimationByPrefix('pet', 'idle', 'idle', 24, true)
	    addLuaSprite('pet', true)
	elseif getDataFromSave('pet', 'choosePet') == 'elliepet' then
        makeAnimatedLuaSprite('pet', elliepet["image"], getProperty('boyfriend.x') + elliepet["posX"], getProperty('boyfriend.y') + elliepet["posY"])
        addAnimationByPrefix('pet', 'idle', 'idle', 24, true)
	    addLuaSprite('pet', true)
	elseif getDataFromSave('pet', 'choosePet') == 'frankendog' then
        makeAnimatedLuaSprite('pet', frankendog["image"], getProperty('boyfriend.x') + frankendog["posX"], getProperty('boyfriend.y') + frankendog["posY"])
        addAnimationByPrefix('pet', 'idle', 'idle', 24, true)
	    addLuaSprite('pet', true)
	elseif getDataFromSave('pet', 'choosePet') == 'ham' then
        makeAnimatedLuaSprite('pet', ham["image"], getProperty('boyfriend.x') + ham["posX"], getProperty('boyfriend.y') + ham["posY"])
        addAnimationByPrefix('pet', 'idle', 'idle', 24, true)
	    addLuaSprite('pet', true)
	elseif getDataFromSave('pet', 'choosePet') == 'hamster' then
        makeAnimatedLuaSprite('pet', hamster["image"], getProperty('boyfriend.x') + hamster["posX"], getProperty('boyfriend.y') + hamster["posY"])
        addAnimationByPrefix('pet', 'idle', 'idle', 24, true)
	    addLuaSprite('pet', true)
	elseif getDataFromSave('pet', 'choosePet') == 'minicrewmate' then
        makeAnimatedLuaSprite('pet', minicrewmate["image"], getProperty('boyfriend.x') + minicrewmate["posX"], getProperty('boyfriend.y') + minicrewmate["posY"])
        addAnimationByPrefix('pet', 'idle', 'idle', 24, true)
	    addLuaSprite('pet', true)
	elseif getDataFromSave('pet', 'choosePet') == 'snowball' then
        makeAnimatedLuaSprite('pet', snowball["image"], getProperty('boyfriend.x') + snowball["posX"], getProperty('boyfriend.y') + snowball["posY"])
        addAnimationByPrefix('pet', 'idle', 'idle', 24, true)
	    addLuaSprite('pet', true)
	elseif getDataFromSave('pet', 'choosePet') == 'stickmin' then
        makeAnimatedLuaSprite('pet', stickmin["image"], getProperty('boyfriend.x') + stickmin["posX"], getProperty('boyfriend.y') + stickmin["posY"])
        addAnimationByPrefix('pet', 'idle', 'idle', 24, true)
	    addLuaSprite('pet', true)
	elseif getDataFromSave('pet', 'choosePet') == 'tomong' then
        makeAnimatedLuaSprite('pet', tomong["image"], getProperty('boyfriend.x') + tomong["posX"], getProperty('boyfriend.y') + tomong["posY"])
        addAnimationByPrefix('pet', 'idle', 'idle', 24, true)
	    addLuaSprite('pet', true)
	elseif getDataFromSave('pet', 'choosePet') == 'ufo' then
        makeAnimatedLuaSprite('pet', ufo["image"], getProperty('boyfriend.x') + ufo["posX"], getProperty('boyfriend.y') + ufo["posY"])
        addAnimationByPrefix('pet', 'idle', 'idle', 24, true)
	    addLuaSprite('pet', true)
	end
	
	setObjectOrder('pet', getObjectOrder('boyfriendGroup') + 1)
	
	if songName == 'ejected' or songName == 'Danger' or songName == 'Defeat' or songName == 'finale' or songName == 'Identity Crisis' or songName == 'Boiling Point' or songName == 'pretender' or songName == 'Sauces Moogus' or songName == 'turbulence' or songName == 'Voting-Time' or songName == 'spookpostor' or songName == 'Christmas' or songName == 'Greatest Plan' or songName == 'ow' or songName == 'Who' or songName == 'Idk' or songName == 'Monotone Attack' or week == 'week-credits' then
		removeLuaSprite('pet', true);
	else
		--
	end
end

function onBeatHit()
    if pets == true then
        if curBeat % getProperty('boyfriend.danceEveryNumBeats') == 0 then
            playAnim('pet', 'idle');
        end
    end
end