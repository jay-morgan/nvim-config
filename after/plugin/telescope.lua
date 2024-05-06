-- add file browser extention to telescope and keymap
require("telescope").load_extension "file_browser"

vim.keymap.set("n", "<space>fb", function()
	require("telescope").extensions.file_browser.file_browser()
end, { desc = "Open [F]ile [B]rowser" })

-- add telescope search modes
local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>pr", function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end, {desc = "Search by G[R]ep"})

vim.keymap.set("n", "<leader>?", vim.diagnostic.open_float, { desc = "[?] Help" })
vim.keymap.set("n", "<leader>?t", builtin.help_tags, {desc = "Help [T]ags"})

vim.keymap.set("n", "<leader>gc", require("telescope.builtin").git_bcommits, { desc = "[G]it [B]ranches" })
vim.keymap.set("n", "<leader>gb", require("telescope.builtin").git_branches, { desc = "[G]it [C]ommits" })

-- Git worktree bindings
-- <Enter> - switches to that worktree
-- <c-d> - deletes that worktree
-- <c-f> - toggles forcing of the next deletion

require("telescope").load_extension("git_worktree")

vim.keymap.set("n", "<leader>gw", function() require('telescope').extensions.git_worktree.git_worktrees() end, { desc = "[G]it [W]orktrees" })
vim.keymap.set("n", "<leader>gn", function() require('telescope').extensions.git_worktree.create_git_worktree() end, { desc = "[G]it [N]ew Worktree" })
