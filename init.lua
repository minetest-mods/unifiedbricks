--Unified Bricks by Vsevolod Borislav (wowiamdiamonds)
--
--License: WTFPL
--
--Depends: default, unifieddyes
--
--Obviously, offers the same colors in unifieddyes.
--Thanks go to VanessaE for making unifieddyes, gentextures.sh, etc.

--for example: register_clay_craft("green","blue","yellow") means blue+yellow=green
--will automatically handle clay and dye mixes
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

--this is an alternative with three things to put in
--for example register_clay_craft_three("lightgrey","white","white","black")
--mixes clay and dye
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

--this is an alternative to the above that reduces fat
--for example, white_clay+white_dye+black_clay = white_dye+white_clay+black_clay
--however, white_clay+black_clay+white_dye = black_clay+white_clay+white_dye
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

--same thing, four colors combo into one, reduced fat for color_one and color_two
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

--for example, register_clay_block("dark_red_s50","Dark red (low saturation)")
register_clay_block = function(name,formalname)
	minetest.register_node("unifiedbricks:" .. name .. "_clayblock", {
		description = formalname .. " clay",
		tile_images = {"unifiedbricks_" .. name .. "_clayblock.png"},
		is_ground_content = true,
		groups = {crumbly=3},
		drop = "unifiedbricks:" .. name .. "_clay 4",
		sounds = default.node_sound_dirt_defaults({
			footstep = "",
		}),
	})
end

register_clay_lump = function(name,formalname)
	minetest.register_craftitem("unifiedbricks:" .. name .. "_clay", {
		description = formalname .. " clay",
		inventory_image = "unifiedbricks_" .. name .. "_clay.png",
	})	
end

register_brick = function(name,formalname)
	minetest.register_craftitem("unifiedbricks:" .. name .. "_brick", {
		description = formalname .. " brick",
		inventory_image = "unifiedbricks_" .. name .. "_brick.png",
	})	
end

register_brick_block = function(name,formalname)
	minetest.register_node("unifiedbricks:" .. name .. "_brickblock", {
		description = formalname .. " bricks",
		tile_images = {"unifiedbricks_" .. name .. "_brickblock.png"},
		is_ground_content = true,
		groups = {cracky=3},
		drop = "unifiedbricks_" .. name .. "_brick 4",
		sounds = default.node_sound_stone_defaults(),
	})
end

register_clay_block_craft = function(color)
	minetest.register_craft({
		output = "unifiedbricks:" .. color .. "_clayblock",
		recipe = {
			{"unifiedbricks:" .. color .. "_clay", "unifiedbricks:" .. color .. "_clay"},
			{"unifiedbricks:" .. color .. "_clay", "unifiedbricks:" .. color .. "_clay"},
		}
	})
end

register_brick_cooking = function(color)
	minetest.register_craft({
		type = "cooking",
		output = "unifiedbricks:" .. color .. "_brick",
		recipe = "unifiedbricks:" .. color .. "_clay",
	})
end

register_brick_block_craft = function(color)
	minetest.register_craft({
		output = "unifiedbricks:" .. color .. "_brickblock",
		recipe = {
			{"unifiedbricks:" .. color .. "_brick", "unifiedbricks:" .. color .. "_brick"},
			{"unifiedbricks:" .. color .. "_brick", "unifiedbricks:" .. color .. "_brick"},
		}
	})
end


register_clay_craft("green","blue","yellow")
register_clay_craft("cyan","blue","green")
register_clay_craft("magenta","blue","red")
register_clay_craft("orange","yellow","red")
register_clay_craft("lime","green","yellow")
register_clay_craft("aqua","green","cyan")
register_clay_craft("skyblue","cyan","blue")
register_clay_craft("violet","magenta","blue")
register_clay_craft("redviolet","magenta","red")

--White
register_clay_lump("white","White")
register_brick_block("white","White")
register_clay_block_craft("white")
register_brick_cooking("white")
register_brick_block_craft("white")

--Light grey

register_clay_lump("lightgrey","Light grey")
register_brick_block("lightgrey","Light grey")
register_clay_craft_three_reducedfat("lightgrey","white","white","black")
register_clay_block_craft("lightgrey")
register_brick_cooking("lightgrey")
register_brick_block_craft("lightgrey")

--Medium grey
register_clay_lump("grey","Grey")
register_brick_block("grey","Grey")
register_clay_craft("grey","white","black")
register_clay_block_craft("grey")
register_brick_cooking("grey")
register_brick_block_craft("grey")

--Dark grey
register_clay_lump("darkgrey","Dark grey")
register_brick_block("darkgrey","Dark grey")
register_clay_craft_three_reducedfat("darkgrey","black","black","white")
register_clay_block_craft("darkgrey")
register_brick_cooking("darkgrey")
register_brick_block_craft("darkgrey")

--Black
register_clay_lump("black","Black")
register_brick_block("black","Black")
register_clay_block_craft("black")
register_brick_cooking("black")
register_brick_block_craft("black")

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
	"redviolet"
}
DARKNESS = {"dark_","dark_","medium_","medium_","",""}
DARKNESSFORMAL = {"Dark ","Dark ","Medium ","Medium ","Bright ","Bright "}
SATURATION = {"_s50","","_s50","","_s50",""}
SATURATIONFORMAL = {" (low saturation)",""," (low saturation)",""," (low saturation)",""}

for i = 1, 12 do

	hue = HUES[i]
	
	--dark_s50
	register_clay_craft("dark_" .. hue .. "_s50",hue,"darkgrey")
	register_clay_craft_four_reducedfat("dark_" .. hue .. "_s50","black","black",hue,"white")
	
	--dark
	register_clay_craft_three_reducedfat("dark_" .. hue,"black","black",hue)
	
	--medium_s50
	register_clay_craft("medium_" .. hue .. "_s50",hue,"grey")
	register_clay_craft_three("medium_" .. hue .. "_s50",hue,"black","white")

	--medium
	register_clay_craft("medium_" .. hue,hue,"black")
	
	--_s50
	register_clay_craft(hue .. "_s50",hue,"lightgrey")	
	register_clay_craft_four_reducedfat("dark_" .. hue .. "_s50","white","white",hue,"black")

	for k = 1, 6 do
		--three different kinds of darkness, three different kinds of saturation
		register_clay_block(DARKNESS[k] .. hue .. SATURATION[k], DARKNESSFORMAL[k] .. hue .. SATURATIONFORMAL[k])
		register_clay_lump(DARKNESS[k] .. hue .. SATURATION[k], DARKNESSFORMAL[k] .. hue .. SATURATIONFORMAL[k])
		register_brick(DARKNESS[k] .. hue .. SATURATION[k], DARKNESSFORMAL[k] .. hue .. SATURATIONFORMAL[k])
		register_brick_block(DARKNESS[k] .. hue .. SATURATION[k], DARKNESSFORMAL[k] .. hue .. SATURATIONFORMAL[k])
		
		register_clay_block_craft(DARKNESS[k] .. hue .. SATURATION[k])
		register_brick_block_craft(DARKNESS[k] .. hue .. SATURATION[k])
		register_brick_cooking(DARKNESS[k] .. hue .. SATURATION[k])
	end
	
end

