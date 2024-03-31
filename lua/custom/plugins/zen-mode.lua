return {
    "folke/zen-mode.nvim",
    opts = {
        window = {
             width = .85,
            options = {
                number = false,
                relativenumber = false,
                list = false,
            },
        },
        plugins = {
            wezterm = {
                enabled = true,
                font = "17",
            },
            gitsigns = { enabled = true },
            tmux = { enabled = true },
        },
    }
}
