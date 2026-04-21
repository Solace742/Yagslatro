SMODS.Joker {
    key = 'mrmould',
    atlas = 'yagslatro',
    pos = {
        x = 1,
        y = 2
    },
    config = {
        extra = {
            xmult = 1,
            xmult_mod = 0.1
        }
    },
    rarity = 2,
    cost = 6,
    in_pool = function(self, args)
    return false
    end,
    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra.xmult,
                card.ability.extra.xmult_mod,
                card.ability.extra.mult,
            }
        }
    end,
    calculate = function(self, card, context)
        if context.joker_main then
            return {
                xmult = card.ability.extra.xmult,
            }
        end
    end
}