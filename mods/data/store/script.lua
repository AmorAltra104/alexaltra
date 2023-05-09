local textLength = 0
local menuOption = 1
local isBuyingItem = false
local playerGoldAmount = 0
local isTalking = false
local onTalkOption = 1
local canSelectTalk = false
local hasSelectedOption = false
local curTextLine = 1
local canNextLine = false

local storeSongs = {
	"Ski Is Rude", "Astra Perambulis", "Megalo Strike Back", "Mad Mew Mew", "Interstellar Retribution", "Stronger Then You",  "Bonedoggle", "Hyperlink", "Die", 
	"Bad Time", "Fandomania", "Vantablack", "Megalo Strike Back (Chara)", "Reality Check Through The Skull", "To The Bone", "Backbone",
}

local storeSongs1 = {
	"Ski Is Rude", "Astra Perambulis", "Megalo Strike Back", "Mad Mew Mew!!", "Interstellar Retribution", "Stronger Then You",  "Bonedoggle", "HYPERLINK", "D.I.E", 
	"BAD TIME", "Fandomania", "Vantablack", "Megalo Strike Back (Chara)", "Reality Check Through The Skull", "To The Bone", "Backbone",
}

local storeGold = {"20", "20", "30", "30", "30", "30","35","35","35","40", "40", "40","45","50","50","70"}

local introTexts = {
"* Sup, see anything you like?",
"* Greetings!",
"* How's it going?",
"* Take your time.",
"* Wow I am tired...",
"* Pow.",
"* Heya.",
"* Whatcha' need?",
"* Back again huh?",
"* G' afternoon.",
}

local textOption1 = {
"* Me? Pfft don't worry about it too much.",
"* As a certain monster once said. I'm just a silly old lady who worries too much.",
"* Except I'm not old. Or a lady... Hm.",
}

local textFaces1 = {
'10',
'5',
'8',
}

local textOption2 = {
"* Uh have you not read the title?",
"* ...",
"* Ski sings the UNDERTALE soundtrack.",
"* Your welcome.",
}

local textFaces2 = {
'15',
'16',
'14',
'7',
}

local textOption3 = {
"* I sell bonus songs that you can't find anywhere else.",
"* Some of these songs are quite tough as well.",
"* I actually used to sell healing items too.",
"* But the almighty creator took them away.",
"* Why? I have no idea.",
"* ...",
"* You know between you and me, I heard about some secret songs that exist somewhere.",
"* I can't tell you where. Cos I have no idea.",
"* But good luck finding them.",
}

local textFaces3 = {
"2",
"14",
"10",
"9",
"15",
"16",
"10",
"14",
"10",
}

local textOption4 = {
"* Uh. Hey?",
"* You need something or are you just trying to read every bit of dialogue I have to offer.",
"* Hah, yeah that's probably it.",
}

local textFaces4 = {
'15',
'6',
'10',
}

local textOption5 = {
"* Wow nosy much?",
"* Eh, don't worry about it. This is just my natural state of being.",
"* Considering I'm stuck in this one spot. The only sleep I can get is right here.",
"* While stood up.",
"* ...",
}

local textFaces5 = {
'14',
'5',
'16',
'3',
'16',
}

local textOption6 = {
"* Simp.",
"* Don't even try that on me. It wont work.",
"* I aint giving out free songs here.",
"* So yeah. Don't. Capiche?",
}

local textFaces6 = {
'5',
'7',
'3',
'16',
}

local textOption7 = {
"* ...",
"* Don't worry about it.",
}

local textFaces7 = {
'16',
'5',
}

local textOption8 = {
"* Oh. Him? Love that guy!",
"* His brother though...",
"* Keep this between you and me but his brother kind of annoys me.",
"* He's not a bad guy! I'm just saying he's very not my speed. Very uh...",
"* Uncool.",
"* ...",
"* Nah i'm kidding he's great!",
"* Please don't tell Sans I said that yeah?",
}

local textFaces8 = {
'2',
'8',
'16',
'3',
'10',
'16',
'5',
'8',
}

function onStartCountdown()
     return Function_Stop
end

function onUpdate()
	if hasSelectedOption == false then
     if getTextString('dialogueText') == introTexts[randomStartDialogue] then
         cancelTimer('addTextTimer')
	     makeLuaSprite('shopKeeper', 'Shop/Faces/1', 450, 0)
	     setObjectCamera('shopKeeper', 'hud')
	     addLuaSprite('shopKeeper', true)		 
end
         setTextString('dialogueText', string.sub(introTexts[randomStartDialogue], 1, textLength))
         setTextString('goldAmountText', playerGoldAmount .. "G")
		 playerGoldAmount = getDataFromSave('goldCount', 'totalGold')
end
	if hasSelectedOption == true and onTalkOption == 1 then
     if getTextString('dialogueText') == textOption1[curTextLine] then
         cancelTimer('addTextTimer')
		 canNextLine = true
end
         setTextString('dialogueText', string.sub(textOption1[curTextLine], 1, textLength))
end
	if hasSelectedOption == true and onTalkOption == 2 then
     if getTextString('dialogueText') == textOption2[curTextLine] then
         cancelTimer('addTextTimer')
		 canNextLine = true
end
         setTextString('dialogueText', string.sub(textOption2[curTextLine], 1, textLength))
end
	if hasSelectedOption == true and onTalkOption == 3 then
     if getTextString('dialogueText') == textOption3[curTextLine] then
         cancelTimer('addTextTimer')
		 canNextLine = true
end
         setTextString('dialogueText', string.sub(textOption3[curTextLine], 1, textLength))
end
	if hasSelectedOption == true and onTalkOption == 4 then
     if getTextString('dialogueText') == textOption4[curTextLine] then
         cancelTimer('addTextTimer')
		 canNextLine = true
end
         setTextString('dialogueText', string.sub(textOption4[curTextLine], 1, textLength))
end
	if hasSelectedOption == true and onTalkOption == 5 then
     if getTextString('dialogueText') == textOption5[curTextLine] then
         cancelTimer('addTextTimer')
		 canNextLine = true
end
         setTextString('dialogueText', string.sub(textOption5[curTextLine], 1, textLength))
end
	if hasSelectedOption == true and onTalkOption == 6 then
     if getTextString('dialogueText') == textOption6[curTextLine] then
         cancelTimer('addTextTimer')
		 canNextLine = true
end
         setTextString('dialogueText', string.sub(textOption6[curTextLine], 1, textLength))
end
	if hasSelectedOption == true and onTalkOption == 7 then
     if getTextString('dialogueText') == textOption7[curTextLine] then
         cancelTimer('addTextTimer')
		 canNextLine = true
end
         setTextString('dialogueText', string.sub(textOption7[curTextLine], 1, textLength))
end
	if hasSelectedOption == true and onTalkOption == 8 then
     if getTextString('dialogueText') == textOption8[curTextLine] then
         cancelTimer('addTextTimer')
		 canNextLine = true
end
         setTextString('dialogueText', string.sub(textOption8[curTextLine], 1, textLength))
end
end

function onCreate()
	initSaveData('inventorySpace', 'SkiUNDERTALE')
	initSaveData('songData', 'SkiUNDERTALE')
    initSaveData('goldCount', 'SkiUNDERTALE')
	
    randomStartDialogue = getRandomInt(1,10)
    playMusic('shopTheme', 0.75, true)
    runTimer('startTextTimer', 0.5, 0)

    makeLuaSprite('empty', 'empty', 0, 0)
	setObjectCamera('empty', 'hud')
	addLuaSprite('empty', true)
	
    makeLuaSprite('shopUI', 'Shop/shop', 0, 0)
	setObjectCamera('shopUI', 'hud')
	addLuaSprite('shopUI', true)
	
	makeLuaSprite('shopKeeper', 'Shop/Faces/1', 450, 0)
	setObjectCamera('shopKeeper', 'hud')
	addLuaSprite('shopKeeper', true)
	
    makeLuaSprite('redSoul', 'heart', 1040, 465)
	setObjectCamera('redSoul', 'hud')
	addLuaSprite('redSoul', true)
	
    makeLuaSprite('speechBubble', 'speechBubble', 800, 150)
	setObjectCamera('speechBubble', 'hud')
	setProperty('speechBubble.alpha', 0)
	addLuaSprite('speechBubble', true)
	
    makeLuaSprite('arrowRight', 'arrow', 950, 550)
	setObjectCamera('arrowRight', 'hud')
	setProperty('arrowRight.alpha', 0)
	setProperty('arrowRight.flipX', true)
	addLuaSprite('arrowRight', true)
	
    makeLuaSprite('arrowLeft', 'arrow', 50, 550)
	setObjectCamera('arrowLeft', 'hud')
	setProperty('arrowLeft.alpha', 0)
	addLuaSprite('arrowLeft', true)
	
	makeLuaText('goldAmountText', playerGoldAmount .. "G", 1000, 1035, 663)
	setTextFont('goldAmountText', 'sans.otf')
	setTextSize('goldAmountText', 35)
	setTextAlignment('goldAmountText', 'left')
	setObjectCamera('goldAmountText', 'other')
	addLuaText('goldAmountText')
	
	makeLuaText('songText', "???", 1050, 0, 545)
	setTextFont('songText', 'sans.otf')
	setTextSize('songText', 55)
	setProperty('songText.alpha', 0)
	setObjectCamera('songText', 'other')
	addLuaText('songText')
	
	makeLuaText('songAmountText', "???", 1050, 0, 650)
	setTextFont('songAmountText', 'sans.otf')
	setTextSize('songAmountText', 30)
	setProperty('songAmountText.alpha', 0)
	setObjectCamera('songAmountText', 'other')
	addLuaText('songAmountText')
	
	makeLuaText('dialogueText', "* Hello!", 950, 30, 460)
	setTextFont('dialogueText', 'sans.otf')
	setTextSize('dialogueText', 40)
	setTextAlignment('dialogueText', 'left')
	setObjectCamera('dialogueText', 'other')
	addLuaText('dialogueText')
	
	makeLuaText('bubbleText', "Need to buy something?", 1000, 860, 200)
	setTextFont('bubbleText', 'sans.otf')
	setTextSize('bubbleText', 20)
	setTextAlignment('bubbleText', 'left')
	setObjectCamera('bubbleText', 'other')
	setTextColor('bubbleText', '000000')
	setTextBorder('bubbleText', 0, 'FFFFFF')
	setProperty('bubbleText.alpha', 0)
	addLuaText('bubbleText')
	
    makeLuaSprite('talkOptions', 'shopTalks', 0, 410)
	setObjectCamera('talkOptions', 'other')
	setProperty('talkOptions.alpha', 0)
	addLuaSprite('talkOptions', true)
end

function onTimerCompleted(tag, loops, loopsLeft)
       if tag == 'startTextTimer' then
              runTimer('addTextTimer', 0.05, 0)	  
end
       if tag == 'addTextTimer' then
	          textLength = textLength + 1
			  playSound('textSound', 1, 'textSound')
end
       if tag == 'textTalkTimer' then
	          talkLength = talkLength + 1
			  playSound('textSound', 1, 'textSound')
end
       if tag == 'itemWaitTimer' then
	   		     isBuyingItem = true
		         itemOption = 1				 
end
       if tag == 'canTalkTimer' then
	   		     canSelectTalk = true		 
end
end

function onUpdatePost()
     if isBuyingItem == false and isTalking == false then
         if keyboardJustPressed('DOWN') and menuOption < 4 then
		        menuOption = menuOption + 1
				playSound('selectSound', 0.3, 'selectSound')
         elseif keyboardJustPressed('UP') and menuOption > 1 then
		        menuOption = menuOption - 1
				playSound('selectSound', 0.3, 'selectSound')
end
         if menuOption == 1 then
		        setProperty('redSoul.y', 465) 
			    setProperty('redSoul.x', 1040)
         elseif menuOption == 2 then
		        setProperty('redSoul.y', 510)
				setProperty('redSoul.x', 1040)
         elseif menuOption == 3 then
		        setProperty('redSoul.y', 555)
				setProperty('redSoul.x', 1040)
         elseif menuOption == 4 then
		        setProperty('redSoul.y', 600)
				setProperty('redSoul.x', 1040)
end
         if keyJustPressed('accept') and menuOption == 1 then		 
			 setProperty('dialogueText.alpha', 0)
             setProperty('redSoul.x', 40)	 
			 playSound('enterSound', 0.3, 'enterSound')
			 setProperty('speechBubble.alpha', 1)
			 setProperty('redSoul.alpha', 0)
			 setProperty('arrowLeft.alpha', 1)
			 setProperty('arrowRight.alpha', 1)
			 setProperty('bubbleText.alpha', 1)
			 setProperty('songAmountText.alpha', 1)
			 setProperty('songText.alpha', 1)
             runTimer('itemWaitTimer', 0.05, 1)
			 itemOption = 1
         elseif keyJustPressed('accept') and menuOption == 2 then
		     playSound('enterSound', 0.3, 'enterSound')	
         elseif keyJustPressed('accept') and menuOption == 3 then
			 isTalking = true 
			 setProperty('talkOptions.alpha', 1)
			 setProperty('dialogueText.alpha', 0)
			 playSound('enterSound', 0.3, 'enterSound')
			 runTimer('canTalkTimer', 0.5, 1)			 
         elseif keyJustPressed('accept') and menuOption == 4 then
		     playSound('enterSound', 0.3, 'enterSound')
			 setPropertyFromClass("openfl.Lib", "application.window.title",'Ski Sings The Entire UNDERTALE Soundtrack!: ')			 
		     exitSong()
end
end
     if isBuyingItem == true then
         if keyboardJustPressed('RIGHT') and itemOption < 16 then
		        itemOption = itemOption + 1
				playSound('selectSound', 0.3, 'selectSound')
				doTweenX('arrowRightTweenX', 'arrowRight', 960, 0.1, 'linear')
         elseif keyboardJustPressed('LEFT') and itemOption > 1 then
		        itemOption = itemOption - 1
				playSound('selectSound', 0.3, 'selectSound')
				doTweenX('arrowLeftTweenX', 'arrowLeft', 40, 0.1, 'linear')
end
         if keyJustPressed('accept') then
		 	if getDataFromSave('songData', storeSongs[itemOption]) ~= true then
				buySong()
			else
				loadSong(storeSongs[itemOption])
end			        
end
		if getDataFromSave('songData', storeSongs[itemOption]) ~= true then
				setTextString('songText', "???")
				setTextString('songAmountText', "(" .. storeGold[itemOption] .. "G)")
		else
				setTextString('songText', storeSongs1[itemOption])
				setTextString('songAmountText', "(Already Purchased)")
end	
         if keyJustPressed('back') then
		 		 isBuyingItem = false
		 		 menuOption = 1
	             setProperty('dialogueText.alpha', 1)
                 playSound('enterSound', 0.3, 'enterSound')
			     setProperty('speechBubble.alpha', 0)
			     setProperty('bubbleText.alpha', 0)
				 setProperty('songAmountText.alpha', 0)
				 setProperty('arrowLeft.alpha', 0)
				 setProperty('arrowRight.alpha', 0)				 
				 setProperty('redSoul.alpha', 1)
				 setProperty('songText.alpha', 0)				 
end
end
		if isTalking == true and hasSelectedOption == false then
			if keyJustPressed('back') then
				isTalking = false
			    playSound('enterSound', 0.3, 'enterSound')
				setProperty('talkOptions.alpha', 0)
				setProperty('dialogueText.alpha', 1)
				canSelectTalk = false
			elseif keyJustPressed('accept') and canSelectTalk == true then
			    playSound('enterSound', 0.3, 'enterSound')
				setProperty('talkOptions.alpha', 0)
				setProperty('dialogueText.alpha', 1)
				setProperty('redSoul.alpha', 0)
				hasSelectedOption = true
				textLength = 0
				runTimer('addTextTimer', 0.05, 0)
				onKeeperChange()
			elseif keyboardJustPressed('DOWN') and onTalkOption ~= 4 and onTalkOption ~= 8 then
				onTalkOption = onTalkOption + 1
				playSound('selectSound', 0.3, 'selectSound')
			elseif keyboardJustPressed('UP') and onTalkOption ~= 1 and onTalkOption ~= 5 then
				onTalkOption = onTalkOption - 1
				playSound('selectSound', 0.3, 'selectSound')
			elseif keyboardJustPressed('RIGHT') and onTalkOption ~= 5 and onTalkOption ~= 6 and onTalkOption ~= 7 and onTalkOption ~= 8 then
				onTalkOption = onTalkOption + 4
				playSound('selectSound', 0.3, 'selectSound')
			elseif keyboardJustPressed('LEFT') and onTalkOption ~= 1 and onTalkOption ~= 2 and onTalkOption ~= 3 and onTalkOption ~= 4 then
				onTalkOption = onTalkOption - 4
				playSound('selectSound', 0.3, 'selectSound')
end
			if onTalkOption == 1 then
				setProperty('redSoul.x', 35)
				setProperty('redSoul.y', 470)
			elseif onTalkOption == 2 then
				setProperty('redSoul.x', 35)
				setProperty('redSoul.y', 525)
			elseif onTalkOption == 3 then
				setProperty('redSoul.x', 35)
				setProperty('redSoul.y', 585)
			elseif onTalkOption == 4 then
				setProperty('redSoul.x', 35)
				setProperty('redSoul.y', 645)
			elseif onTalkOption == 5 then
				setProperty('redSoul.x', 460)
				setProperty('redSoul.y', 470)
			elseif onTalkOption == 6 then
				setProperty('redSoul.x', 460)
				setProperty('redSoul.y', 525)
			elseif onTalkOption == 7 then
				setProperty('redSoul.x', 460)
				setProperty('redSoul.y', 585)
			elseif onTalkOption == 8 then
				setProperty('redSoul.x', 460)
				setProperty('redSoul.y', 645)
end
end
	if isTalking == true and hasSelectedOption == true and canNextLine == true then
		if onTalkOption == 1 then	
			if keyJustPressed('accept') and textOption1[curTextLine + 1] ~= nil then
				curTextLine = curTextLine + 1
				textLength = 0
				runTimer('addTextTimer', 0.05, 0)
				canNextLine = false
				onKeeperChange()
			elseif keyJustPressed('accept') and textOption1[curTextLine + 1] == nil then
				curTextLine = 1
				textLength = 0
				canNextLine = false
				hasSelectedOption = false
				isTalking = false
				canSelectTalk = false
				setProperty('redSoul.alpha', 1)
				setTextString('dialogueText', "")
				onKeeperNormal()
end
end
		if onTalkOption == 2 then	
			if keyJustPressed('accept') and textOption2[curTextLine + 1] ~= nil then
				curTextLine = curTextLine + 1
				textLength = 0
				runTimer('addTextTimer', 0.05, 0)
				canNextLine = false
				onKeeperChange()
			elseif keyJustPressed('accept') and textOption2[curTextLine + 1] == nil then
				curTextLine = 1
				textLength = 0
				canNextLine = false
				hasSelectedOption = false
				isTalking = false
				canSelectTalk = false
				setProperty('redSoul.alpha', 1)
				setTextString('dialogueText', "")
				onKeeperNormal()
end
end
		if onTalkOption == 3 then	
			if keyJustPressed('accept') and textOption3[curTextLine + 1] ~= nil then
				curTextLine = curTextLine + 1
				textLength = 0
				runTimer('addTextTimer', 0.05, 0)
				canNextLine = false
				onKeeperChange()
			elseif keyJustPressed('accept') and textOption3[curTextLine + 1] == nil then
				curTextLine = 1
				textLength = 0
				canNextLine = false
				hasSelectedOption = false
				isTalking = false
				canSelectTalk = false
				setProperty('redSoul.alpha', 1)
				setTextString('dialogueText', "")
				onKeeperNormal()
end
end
		if onTalkOption == 4 then	
			if keyJustPressed('accept') and textOption4[curTextLine + 1] ~= nil then
				curTextLine = curTextLine + 1
				textLength = 0
				runTimer('addTextTimer', 0.05, 0)
				canNextLine = false
				onKeeperChange()
			elseif keyJustPressed('accept') and textOption4[curTextLine + 1] == nil then
				curTextLine = 1
				textLength = 0
				canNextLine = false
				hasSelectedOption = false
				isTalking = false
				canSelectTalk = false
				setProperty('redSoul.alpha', 1)
				setTextString('dialogueText', "")
				onKeeperNormal()
end
end
		if onTalkOption == 5 then	
			if keyJustPressed('accept') and textOption5[curTextLine + 1] ~= nil then
				curTextLine = curTextLine + 1
				textLength = 0
				runTimer('addTextTimer', 0.05, 0)
				canNextLine = false
				onKeeperChange()
			elseif keyJustPressed('accept') and textOption5[curTextLine + 1] == nil then
				curTextLine = 1
				textLength = 0
				canNextLine = false
				hasSelectedOption = false
				isTalking = false
				canSelectTalk = false
				setProperty('redSoul.alpha', 1)
				setTextString('dialogueText', "")
				onKeeperNormal()
end
end
		if onTalkOption == 6 then	
			if keyJustPressed('accept') and textOption6[curTextLine + 1] ~= nil then
				curTextLine = curTextLine + 1
				textLength = 0
				runTimer('addTextTimer', 0.05, 0)
				canNextLine = false
				onKeeperChange()
			elseif keyJustPressed('accept') and textOption6[curTextLine + 1] == nil then
				curTextLine = 1
				textLength = 0
				canNextLine = false
				hasSelectedOption = false
				isTalking = false
				canSelectTalk = false
				setProperty('redSoul.alpha', 1)
				setTextString('dialogueText', "")
				onKeeperNormal()
end
end
		if onTalkOption == 7 then	
			if keyJustPressed('accept') and textOption7[curTextLine + 1] ~= nil then
				curTextLine = curTextLine + 1
				textLength = 0
				runTimer('addTextTimer', 0.05, 0)
				canNextLine = false
				onKeeperChange()
			elseif keyJustPressed('accept') and textOption7[curTextLine + 1] == nil then
				curTextLine = 1
				textLength = 0
				canNextLine = false
				hasSelectedOption = false
				isTalking = false
				canSelectTalk = false
				setProperty('redSoul.alpha', 1)
				setTextString('dialogueText', "")
				onKeeperNormal()
end
end
		if onTalkOption == 8 then	
			if keyJustPressed('accept') and textOption8[curTextLine + 1] ~= nil then
				curTextLine = curTextLine + 1
				textLength = 0
				runTimer('addTextTimer', 0.05, 0)
				canNextLine = false
				onKeeperChange()
			elseif keyJustPressed('accept') and textOption8[curTextLine + 1] == nil then
				curTextLine = 1
				textLength = 0
				canNextLine = false
				hasSelectedOption = false
				isTalking = false
				canSelectTalk = false
				setProperty('redSoul.alpha', 1)
				setTextString('dialogueText', "")
				onKeeperNormal()
end
end
end
end

function buySong()
	if getDataFromSave('goldCount', 'totalGold') >= tonumber(storeGold[itemOption]) then
		setDataFromSave('songData', storeSongs[itemOption], true)
		setDataFromSave('goldCount', 'totalGold', getDataFromSave('goldCount', 'totalGold') - tonumber(storeGold[itemOption]))
		playSound('bought', 1, 'bought')
		flushSaveData('songData')
		flushSaveData('goldCount')
	else
		playSound('nope', 1, 'nope')
end
end

function onTweenCompleted(tag)
	if tag == 'arrowLeftTweenX' then
		doTweenX('arrowLeftTweenX1', 'arrowLeft', 50, 0.1, 'linear')
	elseif tag == 'arrowRightTweenX' then
		doTweenX('arrowRightTweenX1', 'arrowRight', 950, 0.1, 'linear')
end
end
		

function onCreatePost()
	doTweenColor('soulTweenColor', 'redSoul', 'FB0410', 0.01, 'linear')
end

function onKeeperChange()
	if onTalkOption == 1 then
				makeLuaSprite('shopKeeper', 'Shop/Faces/' .. textFaces1[curTextLine], 450, 0)
				setObjectCamera('shopKeeper', 'hud')
				addLuaSprite('shopKeeper', true)
end
	if onTalkOption == 2 then
				makeLuaSprite('shopKeeper', 'Shop/Faces/' .. textFaces2[curTextLine], 450, 0)
				setObjectCamera('shopKeeper', 'hud')
				addLuaSprite('shopKeeper', true)
end
	if onTalkOption == 3 then
				makeLuaSprite('shopKeeper', 'Shop/Faces/' .. textFaces3[curTextLine], 450, 0)
				setObjectCamera('shopKeeper', 'hud')
				addLuaSprite('shopKeeper', true)
end
	if onTalkOption == 4 then
				makeLuaSprite('shopKeeper', 'Shop/Faces/' .. textFaces4[curTextLine], 450, 0)
				setObjectCamera('shopKeeper', 'hud')
				addLuaSprite('shopKeeper', true)
end
	if onTalkOption == 5 then
				makeLuaSprite('shopKeeper', 'Shop/Faces/' .. textFaces5[curTextLine], 450, 0)
				setObjectCamera('shopKeeper', 'hud')
				addLuaSprite('shopKeeper', true)
end
	if onTalkOption == 6 then
				makeLuaSprite('shopKeeper', 'Shop/Faces/' .. textFaces6[curTextLine], 450, 0)
				setObjectCamera('shopKeeper', 'hud')
				addLuaSprite('shopKeeper', true)
end
	if onTalkOption == 7 then
				makeLuaSprite('shopKeeper', 'Shop/Faces/' .. textFaces7[curTextLine], 450, 0)
				setObjectCamera('shopKeeper', 'hud')
				addLuaSprite('shopKeeper', true)
end
	if onTalkOption == 8 then
				makeLuaSprite('shopKeeper', 'Shop/Faces/' .. textFaces8[curTextLine], 450, 0)
				setObjectCamera('shopKeeper', 'hud')
				addLuaSprite('shopKeeper', true)
end
end

function onKeeperNormal()
				makeLuaSprite('shopKeeper', 'Shop/Faces/1', 450, 0)
				setObjectCamera('shopKeeper', 'hud')
				addLuaSprite('shopKeeper', true)
end
		