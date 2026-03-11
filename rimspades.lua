--- STEAMODDED HEADER
--- MOD_NAME: Rimworld Spades
--- MOD_ID: rimspades
--- PREFIX: rimspades
--- MOD_AUTHOR: [PinkMaggit]
--- MOD_DESCRIPTION: Adds a Rimworld-themed skin to Spade cards
--- LOADER_VERSION_GEQ: 1.0.0
--- VERSION: 1.0.0
--- BADGE_COLOR: 000000

local atlas_key = "rimspades_atlas" -- Format: PREFIX_KEY
-- See end of file for notes
local atlas_path = "rimworld_lc.png" -- Filename for the image in the asset folder
local atlas_path_hc = "rimworld_hc.png" -- Filename for the high-contrast version of the texture, if existing

local suits = {"spades"} -- Which suits to replace
local ranks = {"Jack", "Queen", "King"} -- Which ranks to replace

local description = "Rimworld" -- English-language description, also used as default

-----------------------------------------------------------
-- You should only need to change things above this line --
-----------------------------------------------------------

SMODS.Atlas {
	key = "rimworld_LC",
	path = "rimworld_lc.png",
	px = 71,
	py = 95
}

SMODS.Atlas {
	key = "rimworld_HC",
	path = "rimworld_hc.png",
	px = 71,
	py = 95
}

SMODS.Atlas {
    key = "modicon",
    path = "modicon.png",
    px = 34,
    py = 34
}

SMODS.DeckSkin {
    key = 'rimworld',
    suit = 'Spades',
	loc_txt = "Rimworld",
    palettes = {
        {
            key = 'Low Contrast Colours',
            ranks = {'Jack', 'Queen', 'King'},
            display_ranks = {'King', 'Queen', 'Jack'},
            pos_style = 'collab',
            atlas = 'rimspades_rimworld_LC'
        },
        {
            key = 'High Contrast Colours',
            ranks = {'Jack', 'Queen', 'King'},
            display_ranks = {'King', 'Queen', 'Jack'},
            pos_style = 'collab',
            atlas = 'rimspades_rimworld_HC',
        }
    }
}