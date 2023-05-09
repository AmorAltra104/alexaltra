function onCreate()
		makeLuaSprite('image1', 'His Folder/1', -250, 390)
		setProperty('image1.antialiasing', false)
		scaleObject('image1', 4, 4)
		setProperty('image1.alpha', 0) 
		addLuaSprite('image1', true)
		
		makeLuaSprite('image2', 'His Folder/2', -250, 390)
		setProperty('image2.antialiasing', false)
		scaleObject('image2', 4, 4)
		setProperty('image2.alpha', 0) 
		addLuaSprite('image2', true)
		
		makeLuaSprite('image3', 'His Folder/3', -250, 390)
		setProperty('image3.antialiasing', false)
		scaleObject('image3', 4, 4)
		setProperty('image3.alpha', 0) 
		addLuaSprite('image3', true)
		
		makeLuaSprite('image4', 'His Folder/4', -250, 390)
		setProperty('image4.antialiasing', false)
		scaleObject('image4', 4, 4)
		setProperty('image4.alpha', 0) 
		addLuaSprite('image4', true)
		
		makeLuaSprite('image5', 'His Folder/5', -250, 390)
		setProperty('image5.antialiasing', false)
		scaleObject('image5', 4, 4)
		setProperty('image5.alpha', 0) 
		addLuaSprite('image5', true)
		
		makeLuaSprite('image6', 'His Folder/6', -250, 390)
		setProperty('image6.antialiasing', false)
		scaleObject('image6', 4, 4)
		setProperty('image6.alpha', 0) 
		addLuaSprite('image6', true)
		
		makeLuaSprite('image7', 'His Folder/7', -250, 390)
		setProperty('image7.antialiasing', false)
		scaleObject('image7', 4, 4)
		setProperty('image7.alpha', 0) 
		addLuaSprite('image7', true)
		
		makeLuaSprite('image8', 'His Folder/8', -250, 390)
		setProperty('image8.antialiasing', false)
		scaleObject('image8', 4, 4)
		setProperty('image8.alpha', 0) 
		addLuaSprite('image8', true)
end

function onStepHit()
	if curStep == 128 then
		doTweenAlpha('image1TweenAlpha', 'image1', 0.7, 3, 'linear')
		doTweenX('image1TweenX', 'image1', -1250, 15, 'linear')
	elseif curStep == 192 then
		doTweenAlpha('image1TweenAlpha', 'image1', 0, 3, 'linear')
		doTweenAlpha('image2TweenAlpha', 'image2', 0.7, 3, 'linear')
		doTweenX('image2TweenX', 'image2', -1250, 15, 'linear')
	elseif curStep == 256 then
		doTweenAlpha('image2TweenAlpha', 'image2', 0, 3, 'linear')
		doTweenAlpha('image3TweenAlpha', 'image3', 0.7, 3, 'linear')
		doTweenX('image3TweenX', 'image3', -1250, 15, 'linear')
	elseif curStep == 319 then
		doTweenAlpha('image3TweenAlpha', 'image3', 0, 3, 'linear')
		doTweenAlpha('image4TweenAlpha', 'image4', 0.7, 3, 'linear')
		doTweenX('image4TweenX', 'image4', -1250, 15, 'linear')
	elseif curStep == 383 then
		doTweenAlpha('image4TweenAlpha', 'image4', 0, 3, 'linear')
		doTweenAlpha('image5TweenAlpha', 'image5', 0.7, 3, 'linear')
		doTweenX('image5TweenX', 'image5', -1250, 15, 'linear')
	elseif curStep == 447 then
		doTweenAlpha('image5TweenAlpha', 'image5', 0, 3, 'linear')
		doTweenAlpha('image6TweenAlpha', 'image6', 0.7, 3, 'linear')
		doTweenX('image6TweenX', 'image6', -1250, 15, 'linear')
	elseif curStep == 512 then
		doTweenAlpha('image6TweenAlpha', 'image6', 0, 3, 'linear')
		doTweenAlpha('image7TweenAlpha', 'image7', 0.7, 3, 'linear')
		doTweenX('image7TweenX', 'image7', -1250, 15, 'linear')
	elseif curStep == 576 then
		doTweenAlpha('image7TweenAlpha', 'image7', 0, 3, 'linear')
		doTweenAlpha('image8TweenAlpha', 'image8', 0.7, 3, 'linear')
		doTweenX('image8TweenX', 'image8', -1250, 15, 'linear')
end
end
		
		
			  
	         

		          