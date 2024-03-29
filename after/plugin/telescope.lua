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
