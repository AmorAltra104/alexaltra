function onCreate()
makeLuaText('watermark11', "Kade Engine 1.8.1", 0, 10, 35);
    setTextSize('watermark11',15);
    setObjectCamera('watermark11', 'other');
    addLuaText('watermark11');
    setTextBorder('watermark11', 2, '000000')
    setTextFont('watermark11', 'montserrat.ttf');
    
  makeLuaText('watermark13', "FNF 0.2.8.0", 0, 10, 55);
    setTextSize('watermark13',15);
    setObjectCamera('watermark13', 'other');
    addLuaText('watermark13');
    setTextBorder('watermark13', 2, '000000')
    setTextFont('watermark13', 'montserrat.ttf');
    
    makeLuaText('watermark12', "Vs. Camellia 2.1", 0, 10, 75);
    setTextSize('watermark12',15);
    setObjectCamera('watermark12', 'other');
    addLuaText('watermark12');
    setTextBorder('watermark12', 2, '000000')
    setTextFont('watermark12', 'montserrat.ttf');
    
    

    makeLuaText('funnikade', songName .. ' ' .. difficultyName .. '',                     getProperty('healthBarBG.width'), 0 ,680)
    setTextSize('funnikade', 16)
    setProperty('funnikade.y', 700)
    setTextFont('funnikade', '1.ttf')
    setTextBorder('funnikade', 1, '000000')

end

function onCreatePost()
  addLuaText('funnikade')
    setObjectOrder('funnikade', 40)

	setObjectCamera('funnikade','other')
    setProperty('grpNoteSplashes.visible', true)
 

end






