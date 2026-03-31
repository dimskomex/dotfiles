vim.pack.add({
    {
        src = "https://github.com/ej-shafran/compile-mode.nvim",
    },
    {
        src = "https://github.com/nvim-lua/plenary.nvim",
    }
})

vim.g.compile_mode = {}
vim.keymap.set('n', '<leader>C', ':below Recompile<CR>')
vim.keymap.set('n', '<leader>c', ':below Compile<CR>')
