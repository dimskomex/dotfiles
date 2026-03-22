vim.pack.add({
    {
        src = "https://github.com/kylechui/nvim-surround",
        version = "v3.1.8",
        event = "VeryLazy",
    }
})

require("nvim-surround").setup({})
