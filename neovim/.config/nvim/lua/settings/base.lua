local g = vim.g
local o = vim.o
local cmd = vim.cmd

vim.keymap.set("i", "jk", "<Esc>", { noremap = true })

o.encoding = "UTF-8"

o.number = true
o.relativenumber = true

-- Allow mouse clicks
o.mouse = "a"

-- Show matching parens
o.showmatch = true

-- Highlight search
o.hlsearch = true

-- Incremental search
o.incsearch = true

-- Map <leader> to ','
g.mapleader = ","
g.maplocalleader = ","

-- Number of columns occupied by a tab
o.tabstop = 4

-- Set multiple spaces as tabstops
o.softtabstop = 4

-- Convert tabs to white spaces
o.expandtab = true

-- Width for autoindents
o.shiftwidth = 4

-- Indent new lines automatically
o.autoindent = true

-- Bash-like tab completions
o.wildmode = "longest,list"

-- 80 column border
cmd("set cc=80")

-- Set color for border highlight
cmd("highlight ColorColumn ctermbg=238")

-- Allow auto-indenting depending on file type
cmd("filetype plugin indent on")

-- Syntax highlighting
cmd("syntax on")

-- Use system clipboard with +
cmd("set clipboard+=unnamedplus")

cmd("filetype plugin on")

-- Highlight current cursorline
-- o.cursorline = true

-- Speed up scrolling in Vim
o.ttyfast = true
