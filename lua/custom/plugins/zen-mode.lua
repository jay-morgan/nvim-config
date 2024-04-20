return {
  "folke/zen-mode.nvim",
  opts = {
    window = {
      width = 0.60,
      options = {
        number = false,
        relativenumber = false,
        list = false,
      },
    },
    plugins = {
      twilight = { enabled = true },
      wezterm = {
        enabled = true,
        font = "17",
      },
      gitsigns = { enabled = true },
      tmux = { enabled = true },
    },
  },
}
