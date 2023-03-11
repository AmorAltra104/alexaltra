function onCreate()

	
	
	makeAnimatedLuaSprite('back', 'stage1/BG_CITY2', 300, -100);
	setLuaSpriteScrollFactor('back', 1.5, 1.5);
	scaleObject('back',2.1, 1.6);
	
    makeLuaSprite('que', 'stage1/BG_WALL', -450, -650); 
	setLuaSpriteScrollFactor('que', 1.0, 1.0);
	scaleObject('que', 1.8, 2);
	
	makeLuaSprite('so', 'stage1/FG_Floor', -290, -400); 
	setLuaSpriteScrollFactor('so', 1.0, 1.0);
	scaleObject('so', 1.7, 1.7);
	
	makeLuaSprite('bf', 'stage1/BF_GLOW', 350, 0); 
	setLuaSpriteScrollFactor('bf', 1.0, 1.0);
	scaleObject('bf', 1.1, 1.1);
	setProperty('bf.alpha',0.70);
	
	makeLuaSprite('cam', 'stage1/CAMELLIA_GLOW', -180, -120); 
	setLuaSpriteScrollFactor('cam', 1.0, 1.0);
	scaleObject('cam', 1.3, 1.3);
	setProperty('cam.alpha',0.7);
	
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
    
    addAnimationByPrefix('back','idle','BG_CITY Idle',1, true);
    

end
