function onEvent(name,value1,value2)

    if name == "Set Position Dad" then
        
        if value1 == '' then
      	  setCharacterX('dad', tonumber(value1));
          setCharacterY('dad', tonumber(value2));
	else
	
	end