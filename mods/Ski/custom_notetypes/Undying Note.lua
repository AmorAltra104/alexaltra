--Created by Kevin Kuntz
function onCreatePost()
	for i = 0, getProperty('unspawnNotes.length') - 1 do
		sus = getPropertyFromGroup('unspawnNotes', i, 'isSustainNote')
		mustPress = getPropertyFromGroup('unspawnNotes', i, 'mustPress')
	if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Undying Note' then
		setPropertyFromGroup('unspawnNotes', i, 'texture', 'Note Skins/undyneYellow')
		setPropertyFromGroup('unspawnNotes', i, 'noteSplashTexture', 'Note Skins/yellowSplash')
	if not sus then
		oFX = getPropertyFromGroup('unspawnNotes', i, 'offsetX')
	else
		susFX = getPropertyFromGroup('unspawnNotes', i, 'offsetX')
end
	if mustPress then
	if getPropertyFromGroup('unspawnNotes', i, 'noteData') == 0 then
		setPropertyFromGroup('unspawnNotes', i, 'offsetX', getPropertyFromGroup('unspawnNotes', i, 'offsetX') + 335)
		setPropertyFromGroup('unspawnNotes', i, 'flipX', true)
	elseif getPropertyFromGroup('unspawnNotes', i, 'noteData') == 1 then
		setPropertyFromGroup('unspawnNotes', i, 'offsetX', getPropertyFromGroup('unspawnNotes', i, 'offsetX') + 110)
		setPropertyFromGroup('unspawnNotes', i, 'flipY', true)
	elseif getPropertyFromGroup('unspawnNotes', i, 'noteData') == 2 then
		setPropertyFromGroup('unspawnNotes', i, 'offsetX', getPropertyFromGroup('unspawnNotes', i, 'offsetX') - 110)
		setPropertyFromGroup('unspawnNotes', i, 'flipY', true)
	elseif getPropertyFromGroup('unspawnNotes', i, 'noteData') == 3 then
		setPropertyFromGroup('unspawnNotes', i, 'offsetX', getPropertyFromGroup('unspawnNotes', i, 'offsetX') - 335)
		setPropertyFromGroup('unspawnNotes', i, 'flipX', true)
end
end
end
end
end

function onUpdatePost(el)
		songPos = getSongPosition()
		local currentBeat = (getSongPosition() / 1000)*(bpm/60)
	for a = 0, getProperty('notes.length') - 1 do
        strumTime = getPropertyFromGroup('notes', a, 'strumTime')
		sus = getPropertyFromGroup('notes', a, 'isSustainNote')
    if getPropertyFromGroup('notes', a, 'noteType') == 'Undying Note' then
	if sus then
		setPropertyFromGroup('notes', a, 'offsetX', getPropertyFromGroup('notes', a, 'offsetX') + 3 * math.cos((currentBeat + a * 0.3) * math.pi))
end
	if (strumTime - songPos) < 1000 / scrollSpeed and not sus then
	if getPropertyFromGroup('notes', a, 'offsetX') ~= oFX then
		setPropertyFromGroup('notes', a, 'offsetX', lerp(getPropertyFromGroup('notes', a, 'offsetX'), oFX, boundTo(el * 25, 0, 1)))
		setPropertyFromGroup('notes', a, 'flipX', false)		
		setPropertyFromGroup('notes', a, 'flipY', false)		
	elseif getPropertyFromGroup('notes', a, 'offsetX') <= oFX then
		setPropertyFromGroup('notes', a, 'offsetX', oFX)
end
	elseif (strumTime - songPos) < 1000 / scrollSpeed and sus then
	if getPropertyFromGroup('notes', a, 'offsetX') ~= susFX then
		setPropertyFromGroup('notes', a, 'offsetX', lerp(getPropertyFromGroup('notes', a, 'offsetX'), susFX, boundTo(el * 25, 0, 1)))
		setPropertyFromGroup('notes', a, 'flipX', false)		
		setPropertyFromGroup('notes', a, 'flipY', false)		
	elseif getPropertyFromGroup('notes', a, 'offsetX') <= susFX then
		setPropertyFromGroup('notes', a, 'offsetX', susFX)
end
end
end
end
end

function lerp(a, b, ratio)
		return math.floor(a + ratio * (b - a))
end

function boundTo(value, min, max)
		return math.max(min, math.min(max, value))
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == "Undying Note" then
	        playSound('ding', 0.25, 'yellowHit')
end
end