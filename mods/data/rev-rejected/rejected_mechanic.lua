--UHHH, I USED SOME OF THE TGT crosshair note lua script BY heat_ ON GAMEBANANA THANKIUU //https://gamebanana.com/tools/8780
--oñaa soy gato chistosoooo oñaaa x3
function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'rejected_mechanic' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'sword'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashDisabled', true); --no note splashes
			setPropertyFromGroup('unspawnNotes', i, 'scale.x', 0.95)
			setPropertyFromGroup('unspawnNotes', i, 'scale.y', 0.95)
			setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true);
			setPropertyFromGroup('unspawnNotes', i, 'mustPress', false); 
		end
	end
	getProperty('health')
end


function onUpdatePost(elapsed)
	for i = 0, getProperty('notes.length')-1 do
		if getPropertyFromGroup('notes', i, 'noteType') == 'rejected_mechanic' then

		setPropertyFromGroup('notes', i, 'x', getProperty('sword.x') + 30);


		if not getPropertyFromGroup('notes', i, 'isSustainNote') and ((getPropertyFromGroup('notes', i, 'strumTime') < getSongPosition()) or (getPropertyFromGroup('notes', i, 'strumTime')  < getSongPosition()+getPropertyFromClass('Conductor', 'safeZoneOffset'))) then
			if keyJustPressed('space') and not getProperty('boyfriend.stunned')then 
				sHit(i);
			end
		end

		if not getPropertyFromGroup('notes', i, 'isSustainNote') and getPropertyFromGroup('notes', i, 'strumTime')  < getSongPosition() and botPlay then
			sHit(i);
		end
		
		if getSongPosition() > getPropertyFromGroup('notes', i, 'strumTime') + (300 / getProperty('songSpeed')) and not keyJustPressed('space') then -- miss
			sMiss(i);
		end

	end
end
end

function sHit(id)
	setPropertyFromGroup('notes', id, 'visible', false); 
	setPropertyFromGroup('notes', id, 'active', false); 
	removeFromGroup('notes', id, false);
	addHits(1)
	setProperty('combo', getProperty('combo') + 1)
	objectPlayAnimation('sword', 'blee', true);
	characterPlayAnim('boyfriend', 'dodge', true);
	setProperty('boyfriend.specialAnim', true);
end

function sMiss(id)
	setPropertyFromGroup('notes', id, 'visible', false); 
	setPropertyFromGroup('notes', id, 'active', false); 
	removeFromGroup('notes', id, false);
	triggerEvent('Play Animation', 'hurt', 'bf');
	setProperty('health',getProperty('health')-5);
	addMisses(1)
	playSound('missnote'..math.random(1,3), 0.5);
end


function onUpdate()

	if keyJustPressed('space') then
		objectPlayAnimation('sword', 'bloo', false);
	end
    
    if keyReleased('space') then
		objectPlayAnimation('sword', 'sword', true);
	end
end