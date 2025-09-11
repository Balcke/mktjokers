SMODS.current_mod.description_loc_vars = function(self)
    return {
        text_colour = G.C.WHITE,
        background_colour = HEX("00000000"),
        scale = 1.1
    }
end

SMODS.Atlas {
    key = "milky_credits",
    px = 1656,
    py = 647,
    path = "logo_credit.png"
}

SMODS.Joker {
    key = "config_credits",
    atlas = "milky_credits",
    pos = {x = 0, y = 0},
    unlocked = true,
    discovered = true,
    no_collection = true,
    loc_txt = {
        name = "",
        text = {
            ""
        }
    },
    in_pool = function(self, args)
        return false
    end
}

SMODS.current_mod.custom_ui = function(mod_nodes)
    G.mktjk_logo_cardarea = CardArea(G.ROOM.T.x / 2, G.ROOM.T.y / 2, G.CARD_W, G.CARD_H, {type = "title", card_limit = 1})
    local logo_card = Card(G.mktjk_logo_cardarea.T.x, G.mktjk_logo_cardarea.T.x, G.CARD_W * 1.39 * 2.2, G.CARD_H * 0.4 * 2.2, G.P_CENTERS.j_mktjk_config_credits, G.P_CENTERS.j_mktjk_config_credits)
    logo_card.no_ui = true
    G.mktjk_logo_cardarea:emplace(logo_card)
    table.insert(mod_nodes, 2, {
        n = G.UIT.R,
        config = {align = "cm"},
        nodes = {
            {
                n = G.UIT.C,
                config = {align = "cm"},
                nodes = {
                    {
                        n = G.UIT.O,
                        config = {
                            object = G.mktjk_logo_cardarea
                        }
                    }
                }
            }
        }
    })
    table.insert(mod_nodes, {
        n = G.UIT.R,
        config = {align = "cm"},
        nodes = {
            {
                n = G.UIT.C,
                config = {align = "cm"},
                nodes = {
                    UIBox_button({
                        button = "mktjk_website",
                        label = {localize("b_mktjk_website")},
                        minw = 6
                    })
                }
            }
        }
    })
end

function G.FUNCS.mktjk_website()
    love.system.openURL("https://milkyway.moe")
end