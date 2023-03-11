function onCreate()

	makeLuaSprite('back', 'stage1/BG_CITY', -160, -315); 
	setLuaSpriteScrollFactor('back', 1.2, 1.2);
	scaleObject('back', 1.7, 1.7);
	
    makeLuaSprite('que', 'stage1/BG_WALL', -300, -380); 
	setLuaSpriteScrollFactor('que', 1.0, 1.0);
	scaleObject('que', 1.7, 1.7);
	
	makeLuaSprite('so', 'stage1/FG_Floor', -290, -400); 
	setLuaSpriteScrollFactor('so', 1.0, 1.0);
	scaleObject('so', 1.7, 1.7);
	
	makeLuaSprite('bf', 'stage1/BF_GLOW', 400, 50); 
	setLuaSpriteScrollFactor('bf', 1.0, 1.0);
	scaleObject('bf', 1.1, 1.1);
	
	makeLuaSprite('cam', 'stage1/CAMELLIA_GLOW', -120, -100); 
	setLuaSpriteScrollFactor('cam', 1.0, 1.0);
	scaleObject('cam', 1.3, 1.3);
	
	makeLuaSprite('queso', 'stage1/negro', -120, -100); 
	setLuaSpriteScrollFactor('queso', 1.0, 1.0);
	scaleObject('queso', 1.3, 1.3);
	setObjectCamera('queso', 'hud');
	
makeLuaText('watermark', "PORTED BY", 0, 1095, 640); -- You can edit the created by Prisma Text just dont change anything else
    setTextSize('watermark',30);
    setObjectCamera('watermark', 'other');
    addLuaText('watermark');
    setTextFont('watermark', 'font.ttf');
    
    	makeLuaText('watermark1', "b站一北狐    逐梦", 0, 1070, 680); -- You can edit the created by Prisma Text just dont change anything else
    setTextSize('watermark1',26);
    setObjectCamera('watermark1', 'other');
    addLuaText('watermark1');
    setTextFont('watermark1', 'font.ttf');
    
    makeLuaText('watermark2', "丶", 0, 1190, 680); -- You can edit the created by Prisma Text just dont change anything else
    setTextSize('watermark2',26);
    setObjectCamera('watermark2', 'other');
    addLuaText('watermark2');
    setTextFont('watermark2', '2.ttf');
    
    makeLuaText('watermark3', "作者Q群721322657", 0, 0, 670); -- You can edit the created by Prisma Text just dont change anything else
    setTextSize('watermark3',20);
    setObjectCamera('watermark3', 'other');
    addLuaText('watermark3');
    setTextFont('watermark3', '2.ttf');
	
    addLuaSprite('back', false);
    addLuaSprite('que', false);
    addLuaSprite('so', false);
    addLuaSprite('bf', true);
    addLuaSprite('cam', true);
    addLuaSprite('queso', true);
    
    setProperty('queso.visible', false);
    setProperty('cam.visible', false);
    
    
    

end


