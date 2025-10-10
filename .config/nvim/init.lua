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

-- Case insensitive search and case sensitive search when searching for capital letters
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- set colorscheme
vim.opt.termguicolors = true
vim.cmd.colorscheme("tokyonight")

-- set os clipboard
vim.opt.clipboard = "unnamedplus"

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "Highlight when yanking (copying) text",
    group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end,
})

vim.lsp.enable('clangd')
