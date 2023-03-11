function onEvent(name, value1)
    if name == 'WindowRename' then

function onUpdate(elapsed)

if curStep >= 0 and curStep < 3427834217123434213412478387134271423831428673416873412813492132494120919129031281328793428734276342671742371342178423186341257534278342913412834217934217634217634123412853453427345265326734128731948438342823494323428731212782315420 then
songPos = getSongPosition()
local currentBeat = (songPos/9000)*(curBpm/14)
  windowRename()
   end
end

function windowRename()
setPropertyFromClass("openfl.Lib", "application.window.title", (value1))
     end
   end
end