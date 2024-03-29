return {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    config = function()
        require("dashboard").setup({
            theme = "hyper",
            shortcut_type = "number",
            config = {
                footer = {},
                week_header = {
                    enable = true,
                },
                project = { enable = true, limit = 5, icon = '󰏓 ', label = 'Recent Projects: ', action = 'Telescope find_files cwd=' },
                mru = { limit = 5, icon = ' ', label = 'Recent Files:', cwd_only = false },
                shortcut = {
                    {
                        icon = " ",
                        icon_hl = "@variable",
                        desc = "Files",
                        group = "Label",
                        action = "Telescope find_files",
                        key = "f",
                    },
                },
            },
        })
    end,
    dependencies = { { "nvim-tree/nvim-web-devicons" } }
}
