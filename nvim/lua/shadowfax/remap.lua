vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
-- ~/.config/nvim/init.lua
vim.api.nvim_set_keymap('n', '<leader>f', '<cmd>lua vim.lsp.buf.format()<CR>', { noremap = true, silent = true })

-- Move line up
vim.keymap.set('n', '<A-k>', ':m .-2<CR>==', { noremap = true, silent = true })

-- Move line down
vim.keymap.set('n', '<A-j>', ':m .+1<CR>==', { noremap = true, silent = true })

-- Move selected lines up in Visual mode
vim.keymap.set('v', '<A-k>', ":m '<-2<CR>gv=gv", { noremap = true, silent = true })

-- Move selected lines down in Visual mode
vim.keymap.set('v', '<A-j>', ":m '>+1<CR>gv=gv", { noremap = true, silent = true })


vim.keymap.set("n", "<leader>tw", function()
    vim.wo.wrap = not vim.wo.wrap
end, { desc = "Toggle Line Wrap" })
