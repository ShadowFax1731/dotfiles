require('shadowfax')
vim.g.neovide_font_ligatures = true
vim.opt.guifont = "Fira Code:h18"

-- Use a line cursor in Insert mode with bright colors
vim.opt.guicursor = "n-v-c:ver25-Cursor,ve:ver25-Cursor,ci:ver25-Cursor,cr:hor20-Cursor,o:hor50-Cursor,i:ver25-Cursor"

-- Cursor colors
vim.cmd [[
  highlight Cursor guifg=black guibg=#00FF00 gui=bold     " Bright green cursor in Normal mode
  highlight lCursor guifg=black guibg=#FF0000 gui=bold    " Red cursor in Visual/Command modes
  highlight CursorLineNr guifg=#FFAA00 gui=bold           " Highlight current line number
  highlight TermCursor guifg=black guibg=#FFD700 gui=bold " Gold cursor in terminal mode
]]

vim.api.nvim_create_autocmd("FileType", {
    pattern = "sh", -- .env files are set to 'sh' filetype in your config
    callback = function()
        vim.opt.conceallevel = 0
    end,
})

require("luasnip").config.set_config({
    history = true,
    updateevents = "TextChanged,TextChangedI",
})

-- Load custom snippets
require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/snippets" })

vim.api.nvim_create_autocmd("FileType", {
    pattern = "markdown",
    callback = function()
        vim.opt_local.wrap = true      -- Soft wrap long lines
        vim.opt_local.linebreak = true -- Break only at word boundaries
        vim.opt_local.spell = true     -- Optional: spellcheck
        vim.opt_local.conceallevel = 2 -- Hide markdown formatting (*, _, etc.)
        vim.opt_local.concealcursor = "nc" -- Don't show formatting in normal/command mode
        vim.opt_local.textwidth = 0    -- Don't auto-insert line breaks
    end,
})
