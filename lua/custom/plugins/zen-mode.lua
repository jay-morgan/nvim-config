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
      options = {
        enabled = false,
        ruler = false, -- disables the ruler text in the cmd line area
        showcmd = false, -- disables the command in the last line of the screen
        -- you may turn on/off statusline in zen mode by setting 'laststatus'
        -- statusline will be shown only if 'laststatus' == 3
        laststatus = 0, -- turn off the statusline in zen mode
      },
      -- twilight = { enabled = false }, --used for twilight plugin
      wezterm = {
        enabled = true,
        font = "13",
      },
      gitsigns = { enabled = true },
      tmux = { enabled = true },
    },
  },
}
