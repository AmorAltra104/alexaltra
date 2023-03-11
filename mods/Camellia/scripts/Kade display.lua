-- CODE SHIT BY I-WIN

-- kade ui by daninnocent

--CREDIT TO 1F1D ON GAMEBANANA FOR MAKING THE KADEBAR SCRIPT
--CREDIT TO Tomek*Tomciok*Przybysz ON GAMEBANANA FOR FIXING THE KADEBAR SCRIPT

-- idk how to code ok leave me be :( -daninnocent


local display = true--是否开启display


local curTotalNotesHit = 0
local counterUpdated = 0
local actualRatingHere = 0.00
local msDiffTimeLimit = 1200  -- how many ms after hitting a note should the ms rating disappear
local lastMsShowUp = 0
local msTextVisible = false
local isPixel = false
-- local turnvalue = 20

function onCreatePost()
    if getPropertyFromClass('PlayState', 'isPixelStage') then 
		isPixel = true
	end
   
end
    

	
    
    -- setProperty('timeBar.scale.x', 1.3);
    -- setProperty('timeBar.scale.y', 1.3);
    -- setProperty('timeBarBG.scale.x', 1.3);
    -- setProperty('timeBarBG.scale.y', 1.3);
    -- setProperty('timeTxt.scale.x', 1.3);
    -- setProperty('timeTxt.scale.y', 1.3);
	



function onCreate()
    -- the 540 is the x pos of the text; the 360 is the y pos of the text. Note that y pos is from the top.
    if  display == true and not botPlay  then
    makeLuaText('msTxt', ' ', 0, 600, 450)
    setTextSize('msTxt', 17)
    setTextBorder('msTxt', 2, '000000')
    setTextFont('msTxt', 'pixel.otf')
    addLuaText('msTxt')
    end

    end

function onUpdatePost(elapsed)
	-- start of "update", some variables weren't updated yet
    -- This updates the contents of the score text.
    -- the rating name is not drawn from the game source.
    -- debugPrint(curTotalNotesHit)

    -- DETERMING WHETHER TO HIDE THE MS DIFF

    if getPropertyFromClass('PlayState', 'isPixelStage') then 
		isPixel = true
	end

    local curSongPosRightNow = getPropertyFromClass('Conductor', 'songPosition')
    if curSongPosRightNow - lastMsShowUp > msDiffTimeLimit and msTextVisible then
        removeLuaText('msTxt', false)
        setTextString('msTxt', '')
        addLuaText('msTxt')
        msTextVisible = false
    end

    -- UPDATING SCORETXT

 
end

function goodNoteHit(id, direction, noteType, isSustainNote)
    if not isSustainNote then
        strumTime = getPropertyFromGroup('notes', id, 'strumTime')
        songPos = getPropertyFromClass('Conductor', 'songPosition')
        rOffset = getPropertyFromClass('ClientPrefs','ratingOffset')
        updateAccuracy(strumTime, songPos, rOffset)
    end
end



function updateAccuracy(strumTime, songPos, rOffset) -- HELPER FUNCTION
    local noteDiffSign = strumTime - songPos + rOffset
    local noteDiffAbs = math.abs(noteDiffSign)
    local totalNotesForNow = handleNoteDiff(noteDiffAbs)
    -- local rawJudgements = cancelExistingJudgements(noteDiffAbs)
    -- debugPrint(rawJudgements)
    -- local notesHitDiff = totalNotesForNow - rawJudgements
    -- addHits(noteHitDiff)
    showMsDiffOnScreen(noteDiffSign)
    curTotalNotesHit = curTotalNotesHit + totalNotesForNow
    counterUpdated = counterUpdated + 1
    -- curAccuracy = curTotalNotesHit / counterUpdated
    -- debugPrint(curTotalNotesHit)
    -- setHits(curTotalNotesHit)
    -- getProperty(totalNotesHit)
    
    -- debugPrint(curTotalNotesHit / counterUpdated)
    actualRatingHere = curTotalNotesHit / counterUpdated
    setProperty('ratingPercent', math.max(0, actualRatingHere))  -- we technically need this so the game accounts that for the high score
    -- setRatingPercent(actualRatingHere)
    
    -- debugPrint(tln)
    -- setProperty('totalNotesHit', curTotalNotesHit)
    -- setProperty('totalPlayed', counterUpdated)

    -- ratingStr = accuracyToRatingString(curAccuracy * 100)
    -- setProperty('ratingPercent', math.max(0, curAccuracy))
    -- setProperty('ratingName', ratingStr)
end


function showMsDiffOnScreen(diff)  -- remove everything in this function if you don't want ms timings.
    setProperty('msTxt.alpha', 1)
    removeLuaText('msTxt', false)
    local msDiffStr = string.format("%.4fms", -diff)
    -- debugPrint(msDiffStr)
    local textColor = ratingTextColor(diff)
    setTextColor('msTxt', textColor)
    setTextString('msTxt', msDiffStr)
    if diff > 399 then
        setTextString('msTxt', '')
    end

    addLuaText('msTxt')

    doTweenAlpha('msTxtGONE', 'msTxt', 0, 0.5, 'circInOut')

    lastMsShowUp =  getPropertyFromClass('Conductor', 'songPosition')
    msTextVisible = true

    

    -- local msDiffStr = string.format("%.3f", diff)
    -- msDiffStr = msDiffStr + 'ms'
    -- debugPrint(msDiffStr)
 
end


function ratingTextColor(diff)
    local absDiff = math.abs(diff)
    
    if absDiff < 45.000 then
        return 'FFFF00'
    elseif absDiff < 91.000 then
        return '1E90FF'
          elseif absDiff < 166.000 then
        return 'FFA500'
    else
        return '000000'
    end
end







function handleNoteDiff(diff) -- HELPER FUNCTION
    local maxms = diff
    local ts = 1

    local max_points = 1.0;
    local miss_weight = -0.001; -- used to be -5.5; this should be a lot less harsh.
    local ridic = 45 * ts;
    local power = 1.0;
    local max_boo_weight = 166
    local ts_pow = 1.0;
    local zero = 166 * ts^ts_pow
    local power = 1.0;
    local dev = 135 * ts^ts_pow

 
   
end



function noteMissPress(direction)
    updateAccuracy(400, 0, 0)
end

function noteMiss(id, direction, noteType, isSustainNote)
    updateAccuracy(400, 0, 0)
end


	function round(x, n) --https://stackoverflow.com/questions/18313171/lua-rounding-numbers-and-then-truncate
					n = math.pow(10, n or 0)
					x = x * n
					if x >= 0 then x = math.floor(x + 0.5) else x = math.ceil(x - 0.5) end
					return x / n
				end

