-- Map leader
vim.g.mapleader = " "

-- Plugin manager lazy
require("config.lazy")

-- Line numbers.
vim.opt.nu = true

-- Relative line numbers.
vim.opt.rnu = true

-- Keep 10 lines below and above the cursor
vim.opt.scrolloff = 10

-- Search only case senesitive when use uppercase letters
vim.opt.smartcase = true

-- Use spaces instead of tabs
vim.opt.expandtab = true

-- Tab size/number of spaces for tab.
vim.opt.tabstop = 4

-- Number of spaces for indentation. (<< and >>)
vim.opt.shiftwidth = 4

-- Warp on whole words
vim.opt.linebreak = true

-- Indentation
vim.opt.smartindent = true
vim.opt.cindent = true

-- set colorscheme
vim.opt.termguicolors = true
