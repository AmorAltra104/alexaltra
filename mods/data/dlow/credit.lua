local porter = '青蛙/FNF-BF'
local optimizer = 'TG铁锅炖大鹅/TieGuo'
local other = '无敌的黑化/HEIHUAa'

function onCreatePost()
	makeLuaSprite('IntroBar', nil, 0, 250);
    makeGraphic('IntroBar', 350, 250, 'FFFFFF');
    setObjectCamera('IntroBar', 'other');
    setProperty('IntroBar.alpha', 0.5)
    addLuaSprite('IntroBar', true);
    
    makeLuaText('porterText', 'Porter:\n'..porter, 1000, 20, 250)
	setObjectCamera('porterText', 'other')
	setTextSize('porterText', 25)
	addLuaText('porterText')
	setTextFont('porterText', '思源黑体.ttf')
	setTextAlignment('porterText', 'left')
	
	makeLuaText('optimizerText', 'Optimizer:\n'..optimizer, 1000, 20, 320)
	setObjectCamera('optimizerText', 'other')
	setTextSize('optimizerText', 25)
	addLuaText('optimizerText')
	setTextFont('optimizerText', '思源黑体.ttf')
	setTextAlignment('optimizerText', 'left')
	
	makeLuaText('otherText', 'Other:\n'..other, 1000, 20, 390)
	setObjectCamera('otherText', 'other')
	setTextSize('otherText', 25)
	addLuaText('otherText')
	setTextFont('otherText', '思源黑体.ttf')
	setTextAlignment('otherText', 'left')
end

function onSongStart()
	doTweenX('IntroBarX', 'IntroBar', -500, 1.5, 'quartInOut')
	doTweenX('porterTextX', 'porterText', -500, 1.5, 'quartInOut')
	doTweenX('optimizerTextX', 'optimizerText', -500, 1.5, 'quartInOut')
	doTweenX('otherTextX', 'otherText', -500, 1.5, 'quartInOut')
end