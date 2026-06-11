if PUTR.debug then print("=-- Loading extras...") end

-- Credits "Jokers" (tooltips)
SMODS.Joker {
    key = "argel",
    no_collection = true,
    no_mod_badges = true,

    loc_txt = {
        name = {
            "{s:1.4}pangaea47",
            "{s:0.9}Artist"
        },
        text = {
            "Creator and Artist of",
            "{C:dark_edition,s:1.2}Putrescent",
            " ",
            "{C:inactive,s:0.8}... weird little spider thing"
        }
    },

    in_pool = function(self, args) return false end,
}

SMODS.Joker {
    key = "tomatose",
    no_collection = true,
    no_mod_badges = true,

    loc_txt = {
        name = {
            "{s:1.4}tomatose",
            "{s:0.9}Programmer"
        },
        text = {
            "{C:red,s:1.1}Doom{s:1.0} mechanic, etc.",
            " ",
            "First assigned programmer for",
            "{C:dark_edition}Putrescent{}"
        }
    },

    in_pool = function(self, args) return false end,
}

SMODS.Joker {
    key = "lizzie",
    no_collection = true,
    no_mod_badges = true,

    loc_txt = {
        name = {
            "{s:1.4}lanedarushpy",
            "{s:0.9}Programmer"
        },
        text = {
            "{C:red}Cataclysm Card{} effects,",
            "this {C:dark_edition}mod page{}, etc.",
            " ",
            "{C:inactive,s:0.8}Go play {C:diamonds,s:0.95}BalaCats{C:inactive,s:0.8} :3"
        }
    },

    in_pool = function(self, args) return false end,
}

SMODS.Joker {
    key = "mf",
    no_collection = true,
    no_mod_badges = true,

    loc_txt = {
        name = {
            "{s:1.4}notmario",
            "{s:0.9}Programmer"
        },
        text = {
            "{C:red}Cataclysm Card{} indicators",
            " ",
            "{C:inactive,s:0.8}the {C:red,s:0.95}Red Triangle",
            "{C:inactive,s:0.8}is at large..."
        }
    },

    in_pool = function(self, args) return false end,
}

-- Description localization
PUTR.description_loc_vars = function()
    return {
        text_colour = G.C.WHITE,
        background_colour = G.C.CLEAR,
        scale = 1
    }
end

if PUTR.debug then print("=-- Done loading extras!") end