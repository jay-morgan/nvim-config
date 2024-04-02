vim.keymap.set("n", "C-c", function()
    require("treesitter-context").go_to_context(vim.v.count1)
end, { silent = true })

vim.cmd([[
      hi TreesitterContextLineNumberBottom gui=underline
      hi TreesitterContextBottom gui=underline
    ]])