vim.pack.add({
	{ src = "https://github.com/stevearc/conform.nvim" },
})

require("conform").setup({
	formatters_by_ft = {
		haskell = { "fourmolu" },
		lua = { "stylua" },
		python = { "black" },
	},

	format_on_save = {
		timeout_ms = 500,
		lsp_format = "never",
	},
})
