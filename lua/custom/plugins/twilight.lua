return {
    "folke/twilight.nvim",
    opts = {
        dimming = {
            alpha = 0.25, -- amount of dimming
            -- we try to get the foreground from the highlight groups or fallback color
            color = { "NONE", "#ffffff" },
            term_bg = "NONE", -- if guibg=NONE, this will be used to calculate text color
            inactive = false, -- when true, other windows will be fully dimmed (unless they contain the same buffer)
        },
    },
    config = function()
        require("twilight").enable()
    end
}
