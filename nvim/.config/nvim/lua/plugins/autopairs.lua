vim.pack.add({
	{ src = "https://github.com/windwp/nvim-autopairs" },
})

-- Autopairs 
require('nvim-autopairs').setup({
	disable_filetype = { "TelescopePrompt" , "vim" },
})

