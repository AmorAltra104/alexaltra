function onEvent(name,value1,value2)
if name == "Set Cam Zoom" then
    if value1 == "0.5" then
    doTweenY('frontcrowd_hf9', 'publi', 600, 0.6, 'circOut')
end     
    if value1 == "0.5" and value2 == "2" then
    doTweenY('frontcrowd_hf9', 'publi', 600, 2, 'circOut')
end     
    if value1 == "0.42" then
    doTweenY('frontcrowd_hf2', 'publi', 20, 0.6, 'circOut')
    doTweenZoom('cameraZoomy', 'camHUD', 0.8, 1, 'circOut')
    end
    if value1 == "0.33" then
    doTweenY('frontcrowd_hf22', 'publi', 60, 0.6, 'circOut')
     end
    if value1 == "0.33" and value2 == "1" then
    doTweenY('frontcrowd_hf22', 'publi', 60, 1, 'circOut')
     end
    if value1 == "0.33" and value2 == "6" then
    doTweenY('frontcrowd_hf22', 'publi', 60, 6, 'circOut')
     end
   end
end 
