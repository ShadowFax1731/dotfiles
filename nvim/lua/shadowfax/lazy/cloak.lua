return {
    "jose-elias-alvarez/null-ls.nvim",
    config = function()
        require("null-ls").setup({
            -- Add your null-ls sources here (e.g., formatting, diagnostics, etc.)
            sources = {
                require("null-ls").builtins.formatting.prettier,
                require("null-ls").builtins.diagnostics.eslint,
            },
        })
    end
}

