SMODS.Joker {
    key = 'debit',
    atlas = 'yagslatro',
    pos = {
        x = 0,
        y = 0
    },
    blueprint_compat = false,
    rarity = 2,
    cost = 6,
    config = {
        extra = {
            skips = 0,
            total_skips = 2
        }
    },
    loc_vars = function(self, info_queue, card)
         info_queue[#info_queue + 1] = { key = 'tag_rare', set = 'Tag' }
        return { vars = { localize { type = 'name_text', set = 'Tag', key = 'tag_rare' }, card.ability.extra.skips,
                card.ability.extra.total_skips } }
    end,
    calculate = function(self, card, context)
        if context.skipping_booster and not context.blueprint then
            if card.ability.extra.skips + 1 >= card.ability.extra.total_skips then
                card.ability.extra.skips = 0
                G.E_MANAGER:add_event(Event({
                func = function()
                    add_tag(Tag('tag_rare'))
                    play_sound('generic1', 0.9 + math.random() * 0.1, 0.8)
                    play_sound('holo1', 1.2 + math.random() * 0.1, 0.4)
                    return true
                end
                }))
            return {
                message = localize('k_active_ex'),
                colour = G.C.FILTER
            }, true
        else
            card.ability.extra.skips = card.ability.extra.skips + 1
            return {
                message = card.ability.extra.skips .. '/' .. card.ability.extra.total_skips,
                colour = G.C.FILTER
            }
            end
        end
    end,
}