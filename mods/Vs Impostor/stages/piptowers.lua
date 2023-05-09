local inbeans = false;

function onCreate()
    makeLuaSprite('sky','bg/chippin/back',-1100, -800);
    setLuaSpriteScrollFactor('sky', 0, 0);
    addLuaSprite('sky',false);

    makeLuaSprite('back','bg/chippin/backBuildings',-1100, -800);
    setLuaSpriteScrollFactor('back', 0.2, 0.2);
    addLuaSprite('back',false);

    makeLuaSprite('sign','bg/chippin/bg2',-1100, -800);
    setLuaSpriteScrollFactor('sign', 0.4, 0.4);
    addLuaSprite('sign',false);

    makeLuaSprite('main','bg/chippin/mainBuildings',-1100, -800);
    setLuaSpriteScrollFactor('main', 0.4, 0.4);
    addLuaSprite('main',false);

    makeLuaSprite('glow','bg/chippin/glow',-1100, -800);
    setLuaSpriteScrollFactor('glow', 0.5, 0.5);
    setLuaSpriteScrollFactor('glow', 0.5, 0.5);
    setBlendMode('glow', 'ADD');
    addLuaSprite('glow',false);

    makeLuaSprite('balcony','bg/chippin/balcony',-1100, -800);
    setLuaSpriteScrollFactor('balcony', 1, 1);
    addLuaSprite('balcony',false);
end

function onBeatHit()

end

function onStepHit()

    if curStep == 448 then
        setProperty('defaultCamZoom',0.6);
        inbeans = true;
    end

    if inbeans == false then
        if mustHitSection == false then
            triggerEvent('Camera Follow Pos',600, 450);
            setProperty('defaultCamZoom',0.75);
        else 
            triggerEvent('Camera Follow Pos',800, 450);
            setProperty('defaultCamZoom',0.75);
        end
    else
        triggerEvent('Camera Follow Pos',750, 300);
    end   

end

function onUpdate(elapsed)    
    DALAPSED = elapsed/0.016;
    if curStep > 448 and getProperty('defaultCamZoom') > 0.4 then
        setProperty('defaultCamZoom',getProperty('defaultCamZoom')-0.0005*DALAPSED);
    end
    setProperty('gf.alpha', 0);
end