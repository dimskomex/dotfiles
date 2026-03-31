vim.pack.add({
    { src = "https://github.com/folke/which-key.nvim" }
})

require("which-key").setup({
    preset = "modern",
    delay = 300,
    icons = {
        breadcrumb = "»",
        separator = "➜",
        group = "+",
        mappings = true,
        keys = {
            Up = " ",
            Down = " ",
            Left = " ",
            Right = " ",
            C = "󰘴 ",
            M = "󰘵 ",
            D = "󰘳 ",
            S = "󰘶 ",
            CR = "󰌑 ",
            Esc = "󱊷 ",
            ScrollWheelDown = "󱕐 ",
            ScrollWheelUp = "󱕑 ",
            NL = "󰌑 ",
            BS = "󰁮 ",
            Space = "󱁐 ",
            Tab = "󰌒 ",
        },
    },
    win = {
        border = "rounded",
        padding = { 1, 2 },
        title = true,
        title_pos = "center",
        col = vim.o.columns,
        row = 0,
        width = 40,
        height = vim.o.lines - 3,
    },
    layout = {
        width = { min = 20, max = 35 },
        spacing = 3,
    },
    spec = {
        -- Groups
        { "<leader>p", group = "Telescope", icon = "" },
        { "<leader>b", group = "Buffer", icon = "" },

        -- Basic Navigation & Editing
        { ";", desc = "Command mode", mode = { "n", "v" } },
        { ":", desc = "Repeat f/t motion", mode = { "n", "v" } },
        { "j", desc = "Move down (visual line)", mode = { "n", "v" } },
        { "k", desc = "Move up (visual line)", mode = { "n", "v" } },
        { "<C-d>", desc = "Half page down + center", mode = { "n", "v" } },
        { "<C-u>", desc = "Half page up + center", mode = { "n", "v" } },

        -- Clipboard Operations
        { "<leader>y", desc = "Yank to system clipboard", mode = { "n", "x", "v" }, icon = "󰆏" },
        { "<leader>d", desc = "Delete to system clipboard", mode = { "n", "x", "v" }, icon = "" },
        { "<leader>P", desc = "Paste from system clipboard", mode = { "n", "x", "v" }, icon = "󰆒" },

        -- Tabs
        { "<leader>t", desc = "New tab", mode = { "n", "t" }, icon = "" },
        { "<leader>x", desc = "Close tab", mode = { "n", "t" }, icon = "" },

        -- Visual Mode Indentation
        { "<Tab>", desc = "Indent selection", mode = "v" },
        { "<S-Tab>", desc = "Unindent selection", mode = "v" },

        -- Buffer Management
        { "<leader>bd", desc = "Delete buffer", icon = "" },

        -- Config
        { "<leader>E", desc = "Edit Neovim config", icon = "" },

        -- Telescope
        { "<leader>pf", desc = "Find files", icon = "" },
        { "<leader>pb", desc = "Find buffers", icon = "" },
        { "<leader>ps", desc = "Grep string under cursor", icon = "" },
        { "<leader>pg", desc = "Live grep", icon = "" },
        { "<leader>ph", desc = "Help tags", icon = "󰋖" },
        { "<leader>pd", desc = "Diagnostics", icon = "" },
        { "<leader>pr", desc = "Recent files", icon = "" },

        -- Oil (File Explorer)
        { "<leader>e", desc = "Open file explorer (Oil)", icon = "" },

        -- Compile Mode
        { "<leader>c", desc = "Compile", icon = "" },
        { "<leader>C", desc = "Recompile", icon = "" },

        -- CodeShot (Screenshots)
        { "<leader>s", desc = "Screenshot selection", mode = "v", icon = "󰹑" },
        { "<leader>S", desc = "Screenshot focused", mode = "v", icon = "󰹑" },

        -- Hex View
        { "<leader>h", desc = "Hex view", icon = "" },
        { "<leader>H", desc = "Close hex view", icon = "" },

        -- LSP (built-in defaults, documented for reference)
        { "gd", desc = "Go to definition", icon = "" },
        { "gD", desc = "Go to declaration", icon = "" },
        { "gi", desc = "Go to implementation", icon = "" },
        { "gr", desc = "Go to references", icon = "" },
        { "K", desc = "Hover documentation", icon = "󰋖" },
        { "<C-k>", desc = "Signature help", mode = "i", icon = "" },

        -- Blink.cmp
        { "<Tab>", desc = "Accept completion", mode = "i" },
    },
})
