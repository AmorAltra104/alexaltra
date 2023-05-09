stop = true
function onUpdate()
if stop == true then
setProperty('IntroBar.x',0)
setProperty('porterText.x',20)
setProperty('optimizerText.x',20)
setProperty('otherText.x',20)
end
if curStep ==24 then
stop = false
doTweenX('IntroBarX', 'IntroBar', -600, 1.5, 'quartInOut')
	doTweenX('porterTextX', 'porterText', -600, 1.5, 'quartInOut')
	doTweenX('optimizerTextX', 'optimizerText', -600, 1.5, 'quartInOut')
	doTweenX('otherTextX', 'otherText', -600, 1.5, 'quartInOut')
end
end