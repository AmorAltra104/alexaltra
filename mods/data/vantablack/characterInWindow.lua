function onEvent(name, value1, value2)
	if name == 'Darkness Event' then
			isTrans = value1
		if value1 == 'true' then
			runTimer('skiWindowTimer', 2, 0)
			setProperty('boyfriend.alpha', 0)
			noteTweenX('asdfTweenX1', 4, 460, 0.0001, 'linear')		
			noteTweenX('asdfTweenX2', 5, 570, 0.0001, 'linear')		
			noteTweenX('asdfTweenX3', 6, 680, 0.0001, 'linear')		
			noteTweenX('asdfTweenX4', 7, 790, 0.0001, 'linear')
			runHaxeCode([[
            windowBf = Application.current.createWindow({
            title: 'Ski',
            width: 1000,
            height: 1000,
            borderless: true,                             
            alwaysOnTop: true     
			});
			]])	
			setTransparency(0x000f0f0f)	
			runHaxeCode([[
            windowBf.x = 1500;   
            windowBf.y = 150;
            windowBf.stage.color = 0x000f0f0f;
            FlxG.autoPause = false;
            Application.current.window.focus();
            ]])   
			runHaxeCode([[
			bfWin = new Sprite();   
			var m = new Matrix();
			bfWin.graphics.beginBitmapFill(game.boyfriend.pixels, m);
			bfWin.graphics.drawRect(0, 0, game.boyfriend.pixels.width, game.boyfriend.pixels.height);
			bfWin.graphics.endFill();
			windowBf.stage.addChild(bfWin);

			bfWin.scaleX = 1;
			bfWin.scaleY = 1;
			]])
			else
			    runHaxeCode([[
				windowBf.close();
				]])
				cancelTimer('skiWindowTimer')
				setProperty('boyfriend.alpha', 1)
				noteTweenX('note1TweenX1', 4, 750, 0.00001, 'linear')
				noteTweenX('note2TweenX1', 5, 860, 0.00001, 'linear')
				noteTweenX('note3TweenX1', 6, 970, 0.00001, 'linear')
				noteTweenX('note4TweenX1', 7, 1080, 0.00001, 'linear')
end
end
end

local yourlifeisnothingyouservezeropurposeyoushouldkillyourselfnow = -29292929

function onDestroy()
    setTransparency(yourlifeisnothingyouservezeropurposeyoushouldkillyourselfnow)
    runHaxeCode([[
         windowBf.close();
        FlxG.autoPause = true;
       ]])
end

function onGameOver()
    runHaxeCode([[
         windowBf.close();
       ]])
	setPropertyFromClass('openfl.Lib', 'application.window.borderless', false)
end


function onUpdate(elapsed)
            runHaxeCode([[  
              var bfFrame = game.boyfriend._frame;
              if (bfFrame == null || bfFrame.frame == null) return;
              var rectBf = new Rectangle(bfFrame.frame.x, bfFrame.frame.y, bfFrame.frame.width, bfFrame.frame.height);
              bfWin.scrollRect = rectBf;
              bfWin.x = ( 150 + ((bfFrame.offset.x) - (game.boyfriend.offset.x)) * bfWin.scaleX);
              bfWin.y = ( 150 + ((bfFrame.offset.y) - (game.boyfriend.offset.y)) * bfWin.scaleY);
			  windowBf.x = windowBf.x - 10
              ]])     
end

function onCreate()
        addHaxeLibrary('Lib', 'openfl')
        addHaxeLibrary('Application', 'openfl.display')
        addHaxeLibrary('Application', 'lime.app')
        addHaxeLibrary('FlxG', 'flixel')
        addHaxeLibrary('Matrix', 'openfl.geom')
        addHaxeLibrary('Rectangle', 'openfl.geom')
        addHaxeLibrary('Sprite', 'openfl.display')
    end
    
ffi = require "ffi"

ffi.cdef [[
    typedef int BOOL;
        typedef int BYTE;
        typedef int LONG;
        typedef LONG DWORD;
        typedef DWORD COLORREF;
    typedef unsigned long HANDLE;
    typedef HANDLE HWND;
    typedef int bInvert;
        
        HWND GetActiveWindow(void);
        
        LONG SetWindowLongA(HWND hWnd, int nIndex, LONG dwNewLong);
        
    HWND SetLayeredWindowAttributes(HWND hwnd, COLORREF crKey, BYTE bAlpha, DWORD dwFlags);
        
        DWORD GetLastError();
]]
function setTransparency(color)
    local win = ffi.C.GetActiveWindow()
    

    if win == nil then
    end
    if ffi.C.SetWindowLongA(win, -20, 0x00080000) == 0 then
    end
    if ffi.C.SetLayeredWindowAttributes(win, color, 0, 0x00000001) == 0 then
    end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'skiWindowTimer' then
		       runHaxeCode([[  
			  windowBf.x = 1500;
              ]])     
end
end