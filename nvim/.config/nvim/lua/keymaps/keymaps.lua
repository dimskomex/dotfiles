vim.keymap.set('n', '<C-n>', ':vnew<CR>')
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
vim.api.nvim_set_keymap('t', '<Esc>', [[<C-\><C-n>]], {noremap = true, silent = true})

vim.keymap.set('v', '<Tab>', '>gv', { noremap = true, silent = true })
vim.keymap.set('v', '<S-Tab>', '<gv', { noremap = true, silent = true })
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

vim.keymap.set('n', '<leader>bd', '<Cmd>bdelete<CR>', { desc = 'Delete buffer' })
vim.keymap.set('n', '<leader>E', '<Cmd>e $MYVIMRC<CR>')
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')
vim.keymap.set("n", "J", "mzJ`z")

-- Sets the working directory to the current file's directory
vim.keymap.set("n", "cd", ":cd %:p:h<CR>:pwd<CR>", { desc = "Change directory to current file" })

