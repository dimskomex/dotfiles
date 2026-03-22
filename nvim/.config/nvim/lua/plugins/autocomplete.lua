vim.pack.add({
    { src = "https://github.com/Saghen/blink.cmp" }
})

-- Autocomplete
require("blink.cmp").setup({
    fuzzy = { implementation = "lua" },
    signature = { enabled = true },
    completion = {
        accept = { auto_brackets = { enabled = true } },
        documentation = { auto_show = true, auto_show_delay_ms = 500 },
        menu = {
            auto_show = true,
            draw = {
                treesitter = { "lsp" },
                columns = {
                    {
                        "kind_icon",
                        "label",
                        "label_description",
                        gap = 1
                    },
                    { "kind" },
                },
            },
        },
    },
    keymap = {
        ["<Tab>"] = { "accept", "fallback" },
    },
})

