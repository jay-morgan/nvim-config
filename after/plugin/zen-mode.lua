vim.api.nvim_set_hl(0, "ZenBg", { ctermbg = 0 })

-- vim.api.nvim_create_autocmd("VimEnter", {
--     pattern = "*",
--     callback = function()
--         require("zen-mode").toggle()
--     end
-- })

vim.keymap.set("n", "<leader>oz", function()
  require("zen-mode").toggle()
end, { noremap = true, silent = true, desc = "T[o]ggle [Z]enMode" })
vim.keymap.set("n", "<leader>ot", function()
  require("twilight").toggle()
end, { noremap = true, silent = true, desc = "T[o]ggle [T]wilight" })
