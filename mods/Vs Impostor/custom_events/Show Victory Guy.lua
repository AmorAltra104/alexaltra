function onEvent(name,value1,value2)
if name == 'Show Victory Guy' then
if value1 == '' then
setProperty('vic_jor.alpha',0)
setProperty('vic_war.alpha',0)
setProperty('vic_jelq.alpha',0)
end
if value1 == 'jor' then
if value2 == 'show' then
setProperty('vic_jor.alpha',1)
else
setProperty('vic_jor.alpha',0)
end
elseif value1 == 'war' then
if value2 == 'show' then
setProperty('vic_war.alpha',1)
setProperty('vic_war.x',693.7)
setProperty('vic_war.y',421.9)
else
setProperty('vic_war.alpha',0)
end
elseif value1 == 'warMid' then
if value2 == 'show' then
setProperty('vic_war.alpha',1)
setProperty('vic_war.x',853.3)
setProperty('vic_war.y',421.9)
else
setProperty('vic_war.alpha',0)
end
elseif value1 == 'jelqLeft' then
if value2 == 'show' then
setProperty('vic_jelq.alpha',1)
setProperty('vic_jelq.x',676.05)
setProperty('vic_jelq.y',458.3)
else
setProperty('vic_jelq.alpha',0)
end
elseif value1 == 'jelqMid' then
if value2 == 'show' then
setProperty('vic_jelq.alpha',1)
setProperty('vic_jelq.x',835.65)
setProperty('vic_jelq.y',458.3)
else
setProperty('vic_jelq.alpha',0)
end
elseif value1 == 'jelqMiddle' then
if value2 == 'show' then
setProperty('vic_jelq.alpha',1)
setProperty('vic_jelq.x',835.65)
setProperty('vic_jelq.y',458.3)
else
setProperty('vic_jelq.alpha',0)
end
elseif value1 == 'jelqRight' then
if value2 == 'show' then
setProperty('vic_jelq.alpha',1)
setProperty('vic_jelq.x',982.75)
setProperty('vic_jelq.y',458.3)
else
setProperty('vic_jelq.alpha',0)
end
end
end
end