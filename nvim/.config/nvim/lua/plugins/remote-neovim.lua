-- Add the plugins to the session
vim.pack.add({
	{
		src = "https://github.com/amitds1997/remote-nvim.nvim",
		version = "v0.3.12"
	},
	{ src = "https://github.com/nvim-lua/plenary.nvim" },
	{ src = "https://github.com/MunifTanjim/nui.nvim" },
	{ src = "https://github.com/nvim-telescope/telescope.nvim" } -- Use the main repo, not the fork
})

-- Now configure remote-nvim
require("remote-nvim").setup({
	remote = {
		copy_dirs = {
			data = {
				base = vim.fn.stdpath("data"),
				dirs = { "pack" },
				compression = {
					enabled = true,
					additional_opts = { "--exclude-vcs" },
				},
			},
		},
	},
})
