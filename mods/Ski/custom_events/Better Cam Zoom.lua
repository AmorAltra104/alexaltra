function onEvent(name, value1, value2)
   if name == 'Better Cam Zoom' then
           setProperty('defaultCamZoom', getProperty('defaultCamZoom') + value1)
end
end