-- Neovim Configuration File because no one is bothered to create a example init.lua.
-- NB!! You must have git installed so that Neovim can clone Git repos and install the plugins used in this init.lua file.

-- Vim Options
vim.opt.number = true
vim.opt.mouse = 'a'
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false
vim.opt.wrap = true
vim.opt.breakindent = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = false

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
-- vim.opt.termguicolors = true
vim.cmd.colorscheme "catppuccin-mocha"


-- Part where plugins are enabled


require('dashboard-nvim')
require('plugin-manager')
require('keymaps')
require('note-taking')
