return {
  "sindrets/diffview.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local diffview = require "diffview"
    diffview.setup()

    vim.keymap.set("n", "<leader>dv", "<cmd>DiffviewOpen<CR>", { desc = "Open Diffview" })
    vim.keymap.set("n", "<leader>dc", "<cmd>DiffviewClose<CR>", { desc = "Close Diffview" })
    vim.keymap.set("n", "<leader>dh", "<cmd>DiffviewFileHistory<CR>", { desc = "Diffview File History" })
    vim.keymap.set("n", "<leader>df", "<cmd>DiffviewFocusFiles<CR>", { desc = "Diffview Focus Files" })
    vim.keymap.set("n", "<leader>dt", "<cmd>DiffviewToggleFiles<CR>", { desc = "Diffview Toggle Files" })
    vim.keymap.set("n", "<leader>dr", "<cmd>DiffviewRefresh<CR>", { desc = "Diffview Refresh" })

    vim.keymap.set("n", "<leader>db", function()
      vim.ui.input({ prompt = "Branch name: " }, function(branch)
        if branch then
          vim.cmd("DiffviewOpen " .. branch)
        end
      end)
    end, { desc = "Diffview Open Branch" })
  end,
}
