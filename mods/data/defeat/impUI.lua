function onCreatePost()
    setProperty('timeBarBG.visible', false)
    setProperty('timeBar.visible', false)
    setProperty('timeTxt.visible', false)
    setProperty('scoreTxt.visible', false)
    
    makeLuaText('NewScoreTxt','Score: 0 | Combo Breaks: 0 | Accurary: 0%', getPropertyFromClass('flixel.FlxG', 'width'),getProperty('scoreTxt.x'), getProperty('scoreTxt.y'))
    setTextSize('NewScoreTxt',23)
	setObjectCamera('NewScoreTxt', 'hud')
    setTextBorder('NewScoreTxt', 2, '000000');
    setTextAlignment('NewScoreTxt', 'center');
	addLuaText('NewScoreTxt');
	setTextFont('NewScoreTxt', 'kade.ttf');
end

function toHexString(red, green, blue, prefix)
	if (prefix == nil) then prefix = true end
	
	return (prefix and '0x' or '') .. (
			string.format('%02X%02X%02X', red, green, blue)
		)
end

function mathlerp(from,to,i)return from+(to-from)*i end

function onUpdate()
    setProperty('iconP2.scale.x',mathlerp(getProperty('iconP2.scale.x'), 1, 0.5))
    setProperty('iconP1.scale.x',mathlerp(getProperty('iconP1.scale.x'), 1, 0.5))
end

function onUpdatePost()
  	setProperty('iconP2.origin.x',80)
  	setProperty('iconP1.origin.y',0)
  	setProperty('iconP1.origin.x',20)
    setProperty('iconP2.origin.y',0)
end