-- [[ Setting options ]]
-- See `:help vim.opt`
-- NOTE: You can change these options as you wish!
--  For more options, you can see `:help option-list`

-- Set to true if you have a Nerd Font installed
vim.g.have_nerd_font = true

-- Make line numbers default
vim.opt.number = true
-- You can also add relative line numbers, to help with jumping.
--  Experiment for yourself to see if you like it!
vim.opt.relativenumber = true

-- Enable mouse mode, can be useful for resizing splits for example!
vim.opt.mouse = 'a'

-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.opt.clipboard = 'unnamedplus'

-- Enable break indent
vim.opt.breakindent = true

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'

-- Decrease update time
vim.opt.updatetime = 250

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
vim.opt.timeoutlen = 300

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
-- vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
-- NOTE Also can add end of line, helpful for whitespace languages
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣', eol = '↲' }

-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

-- custom
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smarttab = true
vim.opt.autoindent = true

-- GIT WORKTREE @TODO: test
-- set up git worktree in telescope
--require("telescope").load_extension("git_worktree")
-- Keybinding to -create a worktree
-- vim.api.nvim_set_keymap('n', '<leader>wc', [[:lua require("git-worktree").create_worktree()<CR>]],
--  { noremap = true, silent = true })
-- Keybinding to switch to an existing worktree
-- vim.api.nvim_set_keymap('n', '<leader>ws', [[:lua require("git-worktree").switch_worktree()<CR>]],
--  { noremap = true, silent = true })
-- Keybinding to delete an existing worktree
--vim.api.nvim_set_keymap('n', '<leader>wd', [[:lua require("git-worktree").delete_worktree()<CR>]],
-- { noremap = true, silent = true })

-- vim: ts=2 sts=2 sw=2 et
