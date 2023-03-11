EsquivadoP = false
PuedeEsquivarP = false
PuedeAtacarP = false
AtacadoP = 0
DiedP = false
AhiP = false
CargaP = 0
Jejeje = false

function onCreate()

  makeAnimatedLuaSprite('BoyFriendDodge', 'zassets/Ani/BoyFriendDodge', 1010, 600);
  luaSpriteAddAnimationByPrefix('BoyFriendDodge', 'dodge', 'Dodge instance ', 24, true);
  luaSpritePlayAnimation('BoyFriendDodge', 'dodge');
  addLuaSprite('BoyFriendDodge', false); 
  setProperty('BoyFriendDodge.visible', false);

  makeAnimatedLuaSprite('BoyFriendAtt', 'zassets/Ani/BoyFriendAtt', 1010, 470);
  luaSpriteAddAnimationByPrefix('BoyFriendAtt', 'AttackAltzzz', 'Attack instanceAlt', 24, true);
  luaSpriteAddAnimationByPrefix('BoyFriendAtt', 'AttackAlt', 'Attack instanceAlt', 24, false);
  luaSpriteAddAnimationByPrefix('BoyFriendAtt', 'Attack', 'Attack instance', 24, false);
  luaSpritePlayAnimation('BoyFriendAtt', 'AttackAltzzz');
  addLuaSprite('BoyFriendAtt', false); 
  setProperty('BoyFriendAtt.visible', false);

end

function onEvent(name, value1, value2)
if name == "Asbel" then
if value1 == "walkp" then
  makeAnimatedLuaSprite('Piper', 'zassets/Ani/Piper', 2300, 550);
  luaSpriteAddAnimationByPrefix('Piper', 'Ataque1', 'PipAttack instance ', 24, false);
  luaSpriteAddAnimationByPrefix('Piper', 'Ataque2', 'PeepAttack instance ', 24, false);
  luaSpriteAddAnimationByPrefix('Piper', 'Walk', 'pip walk instance ', 24, true);
  luaSpriteAddAnimationByPrefix('Piper', 'Golpeado', 'Piper gets Hit instance ', 24, false);
  luaSpriteAddAnimationByPrefix('Piper', 'Die', 'Piper ded instance ', 24, true);
  luaSpriteAddAnimationByPrefix('Piper', 'Idle', 'Piperr instance ', 24, true);
  luaSpritePlayAnimation('Piper', 'Idle');
  addLuaSprite('Piper', false); 
  scaleObject('Piper', 1.7, 1.7);
doTweenX('PiperW', 'Piper', 1400, 3, 'linear');   
luaSpritePlayAnimation('Piper', 'Walk');
end 
if value1 == "atap" then
setProperty('Piper.x', 1300)
setProperty('Piper.y', 490) 
luaSpritePlayAnimation('Piper', 'Ataque1'); 
runTimer('Ohno', 1, 1);
end 
if value1 == "4" then 
PuedeAtacarP = true
     end 
	end
end

function onUpdate()
if PuedeEsquivarP == true and keyJustPressed('space') then
   setProperty('BoyFriendDodge.visible', true);
   setProperty('boyfriend.visible', false);
   luaSpritePlayAnimation('BoyFriendDodge', 'dodge');
   runTimer('dos', 1, 1); 
   EsquivadoP = true;
   PuedeEsquivarP = false;
end    
if PuedeEsquivarP == true and Jejeje == true and AtacadoP == 0  then   
   setProperty('BoyFriendAtt.visible', true);
   setProperty('boyfriend.visible', false);
   luaSpritePlayAnimation('BoyFriendAtt', 'AttackAlt');
   cancelTimer('DIE');
   setProperty('Piper.x', 1300)
   setProperty('Piper.y', 410) 
   luaSpritePlayAnimation('Piper', 'Golpeado'); 
   runTimer('deos', 1, 1); 
   runTimer('dexo', 5, 1); 
   EsquivadoP = true;
   AtacadoP = AtacadoP + 1;
   PuedeEsquivarP = false; 
end    
if PuedeEsquivarP == true and Jejeje == true and AtacadoP == 1  then   
   setProperty('BoyFriendAtt.visible', true);
   setProperty('boyfriend.visible', false);
   luaSpritePlayAnimation('BoyFriendAtt', 'AttackAlt');
   cancelTimer('DIE');
   setProperty('Piper.x', 1300)
   setProperty('Piper.y', 410) 
   luaSpritePlayAnimation('Piper', 'Die'); 
   runTimer('ojito', 2, 1); 
   runTimer('dexo', 5, 1); 
   EsquivadoP = true;
   AtacadoP = 0;
   PuedeEsquivarP = false; 
   end   
end

function onUpdatePost()
if PuedeAtacarP == true and Jejeje == true and CargaP == 4 and AtacadoP == 0 and AhiP == true then   
   setProperty('BoyFriendAtt.visible', true);
   setProperty('boyfriend.visible', false);
   luaSpritePlayAnimation('BoyFriendAtt', 'AttackAlt');
   cancelTimer('DIE');
   setProperty('Piper.x', 1300)
   setProperty('Piper.y', 410) 
   luaSpritePlayAnimation('Piper', 'Golpeado'); 
   runTimer('deos', 1, 1); 
   EsquivadoP = true;
   AtacadoP = AtacadoP + 1;
   PuedeEsquivarP = false; 
   CargaP = 0
end    
if PuedeEsquivarP == false and Jejeje == true and CargaP == 4 and AtacadoP == 1 and AhiP then   
   setProperty('BoyFriendAtt.visible', true);
   setProperty('boyfriend.visible', false);
   luaSpritePlayAnimation('BoyFriendAtt', 'AttackAlt');
   cancelTimer('DIE');
   setProperty('Piper.x', 1300)
   setProperty('Piper.y', 410) 
   luaSpritePlayAnimation('Piper', 'Die'); 
   runTimer('ojito', 2, 1); 
   EsquivadoP = true;
   AtacadoP = 0;
   PuedeEsquivarP = false; 
   CargaP = 0
end
if getMouseX('hud') > getProperty('key_shift.x') and getMouseY('hud') > getProperty('key_shift.y') and getMouseX('hud') < getProperty('key_shift.x') + getProperty('key_shift.width') and getMouseY('hud') < getProperty('key_shift.y') + getProperty('key_shift.height') and mouseReleased() then
    Jejeje = true
    else
      Jejeje = false
    end
end


function onTimerCompleted(tag, loops, loopsLeft)
if tag == 'DIE' and EsquivadoP == false then
setProperty('health', 0.5);
elseif tag == 'DIE' and EsquivadoP == true then
setProperty('Piper.x', 1380)
setProperty('Piper.y', 550)    
luaSpritePlayAnimation('Piper', 'Idle'); 
EsquivadoP = false;
end 
if tag == 'dos' then
setProperty('BoyFriendDodge.visible', false);
setProperty('boyfriend.visible', true);
end
if tag == 'deos' then
setProperty('BoyFriendAtt.visible', false);
setProperty('boyfriend.visible', true);
setProperty('Piper.x', 1380)
setProperty('Piper.y', 550)    
luaSpritePlayAnimation('Piper', 'Idle'); 
end
if tag == 'ojito' then
setProperty('BoyFriendAtt.visible', false);
setProperty('boyfriend.visible', true);
removeLuaSprite('Piper')
AhiP = false
end
if tag == 'Ohno' then 
PuedeEsquivarP = true
runTimer('DIE', 0.5, 1);   
setProperty('Piper.x', 1150)
setProperty('Piper.y', 320)  
luaSpritePlayAnimation('Piper', 'Ataque2');
end
if tag == 'dexo' then
   PuedeAtacarP = true
   CargaP = CargaP + 4;
   end
end  

function onTweenCompleted(tag)
  if tag == 'PiperW' then
   luaSpritePlayAnimation('Piper', 'Idle');
   AhiP = true
  end
end

function goodNoteHit(isSustainNote)
  health = getProperty('health')
  setProperty('health', health- 0.004);
end