local bf = {
    ['ski'] = {
		x = 0,
        y = 445
    }
}


function onCreatePost()
    geFlect()
end
function onEvent(n,v1,v2)
    if n == 'Change Character' then
        prepareStuff()
    end
end
function geFlect()
    local bfx, bfy = bf[boyfriendName] and bf[boyfriendName].x, bf[boyfriendName] and bf[boyfriendName].y
    runHaxeCode([[
    reflectBF = new Boyfriend(game.boyfriend.x + ]]..bfx..[[, game.boyfriend.y + ]]..bfy..[[, ']]..boyfriendName..[[');
    game.addBehindBF(reflectBF);
	
    reflectBF.alpha = 0.5;
    reflectBF.flipY = true;

    reflectBF.visible = game.bf.visible;
    ]])
end
function prepareStuff()
    runHaxeCode([[
        game.remove(reflectBF);
    ]])
    runTimer('stuffPrepared',0.1)
end
function onTimerCompleted(t)
    if t == 'stuffPrepared' then
        geFlect()
    end
end
function onUpdatePost()
    runHaxeCode([[
        reflectBF.animation.copyFrom(game.boyfriend.animation);
        reflectBF.animation.curAnim.curFrame = game.boyfriend.animation.curAnim.curFrame;
        if (reflectBF.animation.curAnim.name == 'singDOWN')
        {
            reflectBF.offset.set(game.boyfriend.animOffsets.get(game.boyfriend.animation.curAnim.name)[0], game.boyfriend.animOffsets.get(game.boyfriend.animation.curAnim.name)[1] * -0.05);
        }
        else
        {
            reflectBF.offset.set(game.boyfriend.animOffsets.get(game.boyfriend.animation.curAnim.name)[0], game.boyfriend.animOffsets.get(game.boyfriend.animation.curAnim.name)[1] * 0.1);
        }
    ]])
end