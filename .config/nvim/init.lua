-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Make line numbers default
vim.o.nu = true;

-- Make relative  line numbers default
vim.o.rnu = true;

-- Keep 10 lines below and above the cursor
vim.o.scrolloff = 10

-- Search case insensitive
vim.o.ignorecase = true

-- Show next match while searching
vim.o.incsearch = true

-- Use spaces instead of tabs
vim.o.expandtab = true

-- Tab size/number of spaces for tab.
vim.o.tabstop = 4

-- Number of spaces for indentation. (<< and >>)
vim.o.shiftwidth = 4

-- Don't wrap
vim.o.nowrap = true

-- " Map jk kj to Esc (only in insert mode)
-- inoremap jk <Esc>
-- inoremap kj <Esc>

-- Indentation
vim.o.smartindent = true
vim.o.cindent = true

-- Termguicolors
vim.o.termguicolors = true

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.o.clipboard = 'unnamedplus'
