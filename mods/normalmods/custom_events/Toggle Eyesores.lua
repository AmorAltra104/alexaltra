camShake = false;
local shadname = "rainbow"
function onEvent(n,v1,v2)

	if n == "Toggle Eyesores" then
		if v1 == "1" then
			camShake = true;
			if flashingLights then
				 if shadname == "rainbow" then
                     initLuaShader(shadname)
    
                     makeLuaSprite("temporaryShader")
                     makeGraphic("temporaryShader", screenWidth, screenHeight)

                     setSpriteShader("temporaryShader", shadname)
                     setSpriteShader("botplayTxt", shadname)

                     setShaderFloat("temporaryShader", "_alpha", 1)
                     setShaderFloat("temporaryShader", "_disx", 7)
                     setShaderFloat("temporaryShader", "_disy",7)
                     setShaderBool("temporaryShader", "inner", true)
                     setShaderBool("temporaryShader", "inverted", true)
                     setShaderBool("temporaryShader", "knockout", true)

                     addHaxeLibrary("ShaderFilter", "openfl.filters")
                     runHaxeCode([[
                           trace(ShaderFilter);
                           game.camGame.setFilters([new ShaderFilter(game.getLuaObject("temporaryShader").shader)]);
                     ]])
                     function onUpdate()
                        setShaderFloat('temporaryShader','iTime',os.clock())
                     end
                 end
			end
        elseif v1 == "0" then
            camShake = false;
            if flashingLights then
                runHaxeCode("game.camGame.setFilters([]);")
                cameraFlash('camGame', 'FFFFFF', 0.15);
            end
        end
	end
end

function onUpdatePost(elapsed)
	if camShake then
		playAnim('gf', 'scared');
	end
end