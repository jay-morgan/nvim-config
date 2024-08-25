
vim.keymap.set("n", "<leader>n", function()
        vim.cmd(":Neotree toggle")
    end,
    { desc = "Toggle [N]eotree" })

require("neo-tree").setup()

    -- Function to open neo-tree for directories
    local function open_neo_tree_on_directory()
      local path = vim.fn.expand('%:p')
      if vim.fn.isdirectory(path) == 1 then
        vim.cmd("Neotree position=current dir=" .. path)
      end
    end

    -- Autocommand to check if opened path is a directory
    vim.api.nvim_create_autocmd({"VimEnter"}, {
      callback = function()
        vim.schedule(open_neo_tree_on_directory)
      end
    })

-- -- Function to check if neo-tree is the only window left
-- local function is_neo_tree_only()
--     local wins = vim.api.nvim_list_wins()
--     if #wins ~= 1 then
--         return false
--     end
--     local buf = vim.api.nvim_win_get_buf(wins[1])
--     return vim.bo[buf].filetype == "neo-tree"
-- end

-- -- Function to close neo-tree if it's the only window
-- local function close_neo_tree_if_last()
--     if is_neo_tree_only() then
--         vim.cmd("Neotree close")
--     end
-- end

-- -- Autocommand to run the check when closing a buffer
-- vim.api.nvim_create_autocmd("BufEnter", {
--     pattern = "*",
--     callback = function()
--         vim.defer_fn(close_neo_tree_if_last, 10)
--     end,
-- })
