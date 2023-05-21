
require('nvim-tree').setup {}

-- Toggle nvim-tree
vim.keymap.set('n', 'n', [[:NvimTreeToggle]], {})


-- [[Theme]]
vim.opt.termguicolors = true
vim.cmd('colorscheme dracula')

require('lualine').setup {
    options = {
        theme = 'dracula-nvim'
    }
}

require('nvim-autopairs').setup {}

