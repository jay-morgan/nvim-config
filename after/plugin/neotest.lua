vim.api.nvim_set_keymap(
  "n",
  "<leader>tw",
  "<cmd>lua require(\"neotest\").run.run({ jestCommand = \"jest --watch \" })<cr>",
  { desc = "Start Jest [t]est [w]atch mode" }
)
