return {
  "neomake/neomake",
  config = function()
    vim.cmd "call neomake#configure#automake('nrwi', 500)"

    vim.g.neomake_codescene_maker = {
      exe = "cs",
      args = { "check" },
      errorformat = "%tnfo: %f:%l: %m," .. "%tarn: %f:%l: %m",
    }

    vim.g.neomake_javascriptreact_enabled_makers = { "codescene" }
    vim.g.neomake_javascript_enabled_makers = { "codescene" }
    vim.g.neomake_typescript_enabled_makers = { "codescene" }
  end,
  events = { "VimEnter", "BufWinEnter", "BufWritePost" },
  commands = { "Neomake" },
}
