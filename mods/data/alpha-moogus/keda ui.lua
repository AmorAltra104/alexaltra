function onCreate()
	makeLuaText('atkText', songName .."Hard | KE 1.4.2", 600, 0, 700)
	setObjectCamera("atkText", 'hud')
	setTextSize('atkText', 15);
    setTextBorder("atkText", 1.1, '000000')
	addLuaText("atkText");
	setTextAlignment('atkText', 'LEFT')	
	
	makeLuaText('newAcc', "jsjdjsjjdnsns", 0, getProperty('scoreTxt.x') + 350, getProperty('scoreTxt.y'))
	setObjectCamera('newAcc', 'hud')
	setTextSize('newAcc', 20);
	addLuaText('newAcc');
	setTextAlignment('newAcc', 'canter')	
end
function onCreatePost()
    setProperty('timeBarBG.visible',false)
    setProperty('timeBar.visible',false)
    setProperty('timeTxt.visible',false)
    setProperty('scoreTxt.visible',false)
    setProperty('grpNoteSplashes.visible', false)
    
    setPropertyFromGroup('opponentStrums', 0, 'x', 92)
    setPropertyFromGroup('opponentStrums', 1, 'x', 204)
    setPropertyFromGroup('opponentStrums', 2, 'x', 316)
    setPropertyFromGroup('opponentStrums', 3, 'x', 428)
    
    setPropertyFromGroup('playerStrums', 0, 'x', 732)
    setPropertyFromGroup('playerStrums', 1, 'x', 844)
    setPropertyFromGroup('playerStrums', 2, 'x', 956)
    setPropertyFromGroup('playerStrums', 3, 'x', 1068)
end

function mathlerp(from,to,i)
	return from+(to-from)*i 
end

function onUpdate()
	for i = 0, getProperty('opponentStrums.length')-1 do
		setPropertyFromGroup('opponentStrums', i, 'texture', 'op');
		setPropertyFromGroup('opponentStrums', i, 'alpha', 1)
	end
	
	setPropertyFromGroup('opponentStrums', 0, 'x', 92)
    setPropertyFromGroup('opponentStrums', 1, 'x', 204)
    setPropertyFromGroup('opponentStrums', 2, 'x', 316)
    setPropertyFromGroup('opponentStrums', 3, 'x', 428)
    
    setPropertyFromGroup('playerStrums', 0, 'x', 682)
    setPropertyFromGroup('playerStrums', 1, 'x', 794)
    setPropertyFromGroup('playerStrums', 2, 'x', 906)
    setPropertyFromGroup('playerStrums', 3, 'x', 1018)
    
    theduckingRatingAlt = "N/A"
    if ratingName == 'You Suck!' then
        theduckingRatingAlt = 'wtf dude?'
    elseif ratingName == 'Shit' then
        theduckingRatingAlt = 'F'
    elseif ratingName == 'Bad' then
        theduckingRatingAlt = 'E'
    elseif ratingName == 'Bruh' then
        theduckingRatingAlt = 'D'
    elseif ratingName == 'Meh' then
        theduckingRatingAlt = 'B'
    elseif ratingName == 'Nice' then
        theduckingRatingAlt = 'B'
    elseif ratingName == 'Good' then
        theduckingRatingAlt = 'A'
    elseif ratingName == 'Great' then
        theduckingRatingAlt = 'A'
    elseif ratingName == 'Sick!' then
        theduckingRatingAlt = 'AA'
    elseif ratingName == 'Perfect!!' then
        theduckingRatingAlt = 'AAA'
    elseif botPlay == true then
        theduckingRatingAlt = 'N/A'
    end
    
    setTextString('newAcc','Score: '..score..' | Combo Breaks: '..misses..' | Accuracy: '..round((getProperty('ratingPercent') * 100), 2) ..' % (' .. ratingFC .. ') '..theduckingRatingAlt)
    
 	setProperty('iconP2.scale.x',mathlerp(getProperty('iconP2.scale.x'), 1, 0.5))
  	setProperty('iconP1.scale.x',mathlerp(getProperty('iconP1.scale.x'), 1, 0.5))
end
function accuracyToRatingString(accuracy) -- HELPER FUNCTION
    -- Please don't cancel me for repeat if else statements blame python 3.10 for not releasing sooner
    if accuracy >= 95 then
        return '您'
    elseif accuracy >= 85 then
        return '太强了'
    elseif accuracy >= 80 then
        return '牛'
    elseif accuracy >= 73 then
        return '还行'
    elseif accuracy >= 68 then
        return '加油'
    elseif accuracy >= 60 then
        return '一般'
    elseif accuracy >= 54 then
        return '广告位招商'
    elseif accuracy >= 50 then
        return '焯'
    elseif accuracy >= 42 then
        return '很蓝的啦'
    elseif accuracy >= 35 then
        return '我丢'
    elseif accuracy >= 26 then
        return '啧啧啧'
    elseif accuracy >= 15 then
        return '什么贵物'
    elseif accuracy >= 10 then
        return '垃圾'
    elseif accuracy >= 5 then
        return '6'
    elseif accuracy >= 3.5 then
        return '奥利给'
    elseif accuracy >= 1.5 then
        return '嗨害嗨'
    elseif accuracy >= 0.1 then
        return '？？？'
    else
        return '？？？'
    end
end

function onUpdatePost()
  setProperty('iconP2.origin.x',80)
  setProperty('iconP1.origin.y',0)
  setProperty('iconP1.origin.x',20)
  setProperty('iconP2.origin.y',0)
end

function round(x, n) --https://stackoverflow.com/questions/18313171/lua-rounding-numbers-and-then-truncate
  n = math.pow(10, n or 0)
  x = x * n
  if x >= 0 then x = math.floor(x + 0.5) else x = math.ceil(x - 0.5) end
  return x / n
end