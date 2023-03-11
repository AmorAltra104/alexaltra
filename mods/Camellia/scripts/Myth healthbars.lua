local style = 'inner' -- inner,center,edge,outer


local healthlight = true--是否开启血条跳动


local width = 710 -- default: 593
local height = 27 -- default: 11

local bar_offset_x = -3 -- default: 0
local bar_offset_y = -12 -- default: 0

local border_color = '000000'
local border_thickness = 4 -- default: 4

local override_colors = false -- default: false
local override_p1_color = override_colors and '00A1C0' or nil
local override_p2_color = override_colors and 'C25A00' or nil

local p1_offset_x = -26 -- default: -26
local p1_offset_y = -10 -- default: 0
local p2_offset_x = 26 -- default: 26
local p2_offset_y = -10 -- default: 0

local function to_hex(rgb)
return string.format('%x',(rgb[1] * 0x10000) + (rgb[2] * 0x100) + rgb[3])
end

local sprite_border = 'healthbar_border'
local sprite_p1 = 'healthbar_p1'
local sprite_p2 = 'healthbar_p2'

local bar_origin_x 
local bar_origin_y

local p_origin_y

local curNote = 0
function onCreatePost()
setProperty('healthBarBG.visible',false)
setProperty('healthBar.visible',false)


bar_origin_x = (1280 - width) / 2
bar_origin_y = getProperty('healthBarBG.sprTracker.y') - (height / 2.1)
p_origin_y = getProperty('iconP1.y')

makeLuaSprite(sprite_border,'',
bar_origin_x - border_thickness + bar_offset_x,
bar_origin_y - border_thickness + bar_offset_y
)
makeGraphic(sprite_border,
width + (border_thickness * 2),
height + (border_thickness * 2),
border_color
)

setObjectOrder('iconP1',4)
setObjectOrder('iconP2',5)

if boyfriendName == 'bfm' or boyfriendName == 'bf' or boyfriendName == 'bfHalloween'  or boyfriendName == 'bfHalloween-m' and dadName == 'camellia' or dadName == 'camelliaHalloween' then
makeLuaSprite('newhealthbars','myth engine/bar camellia bf',0,580);
addLuaSprite('newhealthbars',false)
setObjectCamera('newhealthbars','hud')
setObjectOrder('newhealthbars',2)
scaleObject('newhealthbars',0.3,0.3)
end
if dadName == 'botan' then
makeLuaSprite('newhealthbars','myth engine/bar botan bf',0,580);
addLuaSprite('newhealthbars',false)
setObjectCamera('newhealthbars','hud')
setObjectOrder('newhealthbars',2)
scaleObject('newhealthbars',0.3,0.3)
end
if dadName == 'gf' or dadName == 'gf-t' then
makeLuaSprite('newhealthbars','myth engine/bar gf bf',0,580);
addLuaSprite('newhealthbars',false)
setObjectCamera('newhealthbars','hud')
setObjectOrder('newhealthbars',2)
scaleObject('newhealthbars',0.3,0.3)
end
if boyfriendName == 'neobf' then
makeLuaSprite('newhealthbars','myth engine/bar camellia neobf',0,580);
addLuaSprite('newhealthbars',false)
setObjectCamera('newhealthbars','hud')
setObjectOrder('newhealthbars',2)
scaleObject('newhealthbars',0.3,0.3)
end
if boyfriendName == 'pico' then
makeLuaSprite('newhealthbars','myth engine/bar pico pico',0,580);
addLuaSprite('newhealthbars',false)
setObjectCamera('newhealthbars','hud')
setObjectOrder('newhealthbars',2)
scaleObject('newhealthbars',0.3,0.3)
end
if boyfriendName == 'camellia-c' or boyfriendName == 'camellia-c-m' or boyfriendName == 'camelliaHalloween-c'  or boyfriendName == 'camelliaHalloween-c-m' and dadName == 'bfHalloween-c' or dadName == 'bf-c' then
makeLuaSprite('newhealthbars','myth engine/bar bf camellia',0,580);
addLuaSprite('newhealthbars',false)
setObjectCamera('newhealthbars','hud')
setObjectOrder('newhealthbars',2)
scaleObject('newhealthbars',0.3,0.3)
end
if dadName == 'Miku' then
makeLuaSprite('newhealthbars','myth engine/bar miku bf',0,580);
addLuaSprite('newhealthbars',false)
setObjectCamera('newhealthbars','hud')
setObjectOrder('newhealthbars',2)
scaleObject('newhealthbars',0.3,0.3)
end
if boyfriendName == 'botan-c' or boyfriendName == 'botan-c-m' and dadName == 'bf-c' then
makeLuaSprite('newhealthbars','myth engine/bar bf botan',0,580);
addLuaSprite('newhealthbars',false)
setObjectCamera('newhealthbars','hud')
setObjectOrder('newhealthbars',2)
scaleObject('newhealthbars',0.3,0.3)
end

makeLuaSprite(sprite_p1,'',
bar_origin_x + (width / 2) + bar_offset_x,
bar_origin_y + bar_offset_y
)
makeGraphic(sprite_p1,
(width / 2),
height,
override_colors and override_p1_color or to_hex(getProperty('boyfriend.healthColorArray'))
)
addLuaSprite(sprite_p1,false)
setObjectCamera(sprite_p1,'hud')
setObjectOrder(sprite_p1,2)
setProperty(sprite_p1 .. '.origin.x',getProperty(sprite_p1 .. '.width'))

makeLuaSprite(sprite_p2,'',
bar_origin_x + bar_offset_x,
bar_origin_y + bar_offset_y
)
makeGraphic(sprite_p2,
(width / 2),
height,
override_colors and override_p2_color or to_hex(getProperty('dad.healthColorArray'))
)
addLuaSprite(sprite_p2,false)
setObjectCamera(sprite_p2,'hud')
setObjectOrder(sprite_p2,1)
setProperty(sprite_p2 .. '.origin.x',0)
if  downscroll then
setProperty('newhealthbars.y',20)
setProperty('"himage"..curNote.y',21)
end
end

function onUpdatePost()

local percent_p1 = (getProperty('healthBar.percent') / 100)
local percent_p2 = 1 - percent_p1

local scale_p1 = (percent_p1 * 2) + (percent_p1 < 1 and 0.01 or 0)
local scale_p2 = percent_p2 * 2
setProperty(sprite_p1 .. '.scale.x',scale_p1)
setProperty(sprite_p2 .. '.scale.x',scale_p2)

local real_width_p1 = getProperty(sprite_p1 .. '.width') * scale_p1
local real_width_p2 = getProperty(sprite_p2 .. '.width') * scale_p2

local center_p1 = -getProperty('iconP1.frameWidth') / 2
local center_p2 = -getProperty('iconP2.frameWidth') / 2

local temp_x_p1 = {
['inner'] = bar_origin_x + real_width_p2 + p1_offset_x,
['center'] = bar_origin_x + real_width_p2 + (real_width_p1 / 2) + center_p1,
['edge'] = bar_origin_x + width + center_p1,
['outer'] = bar_origin_x + width + center_p1 + 150 + p1_offset_x
}

local temp_x_p2 = {
['inner'] = bar_origin_x + real_width_p2 - 150 + p2_offset_x,
['center'] = bar_origin_x + (real_width_p2 / 2) + center_p2,
['edge'] = bar_origin_x + center_p2,
['outer'] = bar_origin_x + center_p2 - 150 + p2_offset_x
}

setProperty(sprite_border .. '.x',bar_origin_x - border_thickness + bar_offset_x)
setProperty(sprite_border .. '.y',bar_origin_y - border_thickness + bar_offset_y)

setProperty(sprite_p1 .. '.x',bar_origin_x + (width / 2) + bar_offset_x)
setProperty(sprite_p1 .. '.y',bar_origin_y + bar_offset_y)

setProperty(sprite_p2 .. '.x',bar_origin_x + bar_offset_x)
setProperty(sprite_p2 .. '.y',bar_origin_y + bar_offset_y)

setProperty('iconP1.x',(temp_x_p1[style] or temp_x_p1['inner']) + bar_offset_x)
setProperty('iconP2.x',(temp_x_p2[style] or temp_x_p2['inner']) + bar_offset_x)
setProperty('iconP1.y',p_origin_y + bar_offset_y + p1_offset_y)
setProperty('iconP2.y',p_origin_y + bar_offset_y + p2_offset_y)
end

function goodNoteHit(id,noteData,noteType,isSustainNote)
if not isSustainNote and healthlight == true then
curNote = curNote + 1
if curNote >4 then curNote = 1 end
makeAnimatedLuaSprite("himage"..curNote,'myth engine/healthlight',0,downscroll and 21 or 581);
setObjectCamera("himage"..curNote,'hud')
scaleObject("himage"..curNote,1.2,1.16);
setObjectOrder("himage"..curNote,3)
addLuaSprite("himage"..curNote,false);
addAnimationByPrefix("himage"..curNote,'healthlight','healthlight',52,false);


end
end

function onCreate()
if not healthlight == true then
makeAnimatedLuaSprite('healthlight1','myth engine/healthlight',0,0)
addAnimationByPrefix('healthlight1','healthlight','healthlight',52,true)
scaleObject('healthlight1',1,1)
addLuaSprite('healthlight1',false)
setProperty('healthlight1.alpha',0)

end
end