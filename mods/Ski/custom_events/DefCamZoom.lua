function onEvent(n, v1, v2)
    if n == 'DefCamZoom' then
        setProperty('defaultCamZoom', tonumber(v1))
    end
end