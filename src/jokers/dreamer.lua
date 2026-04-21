SMODS.Joker {
    key = 'dreamer',
    atlas = 'yagslatro',
    pos = {
        x = 1,
        y = 0
    },
    blueprint_compat = false,
    eternal_compat = false,
    rarity = 3,
    cost = 10,
    draw = function(self, card, layer)
        if card.config.center.discovered or card.bypass_discovery_center then
            card.children.center:draw_shader('voucher', nil, card.ARGS.send_to_shader)
        end
    end,
    config = {
        extra = {
            rounds = 0,
            total_rounds = 3
        }
    },
    loc_vars = function (self, info_queue, card)
        return {
            vars = {
                card.ability.extra.rounds,
                card.ability.extra.total_rounds
            }
        }
    end,
    calculate = function(self, card, context)
        if context.selling_self and (card.ability.extra.rounds >= card.ability.extra.total_rounds) and not context.blueprint then
            G.jokers.config.card_limit = G.jokers.config.card_limit + 1
                return {
                    message = "+1 Joker Slot!",
                    colour = G.C.DARK_EDITION
                }
        end
        if context.end_of_round and context.game_over == false and context.main_eval and not context.blueprint then
            card.ability.extra.rounds = card.ability.extra.rounds + 1
            if card.ability.extra.rounds == card.ability.extra.total_rounds then
                local eval = function(card) return not card.REMOVED end
                juice_card_until(card, eval, true)
            end
            return {
                message = (card.ability.extra.rounds < card.ability.extra.total_rounds) and
                    (card.ability.extra.rounds .. '/' .. card.ability.extra.total_rounds) or
                    localize('k_active_ex'),
                colour = G.C.FILTER
            }
        end
    end
}