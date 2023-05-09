function onEvent(name,value1,value2)
if name == 'Toogus Sax' then
makeAnimatedLuaSprite('cyan_toogus','bg/images/mira/cyan_toogus',-400,250)
addAnimationByPrefix('cyan_toogus','idle','Cyan Dancy',24,false)
addLuaSprite('cyan_toogus',true)
doTweenX('cyan_toogus','cyan_toogus',1500,15.5,'linear')
doTweenAlpha('camHUD','camHUD',0,1,'linear')
end
end
function onStepHit()
if curStep == 1050 then
removeLuaSprite('cyan_toogus',true)
end
end