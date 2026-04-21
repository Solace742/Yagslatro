return {
    descriptions = {
        Joker = {
            j_yags_eeegg = {
                name = 'EeEgg?',
                text = {
                    'Gives {C:money}$#1#{} for each',
                    'scoring {C:attention}Ace{}',
                    'Money scales by {C:attention}#2#',
                    'every trigger',
                    '{C:inactive}(Max of {C:money}$5{C:inactive})',
                    '{C:inactive}(Resets at end of round)'
                }
            },
            j_yags_exoplanet = {
                name = 'Exoplanet',
                text = {
                    'Gains {C:chips}+#4#{} Chips and {C:mult}+#3#{} Mult',
                    'per {C:attention}consecutive{} hand played',
                    'if played hand is',
                    'highest level {C:attention}poker hand',
                    '{C:inactive}(Currently {C:chips}+#2#{C:inactive} Chips',
                    '{C:inactive}and {C:mult}+#1#{C:inactive} Mult)'
                }
            },
            j_yags_mrcheese = {
                name = "Mr Cheese",
                text = {
                    "This joker gains",
                    "{X:mult,C:white}X#2#{} Mult when each",
                    "{C:attention}Jack{} is scored",
                    "{C:inactive}(Currently {X:mult,C:white}X#1#{C:inactive} Mult)",
                    "{C:green}#4# in #5#{} chance this",
                    "card {C:attention}moulds{} at end of round",
                },
            },
            j_yags_mrmould = {
                name = "Mr Mould",
                text = {
                    "{X:mult,C:white} X#1# {} Mult"
                },
            },
            j_yags_dreamer = {
                name = "Auric Dreamer",
                text = {
                    "After {C:attention}#2#{} rounds,",
                    "sell this card to",
                    "gain {C:dark_edition}+1{} joker slots",
                    "{C:inactive}(Currently {C:attention}#1#{C:inactive}/#2#)"
                },
            },
            j_yags_debit = {
                name = "Debit Card",
                text = {
                    "Every {C:attention}#3#{} booster packs",
                    "skipped, creates a",
                    "free {C:attention}Rare Tag{}",
                    "{C:inactive}(Currently {C:attention}#2#{C:inactive}/#3#)"
                },
            },
            j_yags_luck = {
                name = "Double or Nothing",
                text = {
                    "When a {C:attention}Lucky{} card",
                    "{C:green}successfully{} triggers,",
                    "retrigger playd card"
                },
            },
            j_yags_oops1 = {
                name = "Oops! All 1s",
                text = {
                    "Halves all {C:attention}listed",
                    "{C:green,E:1,S:1.1}probabilities",
                    "{C:inactive}(ex: {C:green}1 in 3{C:inactive} -> {C:green}1 in 6{C:inactive})",
                },
            },
        }
    }
}