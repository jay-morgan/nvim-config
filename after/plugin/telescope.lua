-- add file browser extention to telescope and keymap
require('telescope').load_extension 'file_browser'

vim.keymap.set('n', '<leader>f', vim.diagnostic.open_float, { desc = 'Open Telescope File Browser' })
vim.keymap.set('n', '<space>fb', function()
	require('telescope').extensions.file_browser.file_browser()
end, { desc = 'Open [B]rowser' })


-- add telescope search modes
local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>p', vim.diagnostic.open_float, { desc = 'Project search' })
vim.keymap.set('n', '<leader>pf', builtin.find_files, {desc = 'Search [F]iles'})
vim.keymap.set('n', '<leader>pg', builtin.git_files, {desc = 'Search [G]it files'})
vim.keymap.set('n', '<leader>pr', function()
	builtin.grep_string({ search = vim.fn.input('Grep > ') })
end, {desc = 'Search by G[R]ep'})

vim.keymap.set('n', '<leader>h', vim.diagnostic.open_float, { desc = 'Help' })
vim.keymap.set('n', '<leader>ht', builtin.help_tags, {desc = 'Help [T]ags'})
