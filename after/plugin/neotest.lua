vim.api.nvim_set_keymap("n", "<leader>Tw", "<cmd>lua require(\"neotest\").run.run({ jestCommand = \"jest --watch \" })<cr>",
    { desc = "Start Jest [T]est [W]atch mode" })
