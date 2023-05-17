local blackout = false
function onCreate()
--finale rip off stuff
makeLuaSprite('sky', 'sky', 200, -400);
setScrollFactor('sky', 0.9, 0.9);
scaleObject('sky', 1.8, 1.8);
makeLuaSprite('woods', 'woods', -600, -400);
setScrollFactor('woods', 1.0, 1.0);
scaleObject('woods', 1.5, 1.5);
--epic flashback stuff!!!!
makeLuaSprite('CaveBack', 'CaveBack', 600, 300);
setScrollFactor('CaveBack', 1.0, 1.0);
scaleObject('CaveBack', 1.2, 1.2);
	makeAnimatedLuaSprite('HB_BG','HB_BG',810, 450)
	addAnimationByPrefix('HB_BG','dance','BG',24,true)
	objectPlayAnimation('HB_BG','dance',false)
	setScrollFactor('HB_BG', 1.0, 1.0);
	scaleObject('HB_BG', 1.2, 1.2);
--regular boring shit
makeLuaSprite('bars', 'cinamatic bars', -600, -360)
addLuaSprite('bars', true)
doTweenAlpha('barstween','bars',0, 0.1, linear)
setObjectCamera('bars', 'hud')
scaleObject('bars', 1.5, 0.3)
	makeLuaSprite('fade', 'black', -600, -350)
    addLuaSprite('fade', true)
    doTweenAlpha('fadetween','fade',0, 0.1, linear)
	setObjectCamera('fade', 'hud')
	makeLuaSprite('stupideffect', 'stupideffect', -1400, -1400);
	makeGraphic('stupideffect',5000,5000,'000000')
	doTweenAlpha('effecttween','stupideffect',0, 0.1, linear)
	makeLuaSprite('badapple', 'badapple', -1850, -1400);
	makeGraphic('badapple',7500,5000,'ffffff')
	setProperty('skipCountdown',true)
	addLuaSprite('Danger_Credit', true)
	addLuaSprite('badapple', false);
	addLuaSprite('stupideffect', false);
	setProperty('defaultCamZoom', 0.2)
	setProperty('camGame.zoom', 0.2)
end

function onCreatePost()
setObjectOrder('bars', 1)
setProperty('boyfriendGroup.color', FF0000)
setProperty('dad.color', FF0000)
setProperty('gf.visible',false)
setProperty('timeTxt.visible',false)
setProperty('timeBarBG.visible',false)
setProperty('timeBar.visible',false)
setProperty('iconP1.visible',false)
setProperty('iconP2.visible',false)
setProperty('healthBar.visible',false)
setProperty('healthBarBG.visible',false)
--force middlescroll 
if not middlescroll then 
	noteTweenAlpha("NoteAlpha1", 0, -1, 0.1, linear)
	noteTweenAlpha("NoteAlpha2", 1, -1, 0.1, linear)
	noteTweenAlpha("NoteAlpha3", 2, -1, 0.1, linear)
	noteTweenAlpha("NoteAlpha4", 3, -1, 0.1, linear)
	noteTweenX("note4", 4, defaultPlayerStrumX0 + 60 - 390, 0.1, 'quartOut')
	noteTweenX("note5", 5, defaultPlayerStrumX1 + 70 - 390, 0.1, 'quartOut')
	noteTweenX("note6", 6, defaultPlayerStrumX2 + 80 - 390, 0.1, 'quartOut')
	noteTweenX("note7", 7, defaultPlayerStrumX3 + 90 - 390, 0.1, 'quartOut')
	end

end

function onStepHit()
	if curStep == 499 or curStep == 1795 or curStep == 2050 or curStep == 2179 or curStep == 2564 or curStep == 3858 then
		blackout = true
		doTweenAlpha('flashblack', 'fade', 1, 0.1, linear)
	end
	if curStep == 512  or curStep == 1808 or curStep == 2065 or curStep == 2192 or curStep == 2576 or curStep == 3872 then
		blackout = false
		doTweenAlpha('flashback', 'fade', 0, 0.1, linear)
	end
if curStep == 512 or curStep == 2064 or curStep == 3872 then
	setProperty('dad.color', getColorFromHex('a19f9f'))
	setProperty('boyfriend.color', getColorFromHex('8f8f8f'))
	setProperty('gf.color', getColorFromHex('8f8f8f'))
end
	if curStep == 512 then
		setProperty('badapple.visible',false)
		setProperty('gf.visible',true)
		setProperty('timeTxt.visible',true)
		setProperty('timeBarBG.visible',true)
		setProperty('timeBar.visible',true)
		setProperty('iconP1.visible',true)
		setProperty('iconP2.visible',true)
		setProperty('healthBar.visible',true)
		setProperty('healthBarBG.visible',true)
		--back to reg scroll
		if not middlescroll then 
			noteTweenAlpha("NoteAlpha1", 0, 1, 0.3, linear)
			noteTweenAlpha("NoteAlpha2", 1, 1, 0.3, linear)
			noteTweenAlpha("NoteAlpha3", 2, 1, 0.3, linear)
			noteTweenAlpha("NoteAlpha4", 3, 1, 0.3, linear)
		noteTweenX("note4", 4, defaultPlayerStrumX0 - 0, 1, 'quartOut')
		noteTweenX("note5", 5, defaultPlayerStrumX1 - 0, 1, 'quartOut')
		noteTweenX("note6", 6, defaultPlayerStrumX2 - 0, 1, 'quartOut')
		noteTweenX("note7", 7, defaultPlayerStrumX3 - 0, 1, 'quartOut')

		noteTweenX("note0", 0, defaultOpponentStrumX0 + 0, 1, 'quartOut')
		noteTweenX("note1", 1, defaultOpponentStrumX1 + 0, 1, 'quartOut')
		noteTweenX("note2", 2, defaultOpponentStrumX2 + 0, 1, 'quartOut')
		noteTweenX("note3", 3, defaultOpponentStrumX3 + 0, 1, 'quartOut')
	end
	end
	if curStep == 1024 then
		doTweenZoom('camera', 'camGame', tonumber(1), tonumber(1), 'linear');
end
if curStep == 1552 then
	addLuaSprite('CaveBack', false);
	addLuaSprite('HB_BG', false);
	setProperty('HeroSky.visible',false)
	setProperty('HeroMoon.visible',false)
	setProperty('HerobrineSurface.visible',false)
	doTweenAlpha('barstween','bars',1, 0.3, linear)
	setProperty('gf.visible',false)
	setProperty('dad.y', getProperty('dad.y') + 320)
	setProperty('dad.x', getProperty('dad.x') + 400)
	setProperty('boyfriend.y', getProperty('boyfriend.y') - 130)
	setProperty('boyfriend.x', getProperty('boyfriend.x') - 100)
end
if curStep == 1807 then
	setProperty('dad.x', getProperty('dad.x') + 200)
	setProperty('dad.y', getProperty('dad.y') + 900)
	setProperty('boyfriend.y', getProperty('boyfriend.y') + 440)
	setProperty('boyfriend.x', getProperty('boyfriend.x') + 100)
	doTweenAlpha('effecttween','stupideffect',0.9, 0.1, linear)
end
if curStep == 1808 then
	removeLuaSprite('CaveBack', false);
	removeLuaSprite('HB_BG', false);
	setProperty('HeroSky.visible',true)
	setProperty('HerobrineSurface.visible',true)
	--stupid fuckin effect to make the characters look big
	setProperty('iconP1.visible',false)
	setProperty('iconP2.visible',false)
	setProperty('healthBar.visible',false)
	setProperty('healthBarBG.visible',false)
	doTweenAlpha('effecttween','stupideffect',0.3, 15, linear)
	scaleObject('HerobrineSurface', 0.7, 0.7);
	scaleObject('HeroSky', 0.7, 0.7);
	setProperty('HerobrineSurface.y', 800)
	setProperty('HerobrineSurface.x', 1250)
	setProperty('HeroSky.y', 800)
	setProperty('HeroSky.x', 750)
	doTweenY('bfrise', 'boyfriend', getProperty('boyfriend.y') - 400, 8, 'quadInOut');
	doTweenY('herorise', 'dad', getProperty('dad.y') - 900, 16, 'quadInOut');
end
--revert stupid fucking effects and positions
if curStep == 2064 then
	setProperty('iconP1.visible',true)
	setProperty('iconP2.visible',true)
	setProperty('healthBar.visible',true)
	setProperty('healthBarBG.visible',true)
	doTweenAlpha('effecttween','stupideffect',0, 0.1, linear)
	doTweenAlpha('barstween','bars',0, 0.3, linear)
	setProperty('HeroMoon.visible',true)
	scaleObject('HerobrineSurface', 2.0, 2.0);
	scaleObject('HeroSky', 2.0, 2.0);
	setProperty('HerobrineSurface.y', 0)
	setProperty('HerobrineSurface.x', 0)
	setProperty('HeroSky.y', -200)
	setProperty('HeroSky.x', -300)
	setProperty('boyfriend.x', 1950)
	setProperty('boyfriend.y', 1000)
	setProperty('dad.x', 700)
	setProperty('dad.y', 400)
	setProperty('gf.visible',true)
end
if curStep == 2287 then
	doTweenAlpha('effecttween','stupideffect',0.7, 2, linear)
end
if curStep == 2320 then
	doTweenAlpha('effecttween','stupideffect',0, 0.3, linear)
	setProperty('boyfriend.y', 1000)
	setProperty('boyfriend.x', 1950)
end
if curStep == 2576 then
	doTweenZoom('camera', 'camGame', tonumber(1), tonumber(2), 'linear');
end
if curStep == 3088 then
	doTweenZoom('camera', 'camGame', tonumber(1), tonumber(1), 'linear');
end
if curStep == 3103 then
	function opponentNoteHit()
		cameraShake('camGame', 0.005, 0.1)
		health = getProperty('health')
		if getProperty('health') > 0.3 then
			setProperty('health', health- 0.02);
		end
	end
end
if curStep == 3104 then
	doTweenAlpha('barstween','bars',1, 0.3, linear)
	doTweenY('downfloat', 'dad', getProperty('dad.y') - 0, 0.1, 'quadInOut');
end
if curStep == 3612 then
	doTweenAlpha('effecttween','stupideffect',0.7, 0.30, linear)
	doTweenAlpha('badappletween','badapple',0.8, 0.30, linear)
	doTweenAlpha('barstween','bars',0, 0.3, linear)

	--force middlescroll 
if not middlescroll then 
	noteTweenAlpha("NoteAlpha1", 0, -1, 0.1, linear)
	noteTweenAlpha("NoteAlpha2", 1, -1, 0.1, linear)
	noteTweenAlpha("NoteAlpha3", 2, -1, 0.1, linear)
	noteTweenAlpha("NoteAlpha4", 3, -1, 0.1, linear)
	noteTweenX("note4", 4, defaultPlayerStrumX0 + 60 - 390, 1, 'quartOut')
	noteTweenX("note5", 5, defaultPlayerStrumX1 + 70 - 390, 1, 'quartOut')
	noteTweenX("note6", 6, defaultPlayerStrumX2 + 80 - 390, 1, 'quartOut')
	noteTweenX("note7", 7, defaultPlayerStrumX3 + 90 - 390, 1, 'quartOut')
	end
end
if curStep == 3616 then
	addLuaSprite('sky', false);
	addLuaSprite('woods', false);
	doTweenAlpha('effecttween','stupideffect',0, 0.30, linear)
	setProperty('badapple.visible',false)
	doTweenAlpha('badappletween','badapple',0.3, 15, linear)
end
if curStep == 3746 or curStep == 3810 then
doTweenAlpha('fadetween','fade',0, 0.3, linear)
end 

if curStep == 3858 then
	doTweenZoom('camera', 'camGame', tonumber(1), tonumber(0.8), 'linear');
end
if curStep == 3872 then
	removeLuaSprite('sky', false);
	removeLuaSprite('woods', true);
	setProperty('badapple.visible',false)
	setProperty('dad.x', 700)
	setProperty('dad.y', 400)
	if not middlescroll then 
		noteTweenAlpha("NoteAlpha1", 0, 1, 0.3, linear)
		noteTweenAlpha("NoteAlpha2", 1, 1, 0.3, linear)
		noteTweenAlpha("NoteAlpha3", 2, 1, 0.3, linear)
		noteTweenAlpha("NoteAlpha4", 3, 1, 0.3, linear)
	noteTweenX("note4", 4, defaultPlayerStrumX0 - 0, 1, 'quartOut')
	noteTweenX("note5", 5, defaultPlayerStrumX1 - 0, 1, 'quartOut')
	noteTweenX("note6", 6, defaultPlayerStrumX2 - 0, 1, 'quartOut')
	noteTweenX("note7", 7, defaultPlayerStrumX3 - 0, 1, 'quartOut')

	noteTweenX("note0", 0, defaultOpponentStrumX0 + 0, 1, 'quartOut')
	noteTweenX("note1", 1, defaultOpponentStrumX1 + 0, 1, 'quartOut')
	noteTweenX("note2", 2, defaultOpponentStrumX2 + 0, 1, 'quartOut')
	noteTweenX("note3", 3, defaultOpponentStrumX3 + 0, 1, 'quartOut')
end
end
if curStep == 3920 then
	doTweenAlpha('camGameOff' ,'camGame', 0, 0.5, 'linear')
end
if curStep == 4032 then
	setProperty('vocals.volume',0)
end
end
function onTweenCompleted(tag)
		if tag == 'downfloat' then
			doTweenY('upfloat', 'dad', getProperty('dad.y') + 300, 1, 'quadInOut');
		end
		if tag == 'upfloat' then
			doTweenY('downfloat', 'dad', getProperty('dad.y') - 300, 1, 'quadInOut');
		end
	if blackout == true then 
	if tag == 'flashback' then
		doTweenAlpha('flashblack', 'fade', 1, 0.1, linear)
	end
	if tag == 'flashblack' then
		doTweenAlpha('flashback', 'fade', 0, 0.1, linear)
	end
end
end

