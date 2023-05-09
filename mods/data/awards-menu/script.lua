local makeAwardX = -86
local makeAwardY = 207
local curAward = 1      

local awardTitles = {
  "Welcome To The UNDERGROUND!",
  "Beat Up All The Bad Guys!",
  "Gotta Love The Classics!",
  "Determination.",
  "So Much Love To Share!",
  "Like, Totally Unstoppable!",
  "So Many Muns!",
  "Very, Very, Interesting.",
  "You Haven't Died A Single Time...",
  "Mmmm, Irony.",
  "Can you feel the THUNDER?!",
  "S-Sorry, I'm Late!!",
  "Nice Atmosphere.",
  "No Burning For Me Today Thanks.",
  "We're No Strangers To Secrets!",
  "HOLY [[cungadero]] DO I FEEL GOOD!!",
  "PHOTON READINGS NEGATIVE.",
  "Oops!",
  "Might Need To Patch This One.",
  "Oh! It's The Wrong Number!"
}

local awardDesc = {
  "Beat all main OST songs.",
  "Beat all Bonus Songs.",
  "Beat every Bonus Song without missing.",
  "Beat every song in the mod.",
  "Reach LV 10.",
  "Reach LV 20.",
  "Have 1000G on you at once.",
  "Get an average accuracy of 95% or above for the main OST and Bonus Songs.",
  "Beat every song in the Main OST without missing.",
  "Died on the song 'Determination'.",
  "Get 100% accuracy on the song 'Thundersnail'.",
  "Play the song 'Wrong Enemy!?' on October 10th at 8PM.",
  "Chill in the Elevator for one hour.",
  "Beat the song 'MEGALOVANIA' with 0 misses.",
  "Find the secret game over song 'Never Gonna Ski You Up'.",
  "Find the secret song 'Hyperlink (Reloaded)'.",
  "Find the secret song 'Dark Darker Yet Darker'.",
  "Find the secret song 'Dance Of Dog'.",
  "Find the secret song 'Room Of Dog'.",
  "Find the secret song 'Wrong Number'."
}

local awardHints = {
  "Beat all the main OST songs.",
  "Beat all the Bonus Songs.",
  "Beat every Bonus Song without missing.",
  "Beat every song in the mod.",
  "Reach LV 10.",
  "Reach LV 20.",
  "Have 1000G on you at once.",
  "Get an average accuracy of 95% or above for the main OST and Bonus Songs.",
  "Beat every song in the Main OST without missing.",
  "HINT: Well that's a little ironic isn't it.",
  "Get 100% accuracy on the song 'Thundersnail'.",
  "HINT: Play the song 'Wrong Enemy!?' on October 10th at 8PM.",
  "Chill in the Elevator for one hour.",
  "Beat the song 'MEGALOVANIA' with 0 misses.",
  "HINT: You'll need to die alot.",
  "HINT: Press F1 for help in 'Hyperlink'",
  "HINT: Find the grey door when restarting on 'Waterfall'",
  "HINT: Find the secret song when starting the game.",
  "HINT: Beat 'Last Goodbye' with no misses and go through a mysterious door.",
  "HINT: Get called by a stranger in 'Snowdin Town'."
}

function onCreate()
		makeLuaSprite('emptySpace', 'empty', 0, 0)
		setObjectCamera('emptySpace', 'other')
		addLuaSprite('emptySpace', false)
		
		makeLuaSprite('UI', 'Awards/UI', 0, 0)
		setObjectCamera('UI', 'other')
		addLuaSprite('UI', true)
		
		playMusic('menuMusic', 1, true)

	for i = 1, 20, 1 do
		makeAwardX = makeAwardX + 118
	if getDataFromSave('awardData', 'award' .. i) ~= true then
		makeLuaSprite('award' .. i, 'Awards/Icons/locked', makeAwardX, makeAwardY)
		setObjectCamera('award' .. i, 'other')
		setProperty('award' .. i .. '.alpha', 0.3) 
		addLuaSprite('award' .. i, true)
	else
		makeLuaSprite('award' .. i, 'Awards/Icons/' .. i, makeAwardX, makeAwardY)
		setObjectCamera('award' .. i, 'other')
		setProperty('award' .. i .. '.alpha', 0.3) 
		addLuaSprite('award' .. i, true)	
end
	if i == 5 or i == 10 or i == 15 then
		makeAwardY = makeAwardY + 120
		makeAwardX = -86
end	
end		
		makeLuaText('awardTitleText', "OOPS!", 1500, -110, 30)
		setTextFont('awardTitleText', "Sans.otf")
		setObjectCamera('awardTitleText', 'other')
		setTextSize('awardTitleText', 70)
		setProperty('awardTitleText.antialiasing', false)
		addLuaText('awardTitleText')
		
		makeLuaText('awardDescText', "* OOPS!", 500, 720, 200)
		setTextFont('awardDescText', "Sans.otf")
		setObjectCamera('awardDescText', 'other')
		setTextSize('awardDescText', 40)
		setTextAlignment('awardDescText', 'left')
		setProperty('awardDescText.antialiasing', false)
		addLuaText('awardDescText')
end

function onStartCountdown()
	return Function_Stop
end

function onUpdate()
	if keyboardJustPressed('ESCAPE') then
		exitSong()
end
	if keyboardJustPressed('RIGHT') then 
	if curAward ~= 5 and curAward ~= 10 and curAward ~= 15 and curAward ~= 20 then
		curAward = curAward + 1
		playSound('selectSound', 1, 'selectSound')
end
end
	if keyboardJustPressed('LEFT') then 
	if curAward ~= 1 and curAward ~= 6 and curAward ~= 11 and curAward ~= 16 then
		curAward = curAward - 1
		playSound('selectSound', 1, 'selectSound')
end
end
	if keyboardJustPressed('DOWN') then 
	if curAward ~= 16 and curAward ~= 17 and curAward ~= 18 and curAward ~= 19 and curAward ~= 20 then
		curAward = curAward + 5
		playSound('selectSound', 1, 'selectSound')
end
end
	if keyboardJustPressed('UP') then 
	if curAward ~= 1 and curAward ~= 2 and curAward ~= 3 and curAward ~= 4 and curAward ~= 5 then
		curAward = curAward - 5
		playSound('selectSound', 1, 'selectSound')
end
end
	if getDataFromSave('awardData', 'award' .. curAward) == 'award' .. curAward then
		setTextString('awardTitleText', "???")
	else
		setTextString('awardTitleText', awardTitles[curAward])
end		
		for a = 1, 20, 1 do
			if a == curAward then
				setProperty('award' .. curAward .. '.alpha', 1)
			else
				setProperty('award' .. a .. '.alpha', 0.3)
end
end
	if getDataFromSave('awardData', 'award' .. curAward) == 'award' .. curAward then
		setTextString('awardDescText', awardHints[curAward])
	else
		setTextString('awardDescText', awardDesc[curAward])
end		
end
		