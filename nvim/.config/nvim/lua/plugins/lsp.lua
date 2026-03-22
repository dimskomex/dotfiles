vim.pack.add({
    { src = "https://github.com/neovim/nvim-lspconfig" },
    { src = "https://github.com/mfussenegger/nvim-jdtls" }
})

-- Diagnostics configuration
vim.diagnostic.config({
    virtual_text = {
        prefix = '●',
        source = 'if_many',
    },
    float = {
        source = 'always',
        border = 'rounded',
    },
    signs = true,
    underline = true,
    update_in_insert = false,
    severity_sort = true,
})

-- Prolog LSP configuration with real-time diagnostics
vim.lsp.config['prolog_lsp'] = {
    cmd = {
        "swipl",
        "-g", "use_module(library(lsp_server)).",
        "-g", "lsp_server:main",
        "-t", "halt",
        "--", "stdio"
    };
    filetypes = { "prolog" };
    root_markers = { "pack.pl", ".git", "." };
    settings = {
        -- Prolog LSP specific settings
        prolog = {
            -- Enable real-time diagnostics
            diagnostics = {
                enable = true,
                -- Check on type instead of just on save
                trigger = "onType"  -- or "onSave" (default)
            }
        }
    };
    -- Ensure we get diagnostics in real-time
    init_options = {
        diagnosticSync = "live"  -- Try "live" for real-time updates
    };
}

vim.lsp.enable({
    'lua_ls', 'clangd', 'hls', 'bashls', 'pylsp', 'texlab', 'prolog_lsp', 'rust_analyzer'
})
