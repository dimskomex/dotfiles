vim.pack.add({
	{ src = "https://github.com/DamianVCechov/hexview.nvim" }
})

require('hexview').setup({})
vim.keymap.set('n', '<leader>h', ':Hex<CR>')
vim.keymap.set('n', '<leader>H', ':UnHex<CR>')

