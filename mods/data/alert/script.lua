local fnaf = true;
function onCreate()
	makeLuaSprite('fade', 'black', -600, -350)
	setObjectCamera('fade', 'hud')
    addLuaSprite('fade', true)
	setProperty('skipCountdown',true)
end
function TweenStrums(dadtable, playertable)
	if not middlescroll then 
	if dadtable[1] == true then
		noteTweenX("note0", 0, defaultOpponentStrumX0 + dadtable[2], dadtable[3], 'quartOut')
		noteTweenX("note1", 1, defaultOpponentStrumX1 + dadtable[2], dadtable[3], 'quartOut')
		noteTweenX("note2", 2, defaultOpponentStrumX2 + dadtable[2], dadtable[3], 'quartOut')
		noteTweenX("note3", 3, defaultOpponentStrumX3 + dadtable[2], dadtable[3], 'quartOut')
	end
	if playertable[1] == true then
		noteTweenX("note4", 4, defaultPlayerStrumX0 + playertable[2], playertable[3], 'quartOut')
		noteTweenX("note5", 5, defaultPlayerStrumX1 + playertable[2], playertable[3], 'quartOut')
		noteTweenX("note6", 6, defaultPlayerStrumX2 + playertable[2], playertable[3], 'quartOut')
		noteTweenX("note7", 7, defaultPlayerStrumX3 + playertable[2], playertable[3], 'quartOut')
	end
end
end
function TweenStrumsAlpha(dadtable, playertable)
	if not middlescroll then 
	if dadtable[1] == true then
		for i = 0, 3 do
			noteTweenAlpha("NoteAlpha" .. tostring(i + 1), i, dadtable[2], dadtable[3], linear)
		end	
	end
	if playertable[1] == true then
		for i = 4, 7 do
			noteTweenAlpha("NoteAlpha" .. tostring(i + 1), i, playertable[2], playertable[3], linear)
		end
	end
end
end
function onStepHit()
	if curStep == 1 then
		TweenStrums({true, 310, 1}, {true, 50 - 380, 1})
		TweenStrumsAlpha({true, -1, 0.3}, {true, -1, 0.3})
		doTweenAlpha('fadetween2', 'fade', 0.5, 15.3, linear)
	end
	if curStep == 6 then
		doTweenZoom('camera', 'camGame', tonumber(1), tonumber(15.3), 'linear');
	end
	if curStep == 50 then
		TweenStrumsAlpha({false}, {true, 1, 0.7})
	end
	if curStep == 256 then
		health = getProperty('health')
		if getProperty('health') > 0.5 then
			setProperty('health', health- 1);
		end
		TweenStrumsAlpha({true, 1, 0.3}, {false})
		TweenStrums({true, 0, 1}, {true, -0, 1})
		doTweenAlpha('fadetween2', 'fade', 0, 0.1, linear)
		fnaf = false
	end
	if curStep == 400 then
		TweenStrums({true, 630, 1}, {true, 50 - 680, 1})
	end
	if curStep == 432 then
		TweenStrums({true, 0, 1}, {true, -0, 1})
	end
	if curStep == 464 then
		TweenStrums({true, 630, 1}, {true, 50 - 680, 1})
	end
	if curStep == 496 then
		TweenStrums({true, 310, 1}, {true, 50 - 380, 1})
	end
	if curStep == 512 then
		doTweenAlpha('fadetween2', 'fade', 0.5, 2, linear)
		doTweenZoom('camera', 'camGame', tonumber(1), tonumber(2.1), 'linear');
	end
	if curStep == 544 then
		TweenStrums({true, 0, 1}, {true, -0, 1})
		doTweenAlpha('fadetween2', 'fade', 0, 0.1, linear)
	end
	if curStep == 815 or curStep == 880 or curStep == 944 or curStep == 992 then
		doTweenX('uitween', 'camHUD', 100, 0.2, 'quartOut')
	end
	if curStep == 832 or curStep == 864 or curStep == 896 or curStep == 928 or curStep == 976 or curStep == 1008 or curStep == 1040 then
		doTweenX('uitween', 'camHUD', 0, 0.2, 'quartOut')
	end
	if curStep == 848 or curStep == 912 or curStep == 960 or curStep == 1024 then
		doTweenX('uitween', 'camHUD', -100, 0.2, 'quartOut')
	end
	if curStep == 2207 then
		doTweenAlpha('fadetween2', 'fade', 1, 0.1, linear)
	end
	if curStep == 2208 then
		fnaf = true
		TweenStrums({true, 310, 1}, {true, 50 - 380, 1})
		TweenStrumsAlpha({true, -1, 0.3}, {true, -1, 0.3})
		doTweenAlpha('fadetween2', 'fade', 0.5, 15.3, linear)
		doTweenZoom('camera', 'camGame', tonumber(1), tonumber(7.1), 'linear');
	end
	if curStep == 2264 then
		TweenStrumsAlpha({false}, {true, 1, 0.7})
	end
	if curStep == 2319 then
		doTweenAlpha('fadetween2', 'fade', 0, 0.3, linear)
	end
	if curStep == 2336 then
		health = getProperty('health')
		if getProperty('health') > 0.5 then
			setProperty('health', health- 1);
		end
		TweenStrumsAlpha({true, 1, 0.3}, {false})
		TweenStrums({true, 0, 1}, {true, -0, 1})
		fnaf = false
	end
	if curStep == 2353 or curStep == 2400 or curStep == 2448 or curStep == 2496 or curStep == 2544 or curStep == 2592 then
		TweenStrums({true, 310, 1}, {true, 50 - 380, 1})
	end
	if curStep == 2368 or curStep == 2416 or curStep == 2464 or curStep == 2512 or curStep == 2560 then
		TweenStrums({true, 630, 1}, {true, 50 - 680, 1})
	end
	if curStep == 2384 or curStep == 2432 or curStep == 2480 or curStep == 2528 or curStep == 2576 or curStep == 2600 then
		TweenStrums({true, 0, 1}, {true, -0, 1})
	end
end
function onUpdate()
	if fnaf == true then
		setProperty('timeBar.visible',false)
		setProperty('timeTxt.visible',false)
		setProperty('iconP1.visible',false)
		setProperty('iconP2.visible',false)
		setProperty('healthBarBG.visible',false)
		setProperty('healthBar.visible',false)
		setProperty('timeBarBG.visible',false)
	else
		setProperty('timeBar.visible',true)
		setProperty('timeBarBG.visible',true)
		setProperty('timeTxt.visible',true)
		setProperty('healthBarBG.visible',true)
		setProperty('healthBar.visible',true)
		setProperty('iconP1.visible',true)
		setProperty('iconP2.visible',true)
	end
end