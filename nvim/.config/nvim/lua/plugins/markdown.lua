vim.pack.add({
	{ src = "https://github.com/MeanderingProgrammer/render-markdown.nvim" },
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter" }, 	-- dependencies
	{ src = "https://github.com/echasnovski/mini.nvim" }, 			-- dependencies
	{ src = "https://github.com/iamcco/markdown-preview.nvim" },
})

vim.g.mkdp_filetypes = { "markdown" } -- Only enable for markdown files
vim.g.mkdp_auto_start = 0 -- Do not auto-start the preview when opening a markdown file
vim.g.mkdp_auto_close = 1 -- Auto-close the preview when leaving the markdown buffer
vim.g.mkdp_refresh_slow = 0 -- Disable slow refresh
vim.g.mkdp_command_for_global = 0 -- Do not allow the plugin to be used globally
vim.g.mkdp_open_to_the_world = 0 -- Do not allow external access to the preview server
vim.g.mkdp_browser = 'firefox' -- Use Firefox (ensure it's installed)
vim.g.mkdp_math_enabled = 1 -- Enable LaTeX math rendering
vim.g.mkdp_markdown_css = '' -- Use default markdown CSS
vim.g.mkdp_highlight_css = '' -- Use default syntax highlighting CSS
vim.g.mkdp_port = '' -- Use a random port for the preview server
vim.g.mkdp_page_title = '${name}' -- Set the page title to the filename
vim.g.mkdp_echo_preview_url = 1 -- Echo the preview URL in the command line
