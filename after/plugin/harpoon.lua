local harpoon = require("harpoon")

harpoon:setup()

vim.keymap.set("n", "<C-h>", function() harpoon:list():append() end, {desc = "Harpoon to list"})
vim.keymap.set("n", "<leader>ha", function() harpoon:list():append() end, {desc = "[H]arpoon [A]ppend to list"})


vim.keymap.set("n", "<C-1>", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<C-2>", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<C-3>", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<C-4>", function() harpoon:list():select(4) end)

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<C-[>", function() harpoon:list():prev() end)
vim.keymap.set("n", "<C-]>", function() harpoon:list():next() end)

-- basic telescope configuration
local conf = require("telescope.config").values
local function toggle_telescope(harpoon_files)
    local file_paths = {}
    for _, item in ipairs(harpoon_files.items) do
        table.insert(file_paths, item.value)
    end

    require("telescope.pickers").new({}, {
        prompt_title = "Harpoon",
        finder = require("telescope.finders").new_table({
            results = file_paths,
        }),
        previewer = conf.file_previewer({}),
        sorter = conf.generic_sorter({}),
    }):find()
end

-- Use Telescope instead of Harpoon UI
-- vim.keymap.set("n", "<C-r>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "Open [H]arpoon [L]ist" })
-- vim.keymap.set("n", "<leader>rl>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "Open [H]arpoon [L]ist" })


vim.keymap.set("n", "<C-l>", function() toggle_telescope(harpoon:list()) end,
    { desc = "Open Harpoon list" })
vim.keymap.set("n", "<leader>hl", function() toggle_telescope(harpoon:list()) end,
    { desc = "[H]arpoon open [L]ist" })

-- NOTE Deafults
-- settings = {
--     settings = {
--     save_on_toggle = false,
--     sync_on_ui_close = false,
--     key = function()
--         return vim.loop.cwd()
--     end,
-- },

-- Configure splits for Harpoon
-- harpoon:extend({
--     UI_CREATE = function(cx)
--         vim.keymap.set("n", "<C-v>", function()
--             harpoon.ui:select_menu_item({ vsplit = true })
--         end, { buffer = cx.bufnr })

--         vim.keymap.set("n", "<C-x>", function()
--             harpoon.ui:select_menu_item({ split = true })
--         end, { buffer = cx.bufnr })

--         vim.keymap.set("n", "<C-t>", function()
--             harpoon.ui:select_menu_item({ tabedit = true })
--         end, { buffer = cx.bufnr })
--     end,
-- })
