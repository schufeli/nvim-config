--[[ init.lua ]]

-- LEADER
-- These keybindings need to be defined before the first /
-- is called; otherwise, it will default to "\"
vim.g.mapleader = ","
vim.g.localleader = "\\"

-- IMPORTS
require('vars')      -- Variables
require('opts')      -- Options
require('keys')      -- Keymaps
require('plug')      -- Plugins
require('line')      -- Lualine Config

-- PLUGINS
require('nvim-treesitter.configs').setup {
    auto_install = true,

    highlight = {
        enable = true
    }
}

require('nvim-autopairs').setup({
    disable_filetype = { "TelescopePrompt" , "vim" },
})

require('mason').setup()
require('mason-lspconfig').setup()

require('lspc') -- Load LSP Config
require('cmpc') -- Load CMP Config
