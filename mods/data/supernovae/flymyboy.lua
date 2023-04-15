function onBeatHit()
    if curBeat == 256 then
      doTweenY('dadadad', 'dad', 100, 120-96)
    elseif curBeat == 320 then
      doTweenY('dadadad', 'dad', 500, 1, 'cubeIn')
    end
end