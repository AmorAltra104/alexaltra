-- edited by twizinho

function onEvent(name, value1, value2)
    if name == 'Cam ON' then
        doTweenAlpha('camHUDOn' ,'camHUD', value1, value2, 'linear')
        doTweenAlpha('camGameOn' ,'camGame', value1, value2, 'linear')
    end
end