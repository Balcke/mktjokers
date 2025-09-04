SMODS.Joker{ --Eru Futate
    key = "erufutate",
    config = {
        extra = {
            Xmult = 22
        }
    },
    loc_txt = {
        ['name'] = '{f:5}双天 彗流',
        ['text'] = {
            '{X:mult,C:white}X22{} Mult if played',
            'hand contains a {C:attention}Pair{}'
        }
    },
    loc_vars = function (self, queue, card)
        queue[#queue+1] = {key = 'mktjk_erufutate_name', set = 'Other'}
    end,
    pos = {
        x = 1,
        y = 0
    },
    cost = 22,
    rarity = 4,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'jokers',

    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main  then
            if context.scoring_name == "Pair" then
                return {
                    Xmult = card.ability.extra.Xmult
                }
            end
        end
    end
}