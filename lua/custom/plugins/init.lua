local lazy = require('lazy').setup()

lazy.load({
    {
        "neomake/neomake",
        config = function()
            vim.cmd([[autocmd! BufWritePost,BufEnter * Neomake]])
        end,
        events = {'VimEnter', 'BufWinEnter'},
        commands = {'Neomake'}
    }
})

return {
    { dir = "plugins.nvim-autopairs" },
    { dir = "plugins.rose-pine" },
    { dir = "plugins.telescope-file-browser" },
    { dir = "plugins.neotest" },
    { dir = "plugins.melange" },
    { dir = "nvim-dap-vscode-js" },
    { dir = "nvim-treesitter-context" },
    { dir = "twilight" },
    { dir = "zen-mode" },
    { dir = "neomake" }
}
