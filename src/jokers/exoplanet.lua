SMODS.Joker {
    key = 'exoplanet',
    atlas = 'yagslatro',
    pos = {
        x = 0,
        y = 1
    },
    config = {
        extra = {mult = 0, chips = 0, mult_mod = 2, chip_mod = 10
        }
    },
    rarity = 2,
    cost = 6,
    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra.mult,
                card.ability.extra.chips,
                card.ability.extra.mult_mod,
                card.ability.extra.chip_mod
            }
        }
    end,
    calculate = function(self, card, context)
        if context.before and not context.blueprint then
            local is_highest = true
            local play_highest_hand = (G.GAME.hands[context.scoring_name].level)
            for handname, values in pairs(G.GAME.hands) do
                if handname ~= context.scoring_name and values.level > play_highest_hand and SMODS.is_poker_hand_visible(handname) then
                    is_highest = false
                    break
                end
            end
            if is_highest and play_highest_hand > 1 then
                card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_mod
                card.ability.extra.chips = card.ability.extra.chips + card.ability.extra.chip_mod
            else
                if card.ability.extra.mult > 0 or card.ability.extra.chips > 0 then
                    card.ability.extra.mult = 0
                    card.ability.extra.chips = 0
                    return {
                        message = localize('k_reset')
                    }
                end   
            end
        end
        if context.joker_main then
            return {
                chips = card.ability.extra.chips,
                mult = card.ability.extra.mult
            }
        end
    end
}
