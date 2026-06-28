vim.cmd([[set mouse=]])
vim.cmd([[set noswapfile]])
vim.cmd([[hi @lsp.type.number gui=italic]])
vim.cmd("set path+=**")
vim.cmd("set wildmenu")
vim.cmd("set nohlsearch")
vim.cmd("let g:netrw_banner=0")
vim.cmd("let g:netrw_browse_split=4")
vim.cmd("let g:netrw_altv=1")
vim.cmd("let g:netrw_liststyle=3")
vim.cmd("let g:did_install_default_menus = 1")

-- Window and display
vim.opt.winborder = "rounded"
vim.opt.wrap = false
vim.opt.cursorcolumn = false
vim.opt.termguicolors = true
vim.opt.number = true
vim.opt.signcolumn = "yes"
vim.opt.relativenumber = true
vim.opt.scrolloff = 8
vim.opt.colorcolumn = "80"
vim.opt.background = "light"

-- Search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Indentation
vim.opt.smartindent = true
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4

-- Splits
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Performance
vim.opt.undofile = true
vim.opt.updatetime = 250

vim.filetype.add({
	extension = {
		pl = "prolog",
		prolog = "prolog",
	},
})
