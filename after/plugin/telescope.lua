-- add file browser extention to telescope and keymap
require("telescope").load_extension "file_browser"

vim.keymap.set("n", "<space>fb", function()
	require("telescope").extensions.file_browser.file_browser()
end, { desc = "Open File [B]rowser" })

-- add telescope search modes
local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>*", builtin.help_tags, {desc = "Help Tags"})


vim.keymap.set("n", "<leader>gb", require("telescope.builtin").git_bcommits, { desc = "Git [B]ranches" })
vim.keymap.set("n", "<leader>gc", require("telescope.builtin").git_branches, { desc = "Git [C]ommits" })


-- Git worktree bindings
-- <Enter> - switches to that worktree
-- <c-d> - deletes that worktree
-- <c-f> - toggles forcing of the next deletion
require("telescope").load_extension("git_worktree")
vim.keymap.set("n", "<leader>gw", function() require('telescope').extensions.git_worktree.git_worktrees() end, { desc = "Git [W]orktrees" })
vim.keymap.set("n", "<leader>gn", function() require('telescope').extensions.git_worktree.create_git_worktree() end, { desc = "Git [N]ew Worktree" })
