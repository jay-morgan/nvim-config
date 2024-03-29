return {
    "nvim-neotest/neotest",
    dependencies = {
        "nvim-neotest/nvim-nio",
        "nvim-lua/plenary.nvim",
        "antoinemadec/FixCursorHold.nvim",
        "nvim-treesitter/nvim-treesitter",
        -- added to extend functionality
        "nvim-neotest/neotest-go",
        "nvim-neotest/neotest-jest",
        "lawrence-laz/neotest-zig",
        "olimorris/neotest-phpunit"
    },
    config = function()
        -- get neotest namespace (api call creates or returns namespace)
        local neotest_ns = vim.api.nvim_create_namespace("neotest")

        vim.diagnostic.config({
            virtual_text = {
                format = function(diagnostic)
                    local message =
                        diagnostic.message:gsub("\n", " "):gsub("\t", " "):gsub("%s+", " "):gsub("^%s+", "")
                    return message
                end,
            },
        }, neotest_ns)

        require("neotest").setup({
            adapters = {
                require("neotest-go")({
                    recursive_run = true
                }),
                require("neotest-jest")({
                    jestConfigFile = "custom.jest.config.ts",
                    env = { CI = true },
                    cwd = function(path)
                        return vim.fn.getcwd()
                    end,
                    jest_test_discovery = true,

                }),
                require("neotest-zig"),
                require("neotest-phpunit")
            },
            discovery = {
                enabled = false,
            },
        })
    end,
}
