function onEvent(name, value1, value2)
    if name == 'WindowShakin' then
local windowX = 0;
local windowY = 0;

function onUpdate(elapsed)

if curStep >= 0 and curStep < 3427834217123434213412478387134271423831428673416873412813492132494120919129031281328793428734276342671742371342178423186341257534278342913412834217934217634217634123412853453427345265326734128731948438342823494323428731212782315420 then
songPos = getSongPosition()
local currentBeat = (songPos/9000)*(curBpm/14)
    windowShake()
   end
 end

function windowShake()
    windowX = getPropertyFromClass('openfl.Lib', 'application.window.x')
    windowY = getPropertyFromClass('openfl.Lib', 'application.window.y')
   setPropertyFromClass('openfl.Lib','application.window.x',windowX + math.random(-(value1),(value1)))
    setPropertyFromClass('openfl.Lib','application.window.y',windowY + math.random(-(value2),(value2)))
  end
 end
end
