function onCreate()
	-- background shit
	makeLuaSprite('stageback', 'WBG/BGBG', -1300, -900);
	scaleObject('stageback', 1.1, 1.1);
	
	makeLuaSprite('LavaLimits', 'WBG/LavaLimits', -900, 500);
	scaleObject('LavaLimits', 0.9, 0.9);
	
	makeLuaSprite('Spikes', 'WBG/Spikes', -1200,0);
	scaleObject('Spikes', 1.1, 1.1);
	
    makeLuaSprite('BGSpikes', 'WBG/BGSpikes',-100, 200);
	scaleObject('BGSpikes', 1.5, 1.5);
	
	makeLuaSprite('Ground', 'WBG/Ground', -1200, 900);
	scaleObject('Ground', 1.1, 1.1);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then

	end

	addLuaSprite('stageback', false);
	addLuaSprite('LavaLimits', false);
	addLuaSprite('BGSpikes', false);
	addLuaSprite('Spikes', false);
	addLuaSprite('Ground', false);
	

end

