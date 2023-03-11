sca = 1.2 --1.25
iconP = sca * 10
sdj = 0.05 --0.05  原版PE收回速度0.2
function onCreatePost()
iconP1 = getProperty('iconP1.y')
iconP2 = getProperty('iconP2.y')
end
function onBeatHit()
setProperty('iconP1.scale.x',sca)
setProperty('iconP2.scale.x',sca)
doTweenX('iconP2X','iconP2.scale',1,sdj,'smootherStepOut')
doTweenY('iconP2Y','iconP2.scale',1,sdj,'smootherStepOut')
doTweenX('iconP1X','iconP1.scale',1,sdj,'smootherStepOut')
doTweenY('iconP1Y','iconP1.scale',1,sdj,'smootherStepOut')
setProperty('iconP1.y',iconP1 + iconP)
setProperty('iconP2.y',iconP2 + iconP)
doTweenY('1iconP11Y','iconP1',getProperty('iconP1.y') - iconP,sdj,'smootherStepOut')
doTweenY('2iconP22Y','iconP2',getProperty('iconP2.y') - iconP,sdj,'smootherStepOut')
end