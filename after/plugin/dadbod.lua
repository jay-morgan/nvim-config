vim.keymap.set("n", "<C-w>m", function()
    vim.cmd(":resize 1<CR>")
end, { noremap = true, desc = "Min out the height" })

vim.keymap.set("n", "<C-w>s", function()
    vim.cmd(":resize 10<CR>")
end, { noremap = true, desc = "[s]mall buffer query window" })

vim.keymap.set("n", "<leader>ua", function()
        vim.cmd(":DBUIAddConnection")
    end,
    { desc = "DB[u]I [a]dd connection" })

vim.keymap.set("n", "<leader>ur", function()
        vim.cmd(":DBUIFindBuffer")
    end,
    { desc = "DB[u]I [r]efresh" })

vim.keymap.set("n", "<leader>uh", function()
        vim.cmd(":DBUIHideNotifications")
    end,
    { desc = "DB[u]I [h]ide notifications" })

vim.keymap.set("n", "<leader>ul", function()
        vim.cmd(":DBUILastQueryInfo")
    end,
    { desc = "DB[u]I [l]ast query performance info" })

vim.keymap.set("n", "<leader>ur", function()
        vim.cmd(":DBUIRenameBuffer")
    end,
    { desc = "DB[u]I [r]ename buffer" })

vim.keymap.set("n", "<leader>ut", function()
        vim.cmd(":DBUIToggle")
    end,
    { desc = "DB[u]I [T]oggle" })
