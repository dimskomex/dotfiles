vim.keymap.set({'n', 'v'}, ';', ':')
vim.keymap.set({'n', 'v'}, ':', ';')
vim.keymap.set({'n', 'v'}, 'j', 'gj')
vim.keymap.set({'n', 'v'}, 'k', 'gk')
vim.keymap.set({'n', 'v'}, '<C-d>', '<C-d>zz')
vim.keymap.set({'n', 'v'}, '<C-u>', '<C-u>zz')

vim.keymap.set({ 'n', 'x', 'v' }, '<leader>y', '"+y')
vim.keymap.set({ 'n', 'x', 'v' }, '<leader>d', '"+d')
vim.keymap.set({ 'n', 'x', 'v' }, '<leader>P', '"+P')
vim.keymap.set({ "n", "t" }, "<leader>t", "<Cmd>tabnew<CR>")
vim.keymap.set({ "n", "t" }, "<leader>x", "<Cmd>tabclose<CR>")

vim.keymap.set('v', '<Tab>', '>gv', { noremap = true, silent = true })
vim.keymap.set('v', '<S-Tab>', '<gv', { noremap = true, silent = true })

vim.keymap.set('n', '<leader>bd', '<Cmd>bdelete<CR>', { desc = 'Delete buffer' })

