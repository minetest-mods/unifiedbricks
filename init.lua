--Unified Bricks by Vsevolod Borislav (wowiamdiamonds)
--
--License: WTFPL
--
--Depends: default, unifieddyes
--
--Obviously, offers the same colors in unifieddyes.
--Thanks go to VanessaE for making unifieddyes, gentextures.sh, etc.

minetest.register_alias("unifieddyes:white","unifieddyes:white_paint")
minetest.register_alias("unifieddyes:lightgrey","unifieddyes:lightgrey_paint")
minetest.register_alias("unifieddyes:grey","unifieddyes:grey_paint")
minetest.register_alias("unifieddyes:darkgrey","unifieddyes:darkgrey_paint")

--1 indicates yes, 0 indicates no
--red, orange, yellow, lime, green, aqua, cyan, skyblue, blue, violet, magenta,
--redviolet, black, darkgrey, mediumgrey, lightgrey, white, respectively (by default)
SETTING_allow_hues = {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1}
--clayblock, clay, brick, brickblock, respectively (by default)
SETTING_allow_types = {1,1,1,1}
--half saturation, full saturation, respectively (by default)
SETTING_allow_saturation = {1,1}
--dark, medium, bright, light, respectively (by default)
SETTING_allow_darkness = {1,1,1,1}

HUES = {
	"red",
	"orange",
	"yellow",
	"lime",
	"green",
	"aqua",
	"cyan",
	"skyblue",
	"blue",
	"violet",
	"magenta",
	"redviolet",
	"black",
	"darkgrey",
	"grey",
	"lightgrey",
	"white"
}
TYPES = {
	"_clayblock",
	"_clay",
	"_brick",
	"_brickblock"
}
SATURATION = {
	"_s50",
	""
}
DARKNESS = {
	"dark_",
	"medium_",
	"",
	"light_"
}
--formal versions
FORMALHUES = {
	"Red",
	"Orange",
	"Yellow",
	"Lime",
	"Green",
	"Aqua",
	"Cyan",
	"Sky blue",
	"Blue",
	"Violet",
	"Magenta",
	"Red violet",
	"Black",
	"Dark grey",
	"Grey",
	"Light grey",
	"White"
}
FORMALTYPES = {
	" clay",
	" clay lump",
	" brick",
	" bricks"
}
FORMALSATURATION = {
	" (low saturation)",
	""
}
FORMALDARKNESS = {
	"Dark ",
	"Medium ",
	"Bright ",
	"Light "
}

register_clay_block = function(name,formalname)
	minetest.register_node("unifiedbricks:" .. name .. TYPES[1], {
		description = formalname .. FORMALTYPES[1],
		tile_images = {"unifiedbricks_" .. name .. TYPES[1] .. ".png"},
		is_ground_content = true,
		groups = {crumbly=3},
		drop = "unifiedbricks:" .. name .. TYPES[2] .. " 4",
		sounds = default.node_sound_dirt_defaults({
			footstep = "",
		}),
	})
end
register_clay_lump = function(name,formalname)
	minetest.register_craftitem("unifiedbricks:" .. name .. TYPES[2], {
		description = formalname .. FORMALTYPES[2],
		inventory_image = "unifiedbricks_" .. name .. TYPES[2] .. ".png",
	})
end
register_brick = function(name,formalname)
	minetest.register_craftitem("unifiedbricks:" .. name .. TYPES[3], {
		description = formalname .. FORMALTYPES[3],
		inventory_image = "unifiedbricks_" .. name .. TYPES[3] .. ".png",
	})
end
register_brick_block = function(name,formalname)
	minetest.register_node("unifiedbricks:" .. name .. TYPES[4], {
		description = formalname .. FORMALTYPES[4],
		tile_images = {"unifiedbricks_" .. name .. TYPES[4] .. ".png"},
		is_ground_content = true,
		groups = {cracky=3},
		drop = "unifiedbricks_" .. name .. TYPES[3] .." 4",
		sounds = default.node_sound_stone_defaults(),
	})
end

register_clay_craft = function(color_combo,color_one,color_two)
	minetest.register_craft( {
       type = "shapeless",
       output = "unifiedbricks:" .. color_combo .. "_clay 2",
       recipe = {
               "unifiedbricks:" .. color_one .. "_clay",
               "unifiedbricks:" .. color_two .. "_clay",
		},
	})
	minetest.register_craft( {
       type = "shapeless",
       output = "unifiedbricks:" .. color_combo .. "_clay 1",
       recipe = {
               "unifieddyes:" .. color_one,
               "unifiedbricks:" .. color_two .. "_clay",
		},
	})
	minetest.register_craft( {
       type = "shapeless",
       output = "unifiedbricks:" .. color_combo .. "_clay 1",
       recipe = {
               "unifiedbricks:" .. color_one .. "_clay",
               "unifieddyes:" .. color_two,
		},
	})
end
register_clay_craft_three = function(color_combo,color_one,color_two,color_three)
	minetest.register_craft( {
       type = "shapeless",
       output = "unifiedbricks:" .. color_combo .. "_clay 3",
       recipe = {
               "unifiedbricks:" .. color_one .. "_clay",
               "unifiedbricks:" .. color_two .. "_clay",
               "unifiedbricks:" .. color_three .. "_clay",
		},
	})
	minetest.register_craft( {
       type = "shapeless",
       output = "unifiedbricks:" .. color_combo .. "_clay 2",
       recipe = {
               "unifiedbricks:" .. color_one .. "_clay",
               "unifiedbricks:" .. color_two .. "_clay",
               "unifieddyes:" .. color_three,
		},
	})
	minetest.register_craft( {
       type = "shapeless",
       output = "unifiedbricks:" .. color_combo .. "_clay 2",
       recipe = {
               "unifiedbricks:" .. color_one .. "_clay",
               "unifieddyes:" .. color_two,
               "unifiedbricks:" .. color_three .. "_clay",
		},
	})
	minetest.register_craft( {
       type = "shapeless",
       output = "unifiedbricks:" .. color_combo .. "_clay 2",
       recipe = {
               "unifieddyes:" .. color_one,
               "unifiedbricks:" .. color_two .. "_clay",
               "unifiedbricks:" .. color_three .. "_clay",
		},
	})
	minetest.register_craft( {
       type = "shapeless",
       output = "unifiedbricks:" .. color_combo .. "_clay 1",
       recipe = {
               "unifieddyes:" .. color_one,
               "unifiedbricks:" .. color_two .. "_clay",
               "unifieddyes:" .. color_three,
		},
	})
	minetest.register_craft( {
       type = "shapeless",
       output = "unifiedbricks:" .. color_combo .. "_clay 1",
       recipe = {
               "unifieddyes:" .. color_one,
               "unifieddyes:" .. color_two,
               "unifiedbricks:" .. color_three .. "_clay",
		},
	})
	minetest.register_craft( {
       type = "shapeless",
       output = "unifiedbricks:" .. color_combo .. "_clay 1",
       recipe = {
               "unifiedbricks:" .. color_one .. "_clay",
               "unifieddyes:" .. color_two,
               "unifieddyes:" .. color_three,
		},
	})
end
register_clay_craft_three_reducedfat = function(color_combo,color_one,color_two,color_three)
	minetest.register_craft( {
       type = "shapeless",
       output = "unifiedbricks:" .. color_combo .. "_clay 3",
       recipe = {
               "unifiedbricks:" .. color_one .. "_clay",
               "unifiedbricks:" .. color_two .. "_clay",
               "unifiedbricks:" .. color_three .. "_clay",
		},
	})
	minetest.register_craft( {
       type = "shapeless",
       output = "unifiedbricks:" .. color_combo .. "_clay 2",
       recipe = {
               "unifiedbricks:" .. color_one .. "_clay",
               "unifiedbricks:" .. color_two .. "_clay",
               "unifieddyes:" .. color_three,
		},
	})
	minetest.register_craft( {
       type = "shapeless",
       output = "unifiedbricks:" .. color_combo .. "_clay 2",
       recipe = {
               "unifiedbricks:" .. color_one .. "_clay",
               "unifieddyes:" .. color_two,
               "unifiedbricks:" .. color_three .. "_clay",
		},
	})
	minetest.register_craft( {
       type = "shapeless",
       output = "unifiedbricks:" .. color_combo .. "_clay 1",
       recipe = {
               "unifieddyes:" .. color_one,
               "unifiedbricks:" .. color_two .. "_clay",
               "unifieddyes:" .. color_three,
		},
	})
	minetest.register_craft( {
       type = "shapeless",
       output = "unifiedbricks:" .. color_combo .. "_clay 1",
       recipe = {
               "unifieddyes:" .. color_one,
               "unifieddyes:" .. color_two,
               "unifiedbricks:" .. color_three .. "_clay",
		},
	})
end
register_clay_craft_four_reducedfat = function(color_combo,color_one,color_two,color_three,color_four)
	minetest.register_craft( {
       type = "shapeless",
       output = "unifiedbricks:" .. color_combo .. "_clay 4",
       recipe = {
               "unifiedbricks:" .. color_one .. "_clay",
               "unifiedbricks:" .. color_two .. "_clay",
               "unifiedbricks:" .. color_three .. "_clay",
			   "unifiedbricks:" .. color_four .. "_clay",
		},
	})
	minetest.register_craft( {
       type = "shapeless",
       output = "unifiedbricks:" .. color_combo .. "_clay 3",
       recipe = {
               "unifiedbricks:" .. color_one .. "_clay",
               "unifiedbricks:" .. color_two .. "_clay",
               "unifiedbricks:" .. color_three .. "_clay",
			   "unifieddyes:" .. color_four,
		},
	})
	minetest.register_craft( {
       type = "shapeless",
       output = "unifiedbricks:" .. color_combo .. "_clay 3",
       recipe = {
               "unifiedbricks:" .. color_one .. "_clay",
               "unifiedbricks:" .. color_two .. "_clay",
               "unifieddyes:" .. color_three,
			   "unifiedbricks:" .. color_four .. "_clay",
		},
	})
	minetest.register_craft( {
       type = "shapeless",
       output = "unifiedbricks:" .. color_combo .. "_clay 3",
       recipe = {
               "unifiedbricks:" .. color_one .. "_clay",
               "unifieddyes:" .. color_two,
               "unifiedbricks:" .. color_three .. "_clay",
			   "unifiedbricks:" .. color_four .. "_clay",
		},
	})
	minetest.register_craft( {
       type = "shapeless",
       output = "unifiedbricks:" .. color_combo .. "_clay 2",
       recipe = {
               "unifieddyes:" .. color_one,
               "unifiedbricks:" .. color_two .. "_clay",
               "unifiedbricks:" .. color_three .. "_clay",
			   "unifieddyes:" .. color_four,
		},
	})
	minetest.register_craft( {
       type = "shapeless",
       output = "unifiedbricks:" .. color_combo .. "_clay 2",
       recipe = {
               "unifieddyes:" .. color_one,
               "unifiedbricks:" .. color_two .. "_clay",
               "unifieddyes:" .. color_three,
			   "unifiedbricks:" .. color_four .. "_clay",
		},
	})
	minetest.register_craft( {
       type = "shapeless",
       output = "unifiedbricks:" .. color_combo .. "_clay 2",
       recipe = {
               "unifieddyes:" .. color_one,
               "unifieddyes:" .. color_two,
               "unifiedbricks:" .. color_three .. "_clay",
			   "unifiedbricks:" .. color_four .. "_clay",
		},
	})
	minetest.register_craft( {
       type = "shapeless",
       output = "unifiedbricks:" .. color_combo .. "_clay 2",
       recipe = {
               "unifiedbricks:" .. color_one .. "_clay",
               "unifiedbricks:" .. color_two .. "_clay",
               "unifieddyes:" .. color_three,
			   "unifieddyes:" .. color_four,
		},
	})
	minetest.register_craft( {
       type = "shapeless",
       output = "unifiedbricks:" .. color_combo .. "_clay 1",
       recipe = {
               "unifieddyes:" .. color_one,
               "unifieddyes:" .. color_two,
               "unifiedbricks:" .. color_three .. "_clay",
			   "unifieddyes:" .. color_four,
		},
	})
	minetest.register_craft( {
       type = "shapeless",
       output = "unifiedbricks:" .. color_combo .. "_clay 1",
       recipe = {
               "unifieddyes:" .. color_one,
               "unifiedbricks:" .. color_two .. "_clay",
               "unifieddyes:" .. color_three,
			   "unifieddyes:" .. color_four,
		},
	})
	minetest.register_craft( {
       type = "shapeless",
       output = "unifiedbricks:" .. color_combo .. "_clay 1",
       recipe = {
               "unifieddyes:" .. color_one,
               "unifieddyes:" .. color_two,
               "unifieddyes:" .. color_three,
			   "unifiedbricks:" .. color_four .. "_clay",
		},
	})
end

register_clay_block_craft = function(color)
	minetest.register_craft({
		output = "unifiedbricks:" .. color .. TYPES[1],
		recipe = {
			{"unifiedbricks:" .. color .. TYPES[2], "unifiedbricks:" .. color .. TYPES[2]},
			{"unifiedbricks:" .. color .. TYPES[2], "unifiedbricks:" .. color .. TYPES[2]},
		}
	})
end
register_brick_cooking = function(color)
	minetest.register_craft({
		type = "cooking",
		output = "unifiedbricks:" .. color .. TYPES[3],
		recipe = "unifiedbricks:" .. color .. TYPES[2],
	})
end
register_brick_block_craft = function(color)
	minetest.register_craft({
		output = "unifiedbricks:" .. color .. TYPES[4],
		recipe = {
			{"unifiedbricks:" .. color .. TYPES[3], "unifiedbricks:" .. color .. TYPES[3]},
			{"unifiedbricks:" .. color .. TYPES[3], "unifiedbricks:" .. color .. TYPES[3]},
		}
	})
end

--REGISTERS ALL NODES AND CRAFTITEMS
for i = 1,17 do
if SETTING_allow_hues[i] == 1 then
	for j = 1,4 do
	if SETTING_allow_types[j] == 1 then
	if i > 12 then
		formalname = FORMALHUES[i]
		name = HUES[i]
		if j == 1 then register_clay_block(name,formalname)
		elseif j == 2 then register_clay_lump(name,formalname)
		elseif j == 3 then register_brick(name,formalname)
		else register_brick_block(name,formalname) end
	else
		for k = 1,4 do
		if SETTING_allow_darkness[k] == 1 then
			for l = 1,2 do
			if SETTING_allow_saturation[l] == 1 then
				if k == 4 and l == 1 then
				else
					formalname = FORMALDARKNESS[k] .. FORMALHUES[i] .. FORMALSATURATION[l]
					name = DARKNESS[k] .. HUES[i] .. SATURATION[l]
					if j == 1 then register_clay_block(name,formalname)
					elseif j == 2 then register_clay_lump(name,formalname)
					elseif j == 3 then register_brick(name,formalname)
					else register_brick_block(name,formalname) end
				end
			end
			end
		end
		end
	end
	end
	end
end
end

--REGISTERS ALL CLAY BLOCK CRAFTING RECIPES
if SETTING_allow_types[1] + SETTING_allow_types[2] == 2 then
	for i = 1,17 do
	if SETTING_allow_hues[i] == 1 then
		for k = 1,4 do
		if SETTING_allow_darkness[k] == 1 then
			for l = 1,2 do
			if SETTING_allow_saturation[l] == 1 then
				register_clay_block_craft(DARKNESS[k] .. HUES[i] .. SATURATION[l])
			end
			end
		end
		end
	end
	end
end

--REGISTERS ALL CLAY LUMP CRAFTING RECIPES
if SETTING_allow_types[2] == 1 then
	if SETTING_allow_hues[2] == 1 then register_clay_craft("orange","yellow","red") end
	if SETTING_allow_hues[4] == 1 then register_clay_craft("lime","green","yellow") end
	if SETTING_allow_hues[5] == 1 then register_clay_craft("green","blue","yellow") end
	if SETTING_allow_hues[6] == 1 then register_clay_craft("aqua","green","cyan") end
	if SETTING_allow_hues[7] == 1 then register_clay_craft("cyan","blue","green") end
	if SETTING_allow_hues[8] == 1 then register_clay_craft("skyblue","cyan","blue") end
	if SETTING_allow_hues[10] == 1 then register_clay_craft("violet","magenta","blue") end
	if SETTING_allow_hues[11] == 1 then register_clay_craft("magenta","blue","red") end
	if SETTING_allow_hues[12] == 1 then register_clay_craft("redviolet","magenta","red") end

	if SETTING_allow_hues[14] == 1 then register_clay_craft("darkgrey","black","black","white") end
	if SETTING_allow_hues[15] == 1 then register_clay_craft("grey","white","black") end
	if SETTING_allow_hues[16] == 1 then register_clay_craft_three_reducedfat("lightgrey","white","white","black") end

	for i = 1,12 do
	if SETTING_allow_hues[i] == 1 then
		if SETTING_allow_darkness[1] + SETTING_allow_saturation[1] == 2 then
			register_clay_craft(DARKNESS[1] .. HUES[i] .. SATURATION[1],HUES[i],"darkgrey")
			register_clay_craft_four_reducedfat(DARKNESS[1] .. HUES[i] .. SATURATION[1],"black","black","white",HUES[i]) end
		if SETTING_allow_darkness[1] + SETTING_allow_saturation[2] == 2 then
			register_clay_craft_three_reducedfat(DARKNESS[1] .. HUES[i] .. SATURATION[2],"black","black",HUES[i]) end
		if SETTING_allow_darkness[2] + SETTING_allow_saturation[1] == 2 then
			register_clay_craft(DARKNESS[2] .. HUES[i] .. SATURATION[1],HUES[i],"grey")
			register_clay_craft_three(DARKNESS[2] .. HUES[i] .. SATURATION[1],HUES[i],"black","white") end
		if SETTING_allow_darkness[2] + SETTING_allow_saturation[2] == 2 then
			register_clay_craft(DARKNESS[2] .. HUES[i] .. SATURATION[2],HUES[i],"black")
		if SETTING_allow_darkness[3] + SETTING_allow_saturation[1] == 2 then
			register_clay_craft(DARKNESS[3] .. HUES[i] .. SATURATION[1],HUES[i],"lightgrey") end
			register_clay_craft_four_reducedfat(DARKNESS[3] .. HUES[i] .. SATURATION[1],"white","white","black",HUES[i]) end
		if SETTING_allow_darkness[4] + SETTING_allow_saturation[1] == 2 then
			register_clay_craft(DARKNESS[4] .. HUES[i] .. SATURATION[1],HUES[i],"white")
		end
	end
	end
end

--REGISTERS ALL BRICK COOKING RECIPES
if SETTING_allow_types[2] + SETTING_allow_types[3] == 2 then
	for i = 1,17 do
	if SETTING_allow_hues[i] == 1 then
		for k = 1,4 do
		if SETTING_allow_darkness[k] == 1 then
			for l = 1,2 do
			if SETTING_allow_saturation[l] == 1 then
				register_brick_cooking(DARKNESS[k] .. HUES[i] .. SATURATION[l])
			end
			end
		end
		end
	end
	end
end

--REGISTERS ALL BRICK BLOCK CRAFTING RECIPES
if SETTING_allow_types[3] + SETTING_allow_types[4] == 2 then
	for i = 1,17 do
	if SETTING_allow_hues[i] == 1 then
		for k = 1,4 do
		if SETTING_allow_darkness[k] == 1 then
			for l = 1,2 do
			if SETTING_allow_saturation[l] == 1 then
				register_brick_block_craft(DARKNESS[k] .. HUES[i] .. SATURATION[l])
			end
			end
		end
		end
	end
	end
end

print("[UnifiedBricks] Loaded!")
