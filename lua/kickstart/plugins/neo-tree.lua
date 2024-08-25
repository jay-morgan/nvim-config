-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  "nvim-neo-tree/neo-tree.nvim",
  version = "*",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  config = function()
    vim.g.neo_tree_remove_legacy_commands = true

    -- Disable netrw
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    require("neo-tree").setup({
  cmd = "Neotree",
  keys = {
    { "\\", ":Neotree reveal<CR>", desc = "NeoTree reveal" },
  },
  opts = {
    close_if_last_window = true,
    enable_git_status = true,
    filesystem = {
      hijack_netrw_behavior = "open_current",
      filtered_items = {
        hide_dotfiles = false,
        hide_gitignored = false,
        hide_by_name = {
          --"node_modules"
        },
      },
      group_empty_dirs = true,
      follow_current_file = {
        enabled = true, -- This will find and focus the file in the active buffer every time the current file is changed while the tree is open.
        leave_dirs_open = false, -- `false` closes auto expanded dirs, such as with `:Neotree reveal`
      },
      window = {
        mappings = {
          ["\\"] = "close_window",
        },
      },
    },
  },
    })


vim.keymap.set("n", "<leader>n", function()
        vim.cmd(":Neotree toggle")
    end,
    { desc = "Toggle [N]eotree" })

    -- Function to open neo-tree for directories
    local function open_neo_tree_on_directory()
      local path = vim.fn.expand('%:p')
      if vim.fn.isdirectory(path) == 1 then
        vim.cmd("Neotree position=current dir=" .. path)
      end
    end

    -- Autocommand to check if opened path is a directory
    vim.api.nvim_create_autocmd({"VimEnter"}, {
      callback = function()
        vim.schedule(open_neo_tree_on_directory)
      end
    })

    -- Function to check if neo-tree is the only window left
local function is_neo_tree_only()
    local tabpage = vim.api.nvim_get_current_tabpage()
    local win_list = vim.api.nvim_tabpage_list_wins(tabpage)
    
    if #win_list ~= 1 then
        return false
    end
    
    local buf = vim.api.nvim_win_get_buf(win_list[1])
    local buf_name = vim.api.nvim_buf_get_name(buf)
    return string.match(buf_name, "neo%-tree filesystem") ~= nil
end

-- Function to close neo-tree if it's the only window
local function close_neo_tree_if_last()
    if is_neo_tree_only() then
        vim.cmd("quit")
    end
end

-- Autocommand group for our neo-tree related commands
local augroup = vim.api.nvim_create_augroup("NeoTreeAutoClose", { clear = true })

-- Autocommand to run the check when closing a buffer
vim.api.nvim_create_autocmd({"BufEnter", "WinEnter", "WinClosed"}, {
    group = augroup,
    pattern = "*",
    callback = function()
        vim.defer_fn(close_neo_tree_if_last, 50)
    end,
})

    end,
}
