return {
    'nvim-telescope/telescope-file-browser.nvim',
    dependencies = {'nvim-telescope/telescope.nvim', 'nvim-lua/plenary.nvim'},
    config = function()
        require('telescope').setup({
            extensions = {
                file_browser = {
                    theme = 'ivy',
                    -- layout_config = {
                    -- 	width = 100,
                    -- 	height = 100,
                    -- },
                    hijack_netrw = true
                    -- hidden = true,
                }
            }
        })
    end
}
