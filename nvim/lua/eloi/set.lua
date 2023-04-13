-- Setup of the leader
vim.g.mapleader = " "

-- realtive line numbers and stuff
vim.opt.nu = true
vim.opt.relativenumber = true

-- 4 tab indenting ftw
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- No wrapping >:(
vim.opt.wrap = false

-- Good GUI colors ig?
vim.opt.termguicolors = true

-- For the lsp to not move the  code everytime it detects errors
vim.opt.signcolumn = 'yes'

-- For the files to be opened in UTF-8 encoding
vim.opt.fileencoding="utf-8"
