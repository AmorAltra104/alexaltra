local randomBattleText = {
"Ski sings a tune!",
"How did she even get here?",
"No Froggits to be found.",
"But nobody came. Except Ski.",
"You feel as if this isn't supposed to happen.",
"You feel your sick bars crawling down your back.",
"Yellow names are for losers.",
"Sans, Tumblr's sexiest man.",
"Whatcha know about rolling down in the deep.",
"It's a beautiful day outside!",
"You can hear birds singing.",
"You can see flowers starting to bloom.",
"You're starting to think those weren't friendliness pellets.",
"You're surrounded by a crowd of monsters.",
"Pow.",
"Despite everything, you're still Ski.",
"Where's the chocalate?",
"Connection terminated.",
"Dark darker, yet darker.",
"There is not a man here.",
"Ski is 100 meters from your location and approaching rapidly.",
"Just Monika.",
"Ski spits some straight facts!",
"It's me.",
"Beware the man who speaks in hands.",
"Welcome to white space.",
"Creeper, aw man...",
"Objection!",
"Ski wants waffles.",
"When the imposter is sus!",
"Not the bees!",
"The FitnessGram PACER Test is a multistage aerobic capacity test that progressively gets more difficult as it continues. The test is used to measure a student's aerobic capacity as part of the FitnessGram assessment. Students run back and forth as many times as they can, each lap signaled by a beep sound.",
"When Ski was a young girl, her father took her into the city to see a marching band.",
"Ski gently opens the door...",
"Tight bars little man.",
"And her name was John Skina!",
"Was that the bite of 87!?",
"Ski is love, Ski is life",
"Have you ever wondered, what is going on inside of Ski's head?",
"Skibity bop um da dup.",
"Hello everybody my name is Markiplier.",
"Top o' the morning to ya laddies!",
"Ski is indeed based.",
"Don't mine at night.",
"It's time to stop!",
"Everybody loves Nubert.",
"Ski is unstoppable! Ha ha ha!",
"Welcome to the underground.",
"Give us your balls.",
"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
}

function onCreate()
	math.randomseed(os.clock()*100000000000)
for i=1,3 do
    curRandom = math.random(1, 50)
end
	
	makeLuaSprite('room', 'battleBG', -380, 300)
    setProperty('room.antialiasing', false)
	scaleObject('room', 1, 1)
	addLuaSprite('room', false)
	
	makeLuaText('battleText', randomBattleText[curRandom], 1800, -80, 610)
	setTextFont('battleText', 'sans.otf')
	setTextSize('battleText', 75)
	setTextAlignment('battleText', 'left')
	addLuaText('battleText')
	setProperty('battleText.alpha', 0)
	setObjectCamera('battleText', 'game')
end
			  
	         

		          