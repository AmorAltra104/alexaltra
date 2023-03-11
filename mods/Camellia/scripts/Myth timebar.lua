function onCreatePost()
makeLuaSprite('newtimebars', 'myth engine/newtimebars', 340, 675);
	addLuaSprite('newtimebars', false)
	setObjectCamera('newtimebars', "hud")	
	setObjectOrder('newtimebars', 2)
    scaleObject('newtimebars', 1, 1)
     
       makeLuaText('songName', songName,0, 600, 682)
        setTextAlignment('songName', 'center')
        setTextSize('songName', 20)
        setTextBorder('songName', 1, '000000')
       
        addLuaText('songName')
        setTextFont('songName', '2.ttf')
        setObjectCamera('songName', 'hud')
    
      
    if not downscroll then 
    setProperty('newtimebars.y', 5)
    setProperty('songName.y', 12)
    
    	end
				
				if dadName == 'camellia' or dadName == 'camelliaHalloween' then
				makeLuaSprite('timebar', 'myth engine/timebar camellia', 362, 24)
				setObjectOrder('timebar', 3)
				addLuaSprite('timebar', true)
				setObjectCamera('timebar', 'hud')
				scaleObject('timebar', 1.625, .035)
				end
				if dadName == 'botan' then
				makeLuaSprite('timebar', 'myth engine/timebar botan', 362, 24)
				setObjectOrder('timebar', 3)
				addLuaSprite('timebar', true)
				setObjectCamera('timebar', 'hud')
				scaleObject('timebar', 1.625, .035)
				end
				if dadName == 'Miku' then
				makeLuaSprite('timebar', 'myth engine/timebar miku', 362, 24)
				setObjectOrder('timebar', 3)
				addLuaSprite('timebar', true)
				setObjectCamera('timebar', 'hud')
				scaleObject('timebar', 1.625, .035)
				end
				if dadName == 'pico' then
				makeLuaSprite('timebar', 'myth engine/timebar pico', 362, 24)
				setObjectOrder('timebar', 3)
				addLuaSprite('timebar', true)
				setObjectCamera('timebar', 'hud')
				scaleObject('timebar', 1.625, .035)
				end
				if dadName == 'gf' or dadName == 'gf-t' then
				makeLuaSprite('timebar', 'myth engine/timebar gf', 362, 24)
				setObjectOrder('timebar', 3)
				addLuaSprite('timebar', true)
				setObjectCamera('timebar', 'hud')
				scaleObject('timebar', 1.625, .035)
				end
				if dadName == 'bf-c' or dadName == 'bfHalloween-c' then
				makeLuaSprite('timebar', 'myth engine/timebar bf', 362, 24)
				setObjectOrder('timebar', 3)
				addLuaSprite('timebar', true)
				setObjectCamera('timebar', 'hud')
				scaleObject('timebar', 1.625, .035)
				end
				
				end
function onUpdatePost()
setTextString('songName', "(" .. milliToHuman(math.floor(songLength - (getPropertyFromClass('Conductor', 'songPosition') - noteOffset))) .. ")")

    scaleObject('timebar', 1.625 * getProperty("songPercent"), .035)            
					if downscroll then
						
						setProperty('timebar.y', 694)
						end
end

function milliToHuman(milliseconds) -- https://forums.mudlet.org/viewtopic.php?t=3258
	local totalseconds = math.floor(milliseconds / 1000)
	local seconds = totalseconds % 60
	local minutes = math.floor(totalseconds / 60)
	minutes = minutes % 60
	return string.format("%02d:%02d", minutes, seconds)  
end