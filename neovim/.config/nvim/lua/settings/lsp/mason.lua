-- Servers to install
-- ◍ golangci-lint  // keywords: go
-- ◍ beautysh  // keywords: bash, csh, ksh, sh, zsh
-- ◍ buildifier  // keywords: bazel
-- ◍ codelldb  // keywords: c, c++, rust
-- ◍ gofumpt  // keywords: go
-- ◍ golangci-lint-langserver golangci_lint_ls // keywords: go
-- ◍ gopls  // keywords: go
-- ◍ julia-lsp julials // keywords: julia
-- ◍ lua-language-server lua_ls // keywords: lua
-- ◍ pyright  // keywords: python
-- ◍ rust-analyzer rust_analyzer // keywords: rust

local servers = {
	"lua_ls",
	"pyright",
	"julials",
	"gopls",
	"golangci_lint_ls",
}

local settings = {
	ui = {
		border = "none",
		icons = {
			package_installed = "◍",
			package_pending = "◍",
			package_uninstalled = "◍",
		},
	},
	log_level = vim.log.levels.INFO,
	max_concurrent_installers = 4,
}

require("mason").setup(settings)
require("mason-lspconfig").setup({
	ensure_installed = servers,
	automatic_installation = true,
})

local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status_ok then
	return
end

local opts = {}

for _, server in pairs(servers) do
	opts = {
		on_attach = require("settings.lsp.handlers").on_attach,
		capabilities = require("settings.lsp.handlers").capabilities,
	}

	server = vim.split(server, "@")[1]

	local require_ok, conf_opts = pcall(require, "settings.lsp.settings." .. server)
	if require_ok then
		opts = vim.tbl_deep_extend("force", conf_opts, opts)
	end

	lspconfig[server].setup(opts)
end
