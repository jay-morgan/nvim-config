vim.api.nvim_set_hl(0, "ZenBg", { ctermbg = 0 })

vim.api.nvim_create_autocmd("VimEnter", {
    pattern = "*",
    callback = function()
        require("zen-mode").toggle()
    end
})