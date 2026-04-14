SMODS.Joker {
    key = 'cheese',
    atlas = 'placeholders',
    pos = {
        x = 1,
        y = 0
    },
    config = {
        extra = {
            Xmult = 1,
            Xmult_mod = 0.2
        }
    },
    rarity = 2,
    cost = 6,
    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra.Xmult,
                card.ability.extra.Xmult_mod
            }
        }
    end,
    calculate = function(self, card, context)
        
        if context.individual and context.cardarea == G.play and context.other_card:get_id() == 11 and not context.blueprint then
                card.ability.extra.Xmult = card.ability.extra.Xmult + card.ability.extra.Xmult_mod
                return {
                    message = localize('k_upgrade_ex'),
                colour = G.C.MULT,
                message_card = card
                }
        end
        if context.joker.main then
            return {
                Xmult = card.ability.extra.Xmult
            }
        end
    end
}