function onCreatePost()

            makeLuaSprite('newscorewall', 'myth engine/newscorewall', 275, 91);
	        addLuaSprite('newscorewall', false)
            setObjectCamera('newscorewall', "hud")	
	        setObjectOrder('newscorewall', 2)
            scaleObject('newscorewall', 0.41, 0.41)

                        
            makeLuaText('Score', "1",0,370, 93);
            setTextAlignment('Score', 'left');
            setTextSize('Score', 25);
            addLuaSprite('Score', false)
            addLuaText('Score');
            setObjectOrder('Score', 3)
            setTextFont('Score', '2.ttf');
            
            
            makeLuaText('Accuracy', "2",0,585, 93);
            setTextAlignment('Accuracy', 'left');
            setTextSize('Accuracy', 25);
            addLuaSprite('Accuracy', false)
            addLuaText('Accuracy');
            setObjectOrder('Accuracy', 3)
            setTextFont('Accuracy', '2.ttf');
            
            
            makeLuaText('AccRating', "",0,887, 93);
            setTextAlignment('AccRating', 'left');
            setTextSize('AccRating', 25);
            setObjectOrder('AccRating', 3)
            addLuaSprite('AccRating', false)
            addLuaText('AccRating');
            setTextFont('AccRating', '2.ttf');
          
            
            makeLuaText('MissRating', "",0,932, 93);
            setTextAlignment('MissRating', 'left');
            setTextSize('MissRating', 15);
            setObjectOrder('MissRating', 3)
            addLuaSprite('MissRating', false)
            addLuaText('MissRating');
            setTextFont('MissRating', '2.ttf');
            
            makeLuaText('Misses', "miss",0,760, 93);
            setTextAlignment('Misses', 'left');
            setTextSize('Misses', 25);
            addLuaSprite('Misses', false)
            addLuaText('Misses');
            setTextFont('Misses', '2.ttf');
            setObjectOrder('Misses', 3)
            
            
        if  not downscroll then
        setProperty('newscorewall.y', 651);
        setProperty('newscorewall2.y', 651);
        setProperty('Score.y', 653);
        setProperty('Accuracy.y', 653);
        setProperty('AccRating.y', 653);
        setProperty('MissRating.y', 653);
        setProperty('Misses.y', 653);       
    end
        
        setProperty('scoreTxt.visible', false)
        setProperty('timeBarBG.visible', false)
        setProperty('timeBar.visible', false)
        setProperty('timeTxt.visible', false)
    end

function onUpdate()
if botPlay and getProperty('botplayTxt.visible') == true then
        setProperty('botplayTxt.visible', false)
        makeLuaSprite('newscorewall2', 'myth engine/newscorewall-botplay', 275, 91);
	addLuaSprite('newscorewall2', false)
	setObjectCamera('newscorewall2', "hud")	
	setObjectOrder('newscorewall2', 2)
    scaleObject('newscorewall2', 0.41, 0.41)
    setProperty('newscorewall.visible',false)
 
    setProperty('Score.visible',false)
    setProperty('Accuracy.visible',false)
    setProperty('AccRating.visible',false)
    setProperty('MissRating.visible',false)
    setProperty('Misses.visible',false)
     end
    setTextString('Score', getProperty('songScore'));
    setTextString('MissRating', '(' .. getProperty('ratingFC') .. ')');
    setTextString('PMMisses', getProperty('songMisses'));
    if getProperty('songMisses') == 0 then
        setTextString('Misses', '0');
    else
        if getProperty('songMisses') >0 then
            setTextString('Misses', getProperty('songMisses').. ' ')
            

            
        end
    end
    if getProperty('songScore') == 0 then
        setTextString('Accuracy', '?%');
        setTextString('MissRating', '');
        setTextString('AccRating', '?');
        
    else
        setTextString('Accuracy', '' .. round((getProperty('ratingPercent') * 100), 2) .. '%');
        --I'm so sorry for this
        
            if getProperty('ratingPercent') == 1 then
                modifyAccText('SSS');
                
            elseif getProperty('ratingPercent') >= 0.99 then
                modifyAccText('SS');
               
            elseif getProperty('ratingPercent') >= 0.95 then
                modifyAccText('S')
            elseif getProperty('ratingPercent') >= 0.9 then
                modifyAccText('A');
            elseif getProperty('ratingPercent') >= 0.8 then
                modifyAccText('B');
            elseif getProperty('ratingPercent') >= 0.7 then
                modifyAccText('C');
            else
                modifyAccText('D');
           
        end
    end
     if getProperty('ratingFC') == 'SFC' then
        setTextString('MissRating', '(MFC)')
        setProperty('MissRating.x', 930);
        else
        setProperty('MissRating.x', 925);

    end
end


function modifyAccText(text)
    setTextString('AccRating', text);
   
end


function round(x, n) --function taken from https://stackoverflow.com/questions/18313171/lua-rounding-numbers-and-then-truncate
    n = math.pow(10, n or 0)
    x = x * n
    if x >= 0 then x = math.floor(x + 0.5) else x = math.ceil(x - 0.5) end
    return x / n
end