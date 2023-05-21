
return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Filesystem navigation
    use {
        'nvim-tree/nvim-tree.lua',
        requires = 'nvim-tree/nvim-web-devicons'
    }

    -- [[ Theme ]]
    use { 'mhinz/vim-startify' }                       -- start screen
    use { 'DanilaMihailov/beacon.nvim' }               -- cursor jump
    use {
        'nvim-lualine/lualine.nvim',                     -- statusline
        requires = {'kyazdani42/nvim-web-devicons',
            opt = true}
    }
    use { 'Mofiqul/dracula.nvim' }                     -- colorscheme

    use {
        'nvim-telescope/telescope.nvim',                 -- fuzzy finder
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use { 'windwp/nvim-autopairs' }                   -- auto close parens
    use { 'Yggdroot/indentLine' }                      -- see indentation
    use { 'tpope/vim-fugitive' }                       -- git integration
end)

