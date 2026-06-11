--- Cataclysm Cards Base
if PUTR.debug then print("=-- Loading Cataclysm Cards ...") end

--- Atlas
SMODS.Atlas {
    key = "CataclysmSprites",
    path = "cataclysmcards.png",
    px = 83,
    py = 103
}

--- Cataclysm Cards Consumable Type
SMODS.ConsumableType {
    key = "Cataclysm",

    primary_colour = G.C.WHITE,
    secondary_colour = HEX("3D2228"),

    collection_rows = {4, 3},
    shop_rate = 0,

    select_card = "consumeables"
};

-- Deluge
SMODS.Consumable {
    key = "deluge",
    set = "Cataclysm",

    display_size = { w = 83, h = 103 },
    atlas = "CataclysmSprites",
    pos = { x = 0, y = 0 },
}

-- Doomsday
SMODS.Consumable {
    key = "doomsday",
    set = "Cataclysm",

    display_size = { w = 83, h = 103 },
    atlas = "CataclysmSprites",
    pos = { x = 1, y = 0 },
}

-- Paroxysm
SMODS.Consumable {
    key = "paroxysm",
    set = "Cataclysm",

    display_size = { w = 83, h = 103 },
    atlas = "CataclysmSprites",
    pos = { x = 2, y = 0 },
}

-- Invasion
SMODS.Consumable {
    key = "invasion",
    set = "Cataclysm",

    display_size = { w = 83, h = 103 },
    atlas = "CataclysmSprites",
    pos = { x = 3, y = 0 },
}

-- Absolution
SMODS.Consumable {
    key = "absolution",
    set = "Cataclysm",

    display_size = { w = 83, h = 103 },
    atlas = "CataclysmSprites",
    pos = { x = 4, y = 0 },
}

-- Plague
SMODS.Consumable {
    key = "plague",
    set = "Cataclysm",

    display_size = { w = 83, h = 103 },
    atlas = "CataclysmSprites",
    pos = { x = 5, y = 0 },
}

-- Disaster
SMODS.Consumable {
    key = "disaster",
    set = "Cataclysm",

    display_size = { w = 83, h = 103 },
    atlas = "CataclysmSprites",
    pos = { x = 6, y = 0 },
}

-- Collision
SMODS.Consumable {
    key = "collision",
    set = "Cataclysm",

    display_size = { w = 83, h = 103 },
    atlas = "CataclysmSprites",
    pos = { x = 7, y = 0 },
}

-- Takeover
SMODS.Consumable {
    key = "takeover",
    set = "Cataclysm",

    display_size = { w = 83, h = 103 },
    atlas = "CataclysmSprites",
    pos = { x = 8, y = 0 },
}

-- Maleficence
SMODS.Consumable {
    key = "maleficence",
    set = "Cataclysm",

    display_size = { w = 83, h = 103 },
    atlas = "CataclysmSprites",
    pos = { x = 0, y = 1 },
}

-- Rip
SMODS.Consumable {
    key = "rip",
    set = "Cataclysm",

    display_size = { w = 83, h = 103 },
    atlas = "CataclysmSprites",
    pos = { x = 1, y = 1 },
}

-- Crunch
SMODS.Consumable {
    key = "crunch",
    set = "Cataclysm",

    display_size = { w = 83, h = 103 },
    atlas = "CataclysmSprites",
    pos = { x = 2, y = 1 },
}

-- Heat Death
SMODS.Consumable {
    key = "heat_death",
    set = "Cataclysm",

    display_size = { w = 83, h = 103 },
    atlas = "CataclysmSprites",
    pos = { x = 3, y = 1 },
}

-- Vacuum Decay
SMODS.Consumable {
    key = "vacuum_decay",
    set = "Cataclysm",

    display_size = { w = 83, h = 103 },
    atlas = "CataclysmSprites",
    pos = { x = 4, y = 1 },
}

-- Occulture
SMODS.Consumable {
    key = "occulture",
    set = "Cataclysm",

    display_size = { w = 83, h = 103 },
    atlas = "CataclysmSprites",
    pos = { x = 5, y = 1 },
}

-- Postexistence
SMODS.Consumable {
    key = "postexistence",
    set = "Cataclysm",

    display_size = { w = 83, h = 103 },
    atlas = "CataclysmSprites",
    pos = { x = 6, y = 1 },
}

-- Stagnancy
SMODS.Consumable {
    key = "stagnancy",
    set = "Cataclysm",

    display_size = { w = 83, h = 103 },
    atlas = "CataclysmSprites",
    pos = { x = 7, y = 1 },
}

-- Tempest
SMODS.Consumable {
    key = "tempest",
    set = "Cataclysm",

    display_size = { w = 83, h = 103 },
    atlas = "CataclysmSprites",
    pos = { x = 8, y = 1 },
}

-- Damnation
SMODS.Consumable {
    key = "damnation",
    set = "Cataclysm",

    display_size = { w = 83, h = 103 },
    atlas = "CataclysmSprites",
    pos = { x = 1, y = 2 },
}

-- Black Hole Sun
SMODS.Consumable {
    key = "black_hole_sun",
    set = "Cataclysm",

    display_size = { w = 83, h = 103 },
    atlas = "CataclysmSprites",
    pos = { x = 2, y = 2 },
}

-- Anathema
SMODS.Consumable {
    key = "anathema",
    set = "Cataclysm",

    display_size = { w = 83, h = 103 },
    atlas = "CataclysmSprites",
    pos = { x = 3, y = 2 },
}

--- End Debug
if PUTR.debug then print("=-- Successfully loaded!") end