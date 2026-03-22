vim.pack.add({
	{ src = "https://github.com/nvim-lua/plenary.nvim" },
	{ src = "https://github.com/nvim-telescope/telescope.nvim" },
	{ src = "https://github.com/nvim-telescope/telescope-ui-select.nvim" }
})

require('telescope').setup({
	defaults = {
		mappings = {
			i = {
				['<C-u>'] = false,
				['<C-d>'] = false,
			},
		},
	},
	extensions = {
		['ui-select'] = {
			require('telescope.themes').get_dropdown()
		}
	}
})

pcall(require('telescope').load_extension, 'ui-select')

-- Telescope keymaps
vim.keymap.set('n', '<leader>pf', '<Cmd>Telescope find_files<CR>', { desc = 'Find files' })
vim.keymap.set('n', '<leader>pb', '<Cmd>Telescope buffers<CR>', { desc = 'Find buffers' })
vim.keymap.set('n', '<leader>ps', '<Cmd>Telescope grep_string<CR>', { desc = 'Grep string' })
vim.keymap.set('n', '<leader>pg', '<Cmd>Telescope live_grep<CR>', { desc = 'Live grep' })
vim.keymap.set('n', '<leader>ph', '<Cmd>Telescope help_tags<CR>', { desc = 'Help tags' })
vim.keymap.set('n', '<leader>pd', '<Cmd>Telescope diagnostics<CR>', { desc = 'Diagnostics' })
vim.keymap.set('n', '<leader>pr', '<Cmd>Telescope oldfiles<CR>', { desc = 'Recent files' })
