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
            j_yags_cheese = {
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
            j_yags_mould = {
                name = "Mr Mould",
                text = {
                    "{X:mult,C:white} X#1# {} Mult"
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