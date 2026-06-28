vim.pack.add({
	{ src = "https://github.com/reybits/scratch.nvim" },
})

vim.keymap.set("n", "<leader>sf", ':lua require("scratch").toggle()<CR>')
