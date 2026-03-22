vim.pack.add({
	{ src = "https://github.com/mason-org/mason.nvim" },
	{ src = "https://github.com/williamboman/mason-lspconfig.nvim" },
})

-- Mason:
require("mason").setup()
require("mason-lspconfig").setup({})
