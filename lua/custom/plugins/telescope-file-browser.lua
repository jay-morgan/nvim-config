return {
    'nvim-telescope/telescope-file-browser.nvim',
    dependencies = { 'nvim-telescope/telescope.nvim', 'nvim-lua/plenary.nvim' },
    config = function()
        require('telescope').setup({
            extensions = {
                file_browser = {
                    theme = 'dropdown',
                    layout_config = {
                        width = 100,
                    },
                    hidden = true,
                    hijack_netrw = true
                }
            }
        })
    end
}
