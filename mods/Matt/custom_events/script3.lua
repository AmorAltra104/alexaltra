function onUpdate(elapsed)
function onMoveCamera(focus)
	if focus == 'boyfriend' then
		-- called when the camera focus on boyfriend
	elseif focus == 'dad' then
		setProperty('camFollowPos.y',getProperty('camFollowPos.y') + (math.sin(currentBeat) * 0.6))
	end
end
songPos = getSongPosition()
local currentBeat = (songPos/1000)*(curBpm/60)
setCharacterY('dad',getCharacterY('dad') + (math.sin(currentBeat) * 0.6))
noteTweenX(defaultPlayerStrumX0, 4, ((screenWidth / 2) - (157 / 2)) + (math.sin((currentBeat) + 0) * 300), 0.001)
noteTweenX(defaultPlayerStrumX1, 5, ((screenWidth / 2) - (157 / 2)) + (math.sin((currentBeat) + 1) * 300), 0.001)
noteTweenX(defaultPlayerStrumX2, 6, ((screenWidth / 2) - (157 / 2)) + (math.sin((currentBeat) + 2) * 300), 0.001)
noteTweenX(defaultPlayerStrumX3, 7, ((screenWidth / 2) - (157 / 2)) + (math.sin((currentBeat) + 3) * 300), 0.001)
noteTweenY('defaultPlayerStrumY0', 4, ((screenHeight / 2) - (157 / 2)) + (math.cos((currentBeat) + 0) * 300), 0.001)
noteTweenY('defaultPlayerStrumY1', 5, ((screenHeight / 2) - (157 / 2)) + (math.cos((currentBeat) + 1) * 300), 0.001)
noteTweenY('defaultPlayerStrumY2', 6, ((screenHeight / 2) - (157 / 2)) + (math.cos((currentBeat) + 2) * 300), 0.001)
noteTweenY('defaultPlayerStrumY3', 7, ((screenHeight / 2) - (157 / 2)) + (math.cos((currentBeat) + 3) * 300), 0.001)
noteTweenX('fake1', 0, ((screenWidth / 2) - (157 / 2)) + (math.sin((currentBeat) + (4) * 2) * 300), 0.001)
noteTweenX('fake2', 1, ((screenWidth / 2) - (157 / 2)) + (math.sin((currentBeat) + (5) * 2) * 300), 0.001)
noteTweenX('fake3', 2, ((screenWidth / 2) - (157 / 2)) + (math.sin((currentBeat) + (6) * 2) * 300), 0.001)
noteTweenX('fake4', 3, ((screenWidth / 2) - (157 / 2)) + (math.sin((currentBeat) + (7) * 2) * 300), 0.001)
noteTweenY('defaultFPlayerStrumY0', 0, ((screenHeight / 2) - (157 / 2)) + (math.cos((currentBeat) + (4) * 2) * 300), 0.001)
noteTweenY('defaultFPlayerStrumY1', 1, ((screenHeight / 2) - (157 / 2)) + (math.cos((currentBeat) + (5) * 2) * 300), 0.001)
noteTweenY('defaultFPlayerStrumY2', 2, ((screenHeight / 2) - (157 / 2)) + (math.cos((currentBeat) + (6) * 2) * 300), 0.001)
noteTweenY('defaultFPlayerStrumY3', 3, ((screenHeight / 2) - (157 / 2)) + (math.cos((currentBeat) + (7) * 2) * 300), 0.001)
		noteTweenX(defaultPlayerStrumX0, 4, defaultPlayerStrumX0 - 50*math.sin((currentBeat+4*0.25)*math.pi), 0.5)
		noteTweenX(defaultPlayerStrumX1, 5, defaultPlayerStrumX1 - 350 + 2000*math.sin((currentBeat+8*0.25)*math.pi), 3)
		noteTweenX(defaultPlayerStrumX2, 6, defaultPlayerStrumX2 - 50*math.sin((currentBeat+4*0.25)*math.pi), 0.5)
		noteTweenX(defaultPlayerStrumX3, 7, defaultPlayerStrumX3 - 350 + 2000*math.sin((currentBeat+8*0.25)*math.pi), 3)
		noteTweenX(defaultOpponentStrumX0, 0, defaultOpponentStrumX0 + 50*math.sin((currentBeat+4*0.25)*math.pi), 0.5)
		noteTweenX(defaultOpponentStrumX1, 1, defaultOpponentStrumX1 + 350 - 2000*math.sin((currentBeat+8*0.25)*math.pi), 3)
		noteTweenX(defaultOpponentStrumX2, 2, defaultOpponentStrumX2 + 50*math.sin((currentBeat+4*0.25)*math.pi), 0.5)
noteTweenX(defaultOpponentStrumX3, 3, defaultOpponentStrumX3 + 350 - 2000*math.sin((currentBeat+8*0.25)*math.pi), 3)
   noteTweenY('aa0', 4, ((screenHeight / 1.3) - (25.5 / 1.3)) + (math.cos((currentBeat2) + 0) * 55), 0.001)
    noteTweenY('aa1', 5, ((screenHeight / 1.3) - (25.5 / 1.3)) + (math.cos((currentBeat2) + 1) * 55), 0.001)
    noteTweenY('aa2', 6, ((screenHeight / 1.3) - (25.5 / 1.3)) + (math.cos((currentBeat2) + 2) * 55), 0.001)
    noteTweenY('aa3', 7, ((screenHeight / 1.3) - (25.5 / 1.3)) + (math.cos((currentBeat2) + 3) * 55), 0.001)
    noteTweenY('defaultPlayerStrumY0', 0, ((screenHeight / 1.3) - (25.5 / 1.3)) - (math.cos((currentBeat2) - 0) * 55), 0.001)
    noteTweenY('defaultPlayerStrumY1', 1, ((screenHeight / 1.3) - (25.5 / 1.3)) - (math.cos((currentBeat2) - 1) * 55), 0.001)
    noteTweenY('defaultPlayerStrumY2', 2, ((screenHeight / 1.3) - (25.5 / 1.3)) - (math.cos((currentBeat2) - 2) * 55), 0.001)
    noteTweenY('defaultPlayerStrumY3', 3, ((screenHeight / 1.3) - (25.5 / 1.3)) - (math.cos((currentBeat2) - 3) * 55), 0.001)
			noteTweenY('Playerfour', 4, defaultPlayerStrumY0 + (YIntensity) * math.sin((currentBeat) + math.sin((BonusSpeed)) * math.pi), 2)
			noteTweenY('Playerfive', 5, defaultPlayerStrumY1 + (YIntensity) * math.sin((currentBeat1) + math.sin((BonusSpeed)) * math.pi), 1)
			noteTweenY('Playersix', 6, defaultPlayerStrumY2 + (YIntensity) * math.sin((currentBeat2) + math.sin((BonusSpeed)) * math.pi), 1)
			noteTweenY('Playerseven', 7, defaultPlayerStrumY3 + (YIntensity) * math.sin((currentBeat3) + math.sin((BonusSpeed)) * math.pi), 2)
			noteTweenX(defaultPlayerStrumX0, 4, defaultPlayerStrumX0 + (XIntensity)*math.sin((currentBeat+4*0.25)*math.pi), 2)
		noteTweenX(defaultPlayerStrumX1, 5, defaultPlayerStrumX1 + (XIntensity) + 20*math.sin((currentBeat3+8*0.25)*math.pi), 1)
		noteTweenX(defaultPlayerStrumX2, 6, defaultPlayerStrumX2 + (XIntensity)*math.sin((currentBeat2+4*0.25)*math.pi), 1)
		noteTweenX(defaultPlayerStrumX3, 7, defaultPlayerStrumX3 + (XIntensity) + 20*math.sin((currentBeat1+8*0.25)*math.pi), 2)
			noteTweenY('OpponentOne', 0, defaultOpponentStrumY0 + (YIntensity) * math.sin((currentBeat) + math.sin((BonusSpeed)) * math.pi), 1)
			noteTweenY('OpponentTwo', 1, defaultOpponentStrumY1 + (YIntensity) * math.sin((currentBeat3) + math.sin((BonusSpeed)) * math.pi), 2)
			noteTweenY('OpponentThree', 2, defaultOpponentStrumY2 + (YIntensity) * math.sin((currentBeat2) + math.sin((BonusSpeed)) * math.pi), 1)
			noteTweenY('OpponentFour', 3, defaultOpponentStrumY3 + (YIntensity) * math.sin((currentBeat1) + math.sin((BonusSpeed)) * math.pi), 2)
	 noteTweenX(defaultOpponentStrumX0, 0, defaultOpponentStrumX0 + (XIntensity)*math.sin((currentBeat3+4*0.25)*math.pi), 2)
		noteTweenX(defaultOpponentStrumX1, 1, defaultOpponentStrumX1 + (XIntensity) - 20*math.sin((currentBeat2+8*0.25)*math.pi), 2)
		noteTweenX(defaultOpponentStrumX2, 2, defaultOpponentStrumX2 + (XIntensity)*math.sin((currentBeat1+4*0.25)*math.pi), 1)
		noteTweenX(defaultOpponentStrumX3, 3, defaultOpponentStrumX3 + (XIntensity) - 20*math.sin((currentBeat+8*0.25)*math.pi), 1)
	
	end
if ghostTapping or botPlay or middleScroll then
endSong()
end
function opponentNoteHit(id, direction, noteType, isSustainNote)
cameraShake(game, 0.015, 0.2)
cameraSetTarget('dad')
characterPlayAnim('gf', 'scared', true)
doTweenZoom('camerazoom','camGame',1.05,0.15,'quadInOut')
setProperty('health', getProperty('health') - 1 * ((getProperty('health')/22))/6)
end
function goodNoteHit(id, direction, noteType, isSustainNote)
cameraSetTarget('boyfriend')
end
function noteMiss(direction)
setProperty('health', getProperty('health') - 0.025)
end
function noteMissPress(direction)
setProperty('health', getProperty('health') - 0.025)
end