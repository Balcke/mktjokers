SMODS.Joker{ --Rentarou Aijou
    key = "rentarouaijou",
    config = {
        extra = {
            Xmult = 100
        }
    },
    loc_vars = function(self, info_queue, card)
        return { 
            vars = { card.ability.extra.Xmult } 
        }
    end,
    loc_txt = {
        ['name'] = 'Rentarou Aijou',
        ['text'] = {
            'Gives XMult equal to the amount',
            'of soulmates Rentarou has',
            'and revives you upon death in boss blinds.',
            '{C:inactive}(currently {}{X:mult,C:white}#1#X{}{C:inactive} mult){}'
        }
    },
    pos = {
        x = 6,
        y = 0
    },
    cost = 35,
    rarity = 4,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',
    in_pool = function (self, args)
        return false
    end,

    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main  then
                return {
                    Xmult = card.ability.extra.Xmult,
                    message = "Daisuki!"
                }
        end
        if context.end_of_round and not context.individual and not context.repetition and not context.blueprint and G.GAME.blind_on_deck == "Boss" then --blind_on_deck is the current blind that is either being fought or upcoming
                return {
                    saved = "k_saved_rentarou" --if you want this to use a custom message you will have to use localisation files and provide the localisation key here
                } 
        end
    end
}