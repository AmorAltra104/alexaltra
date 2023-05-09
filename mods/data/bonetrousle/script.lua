function onCreatePost()
	if difficultyName == "Normal" then
		for i= 0, getProperty('unspawnNotes.length')-1 do
              if getPropertyFromGroup('unspawnNotes', i, 'mustPress') and getPropertyFromGroup('unspawnNotes', i, 'noteType') == '' or getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Hey!' then
	                  setPropertyFromGroup('unspawnNotes', i, 'texture', 'Note Skins/blue')
	                  setPropertyFromGroup('unspawnNotes', i, 'noteSplashTexture', 'Note Skins/blueSplash')
					  setPropertyFromGroup('unspawnNotes', i, 'flipX', true)
					  setPropertyFromGroup('unspawnNotes', i, 'flipY', true)
end
end
end
end

function onStepHit()
	if difficultyName == "Normal" then
         if curStep == 320 then
		    if downscroll == false then
               noteTweenDirection('note1Tween', 4, 270, 0.1, 'linear')
			   noteTweenDirection('note2Tween', 5, 270, 0.1, 'linear')
			   noteTweenDirection('note3Tween', 6, 270, 0.1, 'linear')
			   noteTweenDirection('note4Tween', 7, 270, 0.1, 'linear')
			   
			   noteTweenY('note1TweenY', 4, 570, 0.1, 'linear')
			   noteTweenY('note2TweenY', 5, 570, 0.1, 'linear')
			   noteTweenY('note3TweenY', 6, 570, 0.1, 'linear')
			   noteTweenY('note4TweenY', 7, 570, 0.1, 'linear')
end
		    if downscroll == true then
               noteTweenDirection('note1Tween', 4, 270, 0.1, 'linear')
			   noteTweenDirection('note2Tween', 5, 270, 0.1, 'linear')
			   noteTweenDirection('note3Tween', 6, 270, 0.1, 'linear')
			   noteTweenDirection('note4Tween', 7, 270, 0.1, 'linear')
			   
			   noteTweenY('note1TweenY', 4, 50, 0.1, 'linear')
			   noteTweenY('note2TweenY', 5, 50, 0.1, 'linear')
			   noteTweenY('note3TweenY', 6, 50, 0.1, 'linear')
			   noteTweenY('note4TweenY', 7, 50, 0.1, 'linear')
end
		for a= 0,3,1 do
					  setPropertyFromGroup('playerStrums', a, 'texture', 'Note Skins/blue')
end
end
end
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
	if downscroll == false then
		if songName == "Bonetrousle" and difficultyName == "Normal" and curStep >= 320 then 
				if noteData == 0 then
					noteTweenY('noteHitTweenY1', 4, 580, crochet / 5000, 'linear')
				elseif noteData == 1 then
					noteTweenY('noteHitTweenY2', 5, 580, crochet / 5000, 'linear')
				elseif noteData == 2 then
					noteTweenY('noteHitTweenY3', 6, 580, crochet / 5000, 'linear')
				elseif noteData == 3 then
					noteTweenY('noteHitTweenY4', 7, 580, crochet / 5000, 'linear')			
end
end
		if songName == "Bonetrousle" and difficultyName == "Normal" and curStep < 320 then 
				if noteData == 0 then
					noteTweenY('noteHitTweenY1', 4, 40, crochet / 5000, 'linear')
				elseif noteData == 1 then
					noteTweenY('noteHitTweenY2', 5, 40, crochet / 5000, 'linear')
				elseif noteData == 2 then
					noteTweenY('noteHitTweenY3', 6, 40, crochet / 5000, 'linear')
				elseif noteData == 3 then
					noteTweenY('noteHitTweenY4', 7, 40, crochet / 5000, 'linear')			
end
end
		if songName == "Bonetrousle" and difficultyName == "No Mechanics" then 
				if noteData == 0 then
					noteTweenY('noteHitTweenY1', 4, 40, crochet / 5000, 'linear')
				elseif noteData == 1 then
					noteTweenY('noteHitTweenY2', 5, 40, crochet / 5000, 'linear')
				elseif noteData == 2 then
					noteTweenY('noteHitTweenY3', 6, 40, crochet / 5000, 'linear')
				elseif noteData == 3 then
					noteTweenY('noteHitTweenY4', 7, 40, crochet / 5000, 'linear')			
end
end
end
	if downscroll == true then
		if songName == "Bonetrousle" and difficultyName == "Normal" and curStep >= 320 then 
				if noteData == 0 then
					noteTweenY('noteHitTweenY1', 4, 40, crochet / 5000, 'linear')
				elseif noteData == 1 then
					noteTweenY('noteHitTweenY2', 5, 40, crochet / 5000, 'linear')
				elseif noteData == 2 then
					noteTweenY('noteHitTweenY3', 6, 40, crochet / 5000, 'linear')
				elseif noteData == 3 then
					noteTweenY('noteHitTweenY4', 7, 40, crochet / 5000, 'linear')			
end
end
		if songName == "Bonetrousle" and difficultyName == "Normal" and curStep < 320 then 
				if noteData == 0 then
					noteTweenY('noteHitTweenY1', 4, 580, crochet / 5000, 'linear')
				elseif noteData == 1 then
					noteTweenY('noteHitTweenY2', 5, 580, crochet / 5000, 'linear')
				elseif noteData == 2 then
					noteTweenY('noteHitTweenY3', 6, 580, crochet / 5000, 'linear')
				elseif noteData == 3 then
					noteTweenY('noteHitTweenY4', 7, 580,crochet / 5000, 'linear')			
end
end
		if songName == "Bonetrousle" and difficultyName == "No Mechanics" then 
				if noteData == 0 then
					noteTweenY('noteHitTweenY1', 4, 580, crochet / 5000, 'linear')
				elseif noteData == 1 then
					noteTweenY('noteHitTweenY2', 5, 580, crochet / 5000, 'linear')
				elseif noteData == 2 then
					noteTweenY('noteHitTweenY3', 6, 580, crochet / 5000, 'linear')
				elseif noteData == 3 then
					noteTweenY('noteHitTweenY4', 7, 580, crochet / 5000, 'linear')			
end
end
end
end

function onTweenCompleted(tag)
	if downscroll == false then
		if songName == "Bonetrousle" and difficultyName == "Normal" and curStep >= 320 then 
		     if tag == 'noteHitTweenY1' then
				noteTweenY('noteHitTweenY11', 4, 570, crochet / 5000, 'linear') 
		     elseif tag == 'noteHitTweenY2' then
				noteTweenY('noteHitTweenY21', 5, 570, crochet / 5000, 'linear') 
		     elseif tag == 'noteHitTweenY3' then
				noteTweenY('noteHitTweenY31', 6, 570, crochet / 5000, 'linear') 
		     elseif tag == 'noteHitTweenY4' then
				noteTweenY('noteHitTweenY41', 7, 570, crochet / 5000, 'linear') 
end
end
		if songName == "Bonetrousle" and difficultyName == "Normal" and curStep < 320 then 
		     if tag == 'noteHitTweenY1' then
				noteTweenY('noteHitTweenY11', 4, 50, crochet / 5000, 'linear') 
		     elseif tag == 'noteHitTweenY2' then
				noteTweenY('noteHitTweenY21', 5, 50, crochet / 5000, 'linear') 
		     elseif tag == 'noteHitTweenY3' then
				noteTweenY('noteHitTweenY31', 6, 50, crochet / 5000, 'linear') 
		     elseif tag == 'noteHitTweenY4' then
				noteTweenY('noteHitTweenY41', 7, 50, crochet / 5000, 'linear') 
end
end
		if songName == "Bonetrousle" and difficultyName == "No Mechanics" then 
		     if tag == 'noteHitTweenY1' then
				noteTweenY('noteHitTweenY11', 4, 50, crochet / 5000, 'linear') 
		     elseif tag == 'noteHitTweenY2' then
				noteTweenY('noteHitTweenY21', 5, 50, crochet / 5000, 'linear') 
		     elseif tag == 'noteHitTweenY3' then
				noteTweenY('noteHitTweenY31', 6, 50, crochet / 5000, 'linear') 
		     elseif tag == 'noteHitTweenY4' then
				noteTweenY('noteHitTweenY41', 7, 50, crochet / 5000, 'linear') 
end
end
end
	if downscroll == true then
		if songName == "Bonetrousle" and difficultyName == "Normal" and curStep >= 320 then 
		     if tag == 'noteHitTweenY1' then
				noteTweenY('noteHitTweenY11', 4, 50, crochet / 5000, 'linear') 
		     elseif tag == 'noteHitTweenY2' then
				noteTweenY('noteHitTweenY21', 5, 50, crochet / 5000, 'linear') 
		     elseif tag == 'noteHitTweenY3' then
				noteTweenY('noteHitTweenY31', 6, 50, crochet / 5000, 'linear') 
		     elseif tag == 'noteHitTweenY4' then
				noteTweenY('noteHitTweenY41', 7, 50, crochet / 5000, 'linear') 
end
end
		if songName == "Bonetrousle" and difficultyName == "Normal" and curStep < 320 then 
		     if tag == 'noteHitTweenY1' then
				noteTweenY('noteHitTweenY11', 4, 570, crochet / 5000, 'linear') 
		     elseif tag == 'noteHitTweenY2' then
				noteTweenY('noteHitTweenY21', 5, 570, crochet / 5000, 'linear') 
		     elseif tag == 'noteHitTweenY3' then
				noteTweenY('noteHitTweenY31', 6, 570, crochet / 5000, 'linear') 
		     elseif tag == 'noteHitTweenY4' then
				noteTweenY('noteHitTweenY41', 7, 570, crochet / 5000, 'linear') 
end
end
		if songName == "Bonetrousle" and difficultyName == "No Mechanics" then 
		     if tag == 'noteHitTweenY1' then
				noteTweenY('noteHitTweenY11', 4, 570, crochet / 5000, 'linear') 
		     elseif tag == 'noteHitTweenY2' then
				noteTweenY('noteHitTweenY21', 5, 570, crochet / 5000, 'linear') 
		     elseif tag == 'noteHitTweenY3' then
				noteTweenY('noteHitTweenY31', 6, 570, crochet / 5000, 'linear') 
		     elseif tag == 'noteHitTweenY4' then
				noteTweenY('noteHitTweenY41', 7, 570, crochet / 5000, 'linear') 
end
end
end
end