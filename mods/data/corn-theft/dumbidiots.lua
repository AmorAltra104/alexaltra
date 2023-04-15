function onEvent(n, v1, v2)
  if n == 'subtitles' and v1 == 'FADEOUT' then
    doTweenAlpha('byebye', 'dad', 0, 148.57-147.61)
    doTweenZoom('fasdfs', 'camGame', 1.1, 148.57-147.61, 'sineIn')
  else
    setProperty('dad.alpha', 1)
  end
end