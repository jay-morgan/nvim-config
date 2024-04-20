return {
    "rebelot/kanagawa.nvim",
    config = function()
        require("kanagawa").setup({
            terminalColors = true,
            transparent = true,
            background = {
                dark = "dragon", -- also can be "wave" !
                light = "lotus"
            },
        })
    end,
}
