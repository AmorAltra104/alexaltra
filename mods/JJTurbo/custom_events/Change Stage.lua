function onEvent(name,value1,value2)
	if name == 'Change Stage' then 
		if value1 == 'Voiid' then
			setProperty('BoxingBG.visible', true);
			setProperty('buildings.visible', true);
			setProperty('BoxingRound.visible', true);
			setProperty('lights.visible', true);
			setProperty('rudio.visible', true);
	        setProperty('5galaxy.visible', false);
	        setProperty('4arenaringback.visible', false);
		  setProperty('33.visible', false);
		  setProperty('2arenaring.visible', false);
		  setProperty('1arenastage.visible', false);
		end
		if value1 == 'Rev' then
			setProperty('BoxingBG.visible', false);
			setProperty('buildings.visible', false);
			setProperty('BoxingRound.visible', false);
			setProperty('lights.visible', false);
			setProperty('rudio.visible', false);
	        setProperty('5galaxy.visible', true);
	        setProperty('4arenaringback.visible', true);
		  setProperty('33.visible', true);
		  setProperty('2arenaring.visible', true);
		  setProperty('1arenastage.visible', true);
		end
		if value1 == 'bg2' then
			setProperty('TheVolcano.visible', false);
			setProperty('TheArena.visible', false);
			setProperty('TheDark.visible', true);
			setProperty('TheBG.visible', false);
			setProperty('TheBGnight.visible', false);
	        setProperty('TheTko.visible', false);
	        setProperty('ThePlatform.visible', false);
		end
		if value1 == 'bg3' then
			setProperty('TheVolcano.visible', false);
			setProperty('TheArena.visible', false);
			setProperty('TheDark.visible', false);
			setProperty('TheBG.visible', true);
			setProperty('TheBGnight.visible', false);
	        setProperty('TheTko.visible', false);
	        setProperty('ThePlatform.visible', false);
		end
		if value1 == 'bg4' then
			setProperty('TheVolcano.visible', false);
			setProperty('TheArena.visible', false);
			setProperty('TheDark.visible', false);
			setProperty('TheBG.visible', false);
			setProperty('TheBGnight.visible', true);
	        setProperty('TheTko.visible', false);
	        setProperty('ThePlatform.visible', false);
		end
		if value1 == 'bg5' then
			setProperty('TheVolcano.visible', false);
			setProperty('TheArena.visible', false);
			setProperty('TheDark.visible', false);
			setProperty('TheBG.visible', false);
			setProperty('TheBGnight.visible', false);
	        setProperty('TheTko.visible', false);
	        setProperty('ThePlatform.visible', true);
		end
		if value1 == 'bg6' then
			setProperty('TheVolcano.visible', false);
			setProperty('TheArena.visible', false);
			setProperty('TheDark.visible', false);
			setProperty('TheBG.visible', false);
			setProperty('TheBGnight.visible', false);
	        setProperty('TheTko.visible', true);
	        setProperty('ThePlatform.visible', false);
		end
		if value1 == 'charge' then
			setProperty('TheCharge.visible', true);
			setProperty('healing.visible', false);
		end
		if value1 == 'to heal' then
			setProperty('TheCharge.visible', false);
			setProperty('healing.visible', true);
		end
		if value1 == 'off' then
			setProperty('TheCharge.visible', false);
			setProperty('healing.visible', false);
		end
	end
end