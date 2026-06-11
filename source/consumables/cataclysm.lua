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

PUTR.Cataclysm = SMODS.Consumable:extend{
	object_type = "Consumable",
	set = "Colour",
    
    cost = 7, -- change ?
    display_size = { w = 83, h = 103 },
    atlas = "putr_CataclysmSprites",

	set_ability = function(self, card, initial, delay_sprites)
		card.ability.active = false
	end,

	can_use = function(self, card)
        if card.area == G.shop_jokers and G.shop_jokers then return false end
        if card.ability.active then
            if card.config.center.can_use_active then return card.config.center.can_use_active(self, card) end
        else
            if card.config.center.can_use_inactive then return card.config.center.can_use_inactive(self, card) end
        end
		return false
	end,

    use = function(self, card, area)
        if card.ability.active then
            if card.config.center.use_active then card.config.center.use_active(self, card) end
        else
            if card.config.center.use_inactive then card.config.center.use_inactive(self, card) end

            card.ability.active = true
            card.ability.rounds_remaining = card.ability.rounds
            G.consumeables:remove_card(card);
            G.putr_cataclysms:emplace(card);
            PUTR.shrink_card(card);
        end
	end,

    keep_on_use = function(self, card)
        return not card.ability.active
    end,
}

-- Deluge
PUTR.Cataclysm {
    key = "deluge",
    set = "Cataclysm",
    pos = { x = 0, y = 0 },
}

-- Doomsday
PUTR.Cataclysm {
    key = "doomsday",
    set = "Cataclysm",
    pos = { x = 1, y = 0 },
}

-- Paroxysm
PUTR.Cataclysm {
    key = "paroxysm",
    set = "Cataclysm",
    pos = { x = 2, y = 0 },
}

-- Invasion
PUTR.Cataclysm {
    key = "invasion",
    set = "Cataclysm",
    pos = { x = 3, y = 0 },

    config = { rounds = 2, },
    can_use_inactive = function(self, card)
        return true
    end,
    can_use_active = function(self, card)
        return true
    end,
    use_inactive = function(self, card)
        card.ability.stored_discards = G.GAME.round_resets.discards
        G.GAME.round_resets.discards = G.GAME.round_resets.discards - card.ability.stored_discards
        ease_discard(-card.ability.stored_discards)
    end,
    use_active = function(self, card)
        G.GAME.round_resets.discards = G.GAME.round_resets.discards + card.ability.stored_discards
        ease_discard(card.ability.stored_discards)

        G.consumeables.config.card_limit = G.consumeables.config.card_limit + 2
    end,
}

-- Absolution
PUTR.Cataclysm {
    key = "absolution",
    set = "Cataclysm",
    pos = { x = 4, y = 0 },
}

-- Plague
PUTR.Cataclysm {
    key = "plague",
    set = "Cataclysm",
    pos = { x = 5, y = 0 },
}

-- Disaster
PUTR.Cataclysm {
    key = "disaster",
    set = "Cataclysm",
    pos = { x = 6, y = 0 },
}

-- Collision
PUTR.Cataclysm {
    key = "collision",
    set = "Cataclysm",
    pos = { x = 7, y = 0 },
}

-- Takeover
PUTR.Cataclysm {
    key = "takeover",
    set = "Cataclysm",
    pos = { x = 8, y = 0 },
}

-- Maleficence
PUTR.Cataclysm {
    key = "maleficence",
    set = "Cataclysm",
    pos = { x = 0, y = 1 },
}

-- Rip
PUTR.Cataclysm {
    key = "rip",
    set = "Cataclysm",
    pos = { x = 1, y = 1 },
}

-- Crunch
PUTR.Cataclysm {
    key = "crunch",
    set = "Cataclysm",
    pos = { x = 2, y = 1 },
}

-- Heat Death
PUTR.Cataclysm {
    key = "heat_death",
    set = "Cataclysm",
    pos = { x = 3, y = 1 },
}

-- Vacuum Decay
PUTR.Cataclysm {
    key = "vacuum_decay",
    set = "Cataclysm",
    pos = { x = 4, y = 1 },
}

-- Occulture
PUTR.Cataclysm {
    key = "occulture",
    set = "Cataclysm",
    pos = { x = 5, y = 1 },
}

-- Postexistence
PUTR.Cataclysm {
    key = "postexistence",
    set = "Cataclysm",
    pos = { x = 6, y = 1 },
}

-- Stagnancy
PUTR.Cataclysm {
    key = "stagnancy",
    set = "Cataclysm",
    pos = { x = 7, y = 1 },
}

-- Tempest
PUTR.Cataclysm {
    key = "tempest",
    set = "Cataclysm",
    pos = { x = 8, y = 1 },
}

-- Damnation
PUTR.Cataclysm {
    key = "damnation",
    set = "Cataclysm",
    pos = { x = 1, y = 2 },
}

-- Black Hole Sun
PUTR.Cataclysm {
    key = "black_hole_sun",
    set = "Cataclysm",
    pos = { x = 2, y = 2 },
}

-- Anathema
PUTR.Cataclysm {
    key = "anathema",
    set = "Cataclysm",
    pos = { x = 3, y = 2 },
}



-- miracle display

PUTR.custom_card_areas = function(game)
	game.putr_cataclysms = CardArea(
		game.consumeables.T.x, game.consumeables.T.y - 0.6,
        game.consumeables.T.w, 0.5,
        { card_limit = 9999, type = 'joker', highlight_limit = 0, no_card_count = true, }
	)
end

local ca_rfh = CardArea.remove_from_highlighted
function CardArea:remove_from_highlighted(card, force)
    if card then
        ca_rfh(self, card, force)
    end
end

local ca_ath = CardArea.add_to_highlighted
function CardArea:add_to_highlighted(card, silent)
    if card and card.area ~= G.putr_cataclysms then
        ca_ath(self, card, silent)
    end
end

-- thank you alexi !!!

--- Shrinks a card
function PUTR.shrink_card(card, instant)
    if card.putr_scale_collision then return nil end
    card.putr_scale_collision = true

    if instant then
        card.T.scale = card.T.scale * 0.25
        card.VT.scale = card.VT.scale * 0.25
    else
        ease_value(card.T, "scale", -card.T.scale * (1 - 0.25), nil, "REAL", nil, 0.02, "outquad")
    end
end

function PUTR.unshrink_card(card, instant)
    if not card.putr_scale_collision then return nil end
    card.putr_scale_collision = false

    if instant then
        card.T.scale = card.T.scale / 0.25
        card.VT.scale = card.VT.scale / 0.25
    else
        ease_value(card.T, "scale", card.T.scale * 3, nil, "REAL", nil, 0.02, "outquad")
    end
end

local mju = Moveable.juice_up
function Moveable:juice_up(amount, rot_amt, ...)
    local ret = mju(self, amount, rot_amt, ...)

    if G.SETTINGS.reduced_motion then return end
    if self.putr_scale_collision then
        self.VT.scale = self.VT.scale * self.T.scale
    end
    return ret
end

local game_start_run = Game.start_run
function Game:start_run(args)
    game_start_run(self, args)
    if G.putr_cataclysms then
        if G.bcats_miracles and not G.GAME.putr_bcats_fix then
            G.GAME.putr_bcats_fix = true
            G.bcats_miracles.T.w = G.bcats_miracles.T.w * 0.45
            G.putr_cataclysms.T.w = G.putr_cataclysms.T.w * 0.45
            G.putr_cataclysms.T.x = G.putr_cataclysms.T.x + G.bcats_miracles.T.w * 0.55 / 0.45
        end

        for _, card in ipairs(G.putr_cataclysms.cards) do
            PUTR.shrink_card(card, true)
        end
    end
end

--- End Debug
if PUTR.debug then print("=-- Successfully loaded!") end