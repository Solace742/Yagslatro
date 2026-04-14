SMODS.Joker {
    key = 'cheese',
    atlas = 'placeholders',
    pos = {
        x = 1,
        y = 0
    },
    config = {
        extra = {
            xmult = 1,
            xmult_mod = 0.1,
            odds = 8
        }
    },
    rarity = 2,
    cost = 6,
    eternal_compat = false,
    loc_vars = function(self, info_queue, card)
        local numerator, denominator = SMODS.get_probability_vars(card, 1, card.ability.extra.odds, 'yags_cheese')
        return {
            vars = {
                card.ability.extra.xmult,
                card.ability.extra.xmult_mod,
                card.ability.extra.mult,
                numerator,
                denominator
            }
        }
    end,
    calculate = function(self, card, context)
        if context.end_of_round and context.game_over == false and context.main_eval and not context.blueprint then
            if SMODS.pseudorandom_probability(card, 'yags_cheese', 1, card.ability.extra.odds) then
                SMODS.destroy_cards(card, nil, nil, true)
                local new_joker = create_card('Joker', nil, nil, nil, nil, nil, 'j_yags_mould', 'cheese_spawn')
                new_joker:add_to_deck()
                G.jokers:emplace(new_joker)
                new_joker.ability.extra.xmult = card.ability.extra.xmult
                new_joker.ability.extra.xmult_mod = card.ability.extra.xmult_mod
                return {
                    message = "Mouldy!",
                    colour = G.C.ATTENTION,
                    message_card = card

                }
            else
                return {
                    message = localize('k_safe_ex')
                }
            end
        end
        if context.individual and context.cardarea == G.play and context.other_card:get_id() == 11 and not context.blueprint then
                card.ability.extra.xmult = card.ability.extra.xmult + card.ability.extra.xmult_mod
                return {
                    message = localize('k_upgrade_ex'), colour = G.C.MULT, message_card = card
                }
        end
    
        if context.joker_main then
            return {
                xmult = card.ability.extra.xmult,
            }
        end
    end
}