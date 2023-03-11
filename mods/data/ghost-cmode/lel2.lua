function onEvent(name,value1,value2)

va = tonumber(value2)
if name == "Set Cam Zoom" then
if value1 == "0.5" then
doTweenY('9','publi',600,va,'sineout')

end
if value1 == "0.42" then
doTweenY('2','publi',60,va,'sineout')

end
if value1 == "0.33" then
doTweenY('22','publi',60,va,'sineout')

end

if boyfriendName == 'camellia-c-m' then

if value1 == "0.5" then
doTweenY('9','publi',600,va,'sineout')
doTweenZoom('Zoom','camHUD',1,va,'sineout')
end
if value1 == "0.42" then
doTweenY('2','publi',60,va,'sineout')
doTweenZoom('Zoom','camHUD',0.85,va,'sineout')
end
if value1 == "0.33" then
doTweenY('22','publi',60,va,'sineout')
doTweenZoom('Zoom','camHUD',0.65,va,'sineout')
end
end
end
end