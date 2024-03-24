-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- leader key
vim.g.mapleader = ","
vim.g.maplocalleader = ","

vim.opt.relativenumber = false
vim.o.background = "dark"

vim.opt.colorcolumn = "100"

-- set persistent undo for each file
vim.opt.undodir = "/Users/sazary/.cache/nvim/undodir"
vim.opt.undolevels = 1000 -- Maximum number of changes that can be undone
vim.opt.undoreload = 10000 -- Maximum number lines to save for undo on a buffer reload

vim.opt.joinspaces = false -- No double spaces with join

-- folding config for ufo
-- vim.o.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]
vim.o.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]
vim.o.foldcolumn = "1" -- '0' is not bad
vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
vim.o.foldlevelstart = 99
vim.o.foldenable = true
