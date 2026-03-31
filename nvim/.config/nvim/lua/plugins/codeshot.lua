vim.pack.add({
    { src = "https://github.com/SergioRibera/codeshot.nvim" }
})

require('codeshot').setup({
    output = os.getenv("HOME") .. "/Pictures/CodeShot_${year}-${month}-${date}_${time}.png",
    fonts = "Hack=12.0"
})

vim.keymap.set('v', '<leader>s', ":SSSelected<CR>")
vim.keymap.set('v', '<leader>S', ":SSFocused<CR>")
