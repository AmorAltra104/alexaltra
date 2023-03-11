local extrahealth = 0
local maxextrahealth
local Lasthealth
local percent = 0
local uh = 0
local healthgain
function onCreate()
 maxextrahealth = 2 --represents the maximum extra health you can have, defualt is 2
 healthgain = 0.02 --how much extra health is gained per note

makeLuaText("ExtraHealth", "Extrahealth:", 500, 540, 610)
	makeLuaText("Amount", "%0", 0, 895, 610)
	setTextSize("ExtraHealth", 30)
	setTextSize("Amount", 30)
	addLuaText("ExtraHealth")
	addLuaText("Amount")
end

function goodNoteHit()
    Lasthealth = getProperty('health')
    if Lasthealth > 2 then
     Lasthealth = 2
    end
    health = getProperty('health')
    if getProperty('health') >= 2 then
        extrahealth = extrahealth + healthgain
        if extrahealth > maxextrahealth then
         extrahealth = maxextrahealth
        end
        setTextString("Amount", "%" .. percent .. "(" .. extrahealth .. ")")

    end
end

function onUpdate()
 percent = extrahealth * (maxextrahealth * (100 / (maxextrahealth * maxextrahealth))) --just to calculate the percentage of health
 if getProperty('health') < Lasthealth and extrahealth > 0 then
  local deltahealth = Lasthealth - getProperty('health')
  extrahealth = extrahealth - deltahealth
  if extrahealth <= 0 then
   percent = 0
  else
   percent = extrahealth * (maxextrahealth * (100 / (maxextrahealth * maxextrahealth)))
  end
  if extrahealth < 0 then
    extrahealth = 0
    setTextString("Amount", "%" .. percent .. "(" .. extrahealth .. ")")
  end 
  setProperty('health', Lasthealth)
  setTextString("Amount", "%" .. percent .. "(" .. extrahealth .. ")")
 end
 if percent == 0 then
  setTextColor("Amount", 1000, 0, 0)
 else
  if percent > 0 then
   setTextColor("Amount", 0, 0, 0)
  else
   if percent >= 100 then
    setTextColor("Amount", 30, 0, 0)
   end
  end
 end
end
