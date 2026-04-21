SMODS.Joker {
    key = 'luck',
    atlas = 'placeholders',
    pos = {
        x = 1,
        y = 0
    },
    rarity = 2,
    cost = 6,
    config = { extra = { repetitions = 1 } },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue + 1] = G.P_CENTERS.m_lucky

        return { vars = { card.ability.extra.repetitions } }
    end,
    calculate = function(self, card, context)
        if context.repetition and context.cardarea == G.play and context.other_card.lucky_trigger then
            return {
                repetitions = card.ability.extra.repetitions
            }
        end
    end,
}