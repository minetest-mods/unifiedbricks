--Unified Bricks by Vsevolod Borislav (wowiamdiamonds)
--
--License: GPLv2/later
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
minetest.register_craftitem("unifiedbricks:white_clay", {
	description = "White Clay",
	inventory_image = "unifiedbricks_white_clay.png",
})
minetest.register_craft({
    type = "cooking",
    output = "unifiedbricks:white_brick",
    recipe = "unifiedbricks:white_clay",
})
minetest.register_craft({
	output = "unifiedbricks:white_brickblock",
	recipe = {
		{"unifiedbricks:white_brick", "unifiedbricks:white_brick"},
		{"unifiedbricks:white_brick", "unifiedbricks:white_brick"},
	}
})
minetest.register_node("unifiedbricks:white_brickblock", {
	description = "White bricks",
	tile_images = {"unifiedbricks_white_brickblock.png"},
	is_ground_content = true,
	groups = {cracky=3},
	drop = "unifiedbricks_white_brick 4",
	sounds = default.node_sound_stone_defaults(),
})

--Light grey
minetest.register_craftitem("unifiedbricks:lightgrey_clay", {
	description = "Light Grey Clay",
	inventory_image = "unifiedbricks_lightgrey_clay.png",
})
register_clay_craft_three_reducedfat("lightgrey","white","white","black")
minetest.register_craft({
    type = "cooking",
    output = "unifiedbricks:lightgrey_brick",
    recipe = "unifiedbricks:lightgrey_clay",
})
minetest.register_craft({
	output = "unifiedbricks:lightgrey_brickblock",
	recipe = {
		{"unifiedbricks:lightgrey_brick", "unifiedbricks:lightgrey_brick"},
		{"unifiedbricks:lightgrey_brick", "unifiedbricks:lightgrey_brick"},
	}
})
minetest.register_node("unifiedbricks:lightgrey_brickblock", {
	description = "Lightgrey bricks",
	tile_images = {"unifiedbricks_lightgrey_brickblock.png"},
	is_ground_content = true,
	groups = {cracky=3},
	drop = "unifiedbricks_lightgrey_brick 4",
	sounds = default.node_sound_stone_defaults(),
})

--Medium grey
minetest.register_craftitem("unifiedbricks:grey_clay", {
	description = "Medium Grey Clay",
	inventory_image = "unifiedbricks_mediumgrey_clay.png",
})
register_clay_craft("grey","white","black")
minetest.register_craft({
    type = "cooking",
    output = "unifiedbricks:grey_brick",
    recipe = "unifiedbricks:grey_clay",
})
minetest.register_craft({
	output = "unifiedbricks:grey_brickblock",
	recipe = {
		{"unifiedbricks:grey_brick", "unifiedbricks:grey_brick"},
		{"unifiedbricks:grey_brick", "unifiedbricks:grey_brick"},
	}
})
minetest.register_node("unifiedbricks:grey_brickblock", {
	description = "Grey bricks",
	tile_images = {"unifiedbricks_grey_brickblock.png"},
	is_ground_content = true,
	groups = {cracky=3},
	drop = "unifiedbricks_grey_brick 4",
	sounds = default.node_sound_stone_defaults(),
})

--Dark grey
minetest.register_craftitem("unifiedbricks:darkgrey_clay", {
	description = "Dark Grey Clay",
	inventory_image = "unifiedbricks_darkgrey_clay.png",
})
register_clay_craft_three_reducedfat("darkgrey","black","black","white")
minetest.register_craft({
    type = "cooking",
    output = "unifiedbricks:darkgrey_brick",
    recipe = "unifiedbricks:darkgrey_clay",
})
minetest.register_craft({
	output = "unifiedbricks:darkgrey_brickblock",
	recipe = {
		{"unifiedbricks:darkgrey_brick", "unifiedbricks:darkgrey_brick"},
		{"unifiedbricks:darkgrey_brick", "unifiedbricks:darkgrey_brick"},
	}
})
minetest.register_node("unifiedbricks:darkgrey_brickblock", {
	description = "Dark grey bricks",
	tile_images = {"unifiedbricks_darkgrey_brickblock.png"},
	is_ground_content = true,
	groups = {cracky=3},
	drop = "unifiedbricks_darkgrey_brick 4",
	sounds = default.node_sound_stone_defaults(),
})

--Black
minetest.register_craftitem("unifiedbricks:black_clay", {
	description = "Black Clay",
	inventory_image = "unifiedbricks_black_clay.png",
})
minetest.register_craft({
    type = "cooking",
    output = "unifiedbricks:black_brick",
    recipe = "unifiedbricks:black_clay",
})
minetest.register_craft({
	output = "unifiedbricks:black_brickblock",
	recipe = {
		{"unifiedbricks:black_brick", "unifiedbricks:black_brick"},
		{"unifiedbricks:black_brick", "unifiedbricks:black_brick"},
	}
})
minetest.register_node("unifiedbricks:black_brickblock", {
	description = "Black bricks",
	tile_images = {"unifiedbricks_black_brickblock.png"},
	is_ground_content = true,
	groups = {cracky=3},
	drop = "unifiedbricks_black_brick 4",
	sounds = default.node_sound_stone_defaults(),
})

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
HUESFORMAL = {
	"red",
	"orange",
	"yellow",
	"lime",
	"green",
	"aqua",
	"cyan",
	"sky blue",
	"blue",
	"violet",
	"magenta",
	"red-violet"
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
		
		minetest.register_craftitem("unifiedbricks:" .. DARKNESS[k] .. hue .. SATURATION[k] .. "_clay", {
			description = DARKNESSFORMAL[k] .. HUESFORMAL[i] .. SATURATIONFORMAL[k] .. " clay",
			inventory_image = "unifiedbricks_" .. DARKNESS[k] .. hue .. SATURATION[k] ..  "_clay.png"
		})

		minetest.register_craftitem("unifiedbricks:" .. DARKNESS[k] .. hue .. SATURATION[k] .. "_brick", {
			description = DARKNESSFORMAL[k] .. HUESFORMAL[i] .. SATURATIONFORMAL[k] .. " brick",
			inventory_image = "unifiedbricks_" .. DARKNESS[k] .. hue .. SATURATION[k] .. "_brick.png"
		})

		minetest.register_node("unifiedbricks:" .. DARKNESS[k] .. hue .. SATURATION[k] .. "_brickblock", {
			description = DARKNESSFORMAL[k] .. HUESFORMAL[i] .. SATURATIONFORMAL[k] .. " bricks",
			tile_images = {"unifiedbricks_" .. DARKNESS[k] .. hue .. SATURATION[k] .. "_brickblock.png"},
			is_ground_content = true,
			groups = {cracky=3},
			drop = "unifiedbricks_" .. DARKNESS[k] .. hue .. SATURATION[k] .. "_brick 4",
			sounds = default.node_sound_stone_defaults(),
		})
		
		minetest.register_craft({
			output = "unifiedbricks:" .. DARKNESS[k] .. hue .. SATURATION[k] .. "_brickblock",
			recipe = {
				{"unifiedbricks:" .. DARKNESS[k] .. hue .. SATURATION[k] .. "_brick", "unifiedbricks:" .. DARKNESS[k] .. hue .. SATURATION[k] .. "_brick"},
				{"unifiedbricks:" .. DARKNESS[k] .. hue .. SATURATION[k] .. "_brick", "unifiedbricks:" .. DARKNESS[k] .. hue .. SATURATION[k] .. "_brick"},
			}
		})
		
		minetest.register_craft({
			type = "cooking",
			output = "unifiedbricks:" .. DARKNESS[k] .. hue .. SATURATION[k] .. "_brick",
			recipe = "unifiedbricks:" .. DARKNESS[k] .. hue .. SATURATION[k] .. "_clay",
		})

	end
	
end

