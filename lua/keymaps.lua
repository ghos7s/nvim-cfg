vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>ga', ':Git add .<CR>', {})
vim.keymap.set('n', '<leader>gc', ':Git commit<CR>', {})
vim.keymap.set('n', '<leader>gp', ':Git push<CR>', {})
vim.keymap.set('n', '<leader>gh', ':Gitsigns preview_hunk<CR>', {})
vim.keymap.set('n', '<leader>gb', ':Gitsigns toggle_current_line_blame<CR>', {})
