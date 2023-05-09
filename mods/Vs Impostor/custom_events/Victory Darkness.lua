function onEvent(name,value1,value2)
if name == 'Victory Darkness' then
if value1 == 'on' then
setProperty('blackwall.alpha',1)
end
if value1 == 'off' then
setProperty('blackwall.alpha',0)
end
if value1 == '' then
setProperty('blackwall.alpha',0)
end
end
end