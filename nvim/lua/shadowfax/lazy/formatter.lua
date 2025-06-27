return {
    "jose-elias-alvarez/null-ls.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    event = "BufReadPre", -- lazy load on file open
    config = function()
        local null_ls = require("null-ls")

        null_ls.setup({
            sources = {
                null_ls.builtins.formatting.prettier.with({
                    filetypes = {
                        "javascript",
                        "javascriptreact", -- .jsx
                        "typescript",
                        "typescriptreact", -- .tsx
                        "vue",
                        "css",
                        "scss",
                        "html",
                        "json",
                        "yaml",
                        "markdown",
                        "graphql",
                        "svelte",
                    },
                }),
                null_ls.builtins.formatting.black.with({
                    command = ".venv/bin/black", -- full path to your env tool
                }),
                null_ls.builtins.diagnostics.flake8,
            },
        })
    end,
}
