vim.g.mapleader = ' '

-- Auto-require all Lua files in a directory
local function require_directory(dir)
    local config_path = vim.fn.stdpath('config') .. '/lua/' .. dir
    local files = vim.fn.glob(config_path .. '/*.lua', false, true)
    for _, file in ipairs(files) do
        local module = dir .. '.' .. vim.fn.fnamemodify(file, ':t:r')
        require(module)
    end
end

require_directory('plugins')
require_directory('keymaps')
require_directory('options')
