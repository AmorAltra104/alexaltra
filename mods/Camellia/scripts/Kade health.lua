function goodNoteHit(id, noteData, noteType, isSustainNote)
    local strumTime = getPropertyFromGroup('notes', id, 'strumTime')
    local songPos = getPropertyFromClass('Conductor', 'songPosition')
    local rOffset = getPropertyFromClass('ClientPrefs','ratingOffset')
    
    local diff = strumTime - songPos + rOffset;
    local msDiffStr = string.format("%.3fms", -diff)

    if isSustainNote then
        lastSustain = sustainNote;
health = getProperty('health')
		if getProperty('health') > 0.01 then
			setProperty('health', health -0.023);
			
		else
			setProperty('health', 0.001);
		end
        if mysustain == sustainNote then
            local rated = getRatingType(diff)
        if rated == "SICK" then
               
        elseif rated == "GOOD" then
                 
        elseif rated == "BAD" then
                
        elseif rated == "SHIT" then

        end

            
        end
    else
        local rated = getRatingType(diff)
health = getProperty('health')
        if rated == "SICK" then
                setProperty('health', health +0.04);
        elseif rated == "GOOD" then
              setProperty('health', health -0.005);
        elseif rated == "BAD" then
                setProperty('health', health -0.005);
        elseif rated == "SHIT" then
               setProperty('health', health -0.2);
               addMisses(1)
               
        end

        
    
    end
end



    
  




function getRatingType(diff)
    local absDiff = math.abs(diff)

    if absDiff <= 45.0 then
        return 'SICK'
    elseif absDiff <= 90.0 then
        return 'GOOD'
    elseif absDiff <= 135.0 then
        return 'BAD'
    else
        return 'SHIT'
    end
end







function noteMiss(id, noteData, noteType, isSustainNote)
	
	health = getProperty('health')
	setProperty('health', health -0.08);
	
	if  isSustainNote then
		health = getProperty('health')
		if getProperty('health') > 0.01 then
			setProperty('health', health +0.1275);
			addMisses(-1)
			addScore(10)
		
	
		end
	end
end
function onCreate()

setProperty('healthGain',1)
setProperty('healthLoss',1)

end

