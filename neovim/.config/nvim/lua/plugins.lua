return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")

	-- Filesystem navigation
	use({
		"nvim-tree/nvim-tree.lua",
		requires = "nvim-tree/nvim-web-devicons",
	})

	-- [[ Theme ]]
	use({ "mhinz/vim-startify" }) -- start screen
	use({ "DanilaMihailov/beacon.nvim" }) -- cursor jump
	use({
		"nvim-lualine/lualine.nvim", -- statusline
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
	})
	use({ "Mofiqul/dracula.nvim" }) -- colorscheme

	use({
		"nvim-telescope/telescope.nvim", -- fuzzy finder
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	use({ "windwp/nvim-autopairs" }) -- auto close parens
	use({ "Yggdroot/indentLine" }) -- see indentation
	use({ "tpope/vim-fugitive" }) -- git integration

	-- cmp plugins
	use("hrsh7th/nvim-cmp") -- The completion plugin
	use("hrsh7th/cmp-buffer") -- buffer completions
	use("hrsh7th/cmp-path") -- path completions
	use("hrsh7th/cmp-cmdline") -- cmdline completions
	use("saadparwaiz1/cmp_luasnip") -- snippet completions
	use("hrsh7th/cmp-nvim-lsp")

	-- snippets
	use("L3MON4D3/LuaSnip") --snippet engine
	use("rafamadriz/friendly-snippets") -- a bunch of snippets to use

	-- LSP
	use("neovim/nvim-lspconfig") -- enable LSP
	use("williamboman/mason.nvim") -- simple to use language server installer
	use("williamboman/mason-lspconfig.nvim") -- simple to use language server installer
	use("jose-elias-alvarez/null-ls.nvim") -- LSP diagnostics and code actions

	-- rust
	use("simrat39/rust-tools.nvim")

	-- Syntax
	use("nvim-treesitter/nvim-treesitter")
	use("mrjones2014/nvim-ts-rainbow")

	-- Comment
	use("numToStr/Comment.nvim")

	-- LaTex
	use("lervag/vimtex")

	-- vim-slime for REPL
	use("jpalardy/vim-slime")

	-- tabline
	use("lewis6991/gitsigns.nvim")
	use("romgrk/barbar.nvim")

	-- coq
	use("whonore/Coqtail")

	-- lean
	use("Julian/lean.nvim")
end)
