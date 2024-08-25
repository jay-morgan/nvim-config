vim.api.nvim_set_keymap(
  "n",
  "<leader>jw",
  "<cmd>lua require(\"neotest\").run.run({ jestCommand = \"jest --watch \" })<cr>",
  { desc = "Start [J]est Test [W]atch mode" }
)
