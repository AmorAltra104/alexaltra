function onCreatePost()
	setPropertyFromClass('ClientPrefs', 'timeBarType', 'Time Left')
	if songName == 'Defeat' or songName == 'finale' or songName == 'victory' or songName == 'Actin-Sus' or songName == 'Alpha-Moogus' then
		--do noting
	else
		setProperty('timeBarBG.visible', false)
		setProperty('timeBar.visible', false)
		setProperty('timeTxt.visible', false)
		setProperty('scoreTxt.visible', false)
		
		makeLuaSprite('newTimeBar', 'timeBarAlt', 100, getProperty('timeBarBG.y'))
		setObjectCamera('newTimeBar', 'hud')
		scaleObject('newTimeBar', 1.08, 1)
		addLuaSprite('newTimeBar', true)
		
		makeLuaSprite('greenBar', nil, 102, getProperty('timeBarBG.y')+4.5)
		makeGraphic('greenBar', 425, 10, '43ff55')
		setObjectCamera('greenBar', 'hud')
		addLuaSprite('greenBar', true)
		
		makeLuaText('NewScoreTxt','Score: 0 | Combo Breaks: 0 | Accurary: 0%', getPropertyFromClass('flixel.FlxG', 'width'),getProperty('scoreTxt.x'), getProperty('scoreTxt.y'))
		setTextSize('NewScoreTxt',23)
		setObjectCamera('NewScoreTxt', 'hud')
		setTextBorder('NewScoreTxt', 2, '000000');
		setTextAlignment('NewScoreTxt', 'center');
		addLuaText('NewScoreTxt');
		setTextFont('NewScoreTxt', 'kade.ttf');
	
		makeLuaText("nametext", songName, 600, 108, getProperty('timeTxt.y')+10.2)
		setTextSize('nametext', 15)
		addLuaText("nametext")
		setTextAlignment('nametext', 'left')
		setTextFont('nametext', 'kade.ttf');
		setProperty('nametext.visible', true)
	end
	if middlescroll then
		if songName == 'Actin-Sus' or songName == 'Alpha-Moogus' then
			--do nothing
		else
			for i = 0, 3 do
        		setPropertyFromGroup('opponentStrums', i, 'x', 9000)
        	end
        end
    end
end

function toHexString(red, green, blue, prefix)
	if (prefix == nil) then 
		prefix = true 
	end
	return (prefix and "0x" or "") .. (
	string.format("%02X%02X%02X", red, green, blue)
		)
end

function mathlerp(from,to,i)
	return from+(to-from)*i
end

function onUpdate()
	if songName == 'Defeat' or songName == 'finale' or songName == 'victory' or songName == 'Actin-Sus' or songName == 'Alpha-Moogus' then
	--do nothing 
	else
    	local dadColors = getProperty("dad.healthColorArray")
		local dadColor = tonumber(toHexString(dadColors[1], dadColors[2], dadColors[3]))
	
   	 	setProperty('greenBar.scale.x', getProperty("songPercent"))
    	setProperty('greenBar.x', 0 - 108.5 + (getProperty("songPercent") * 210))
    	
    	setProperty("NewScoreTxt.color", dadColor)
    
    	setProperty('NewScoreTxt.scale.x', getProperty('scoreTxt.scale.x'))
    	setProperty('NewScoreTxt.scale.y', getProperty('scoreTxt.scale.y'))
    
    	local acc = rating * 100
    	
    	if hits > 0 then
        	setTextString("NewScoreTxt", "Score: " .. score .. " | Combo Breaks: " .. misses .. " | Accuracy: " .. math.floor(acc * 100) / 100 .. "% ["..ratingFC..']')
   		else
       		setTextString("NewScoreTxt", "Score: 0 | Combo Breaks: 0 | Accurary: 0%")
    	end
    
   		setProperty('iconP2.scale.x', mathlerp(getProperty('iconP2.scale.x'), 1, 0.5))
  		setProperty('iconP1.scale.x', mathlerp(getProperty('iconP1.scale.x'), 1, 0.5))
	end
end

function onUpdatePost()
  	setProperty('iconP2.origin.x',80)
  	setProperty('iconP1.origin.y',0)
  	setProperty('iconP1.origin.x',20)
    setProperty('iconP2.origin.y',0)
end