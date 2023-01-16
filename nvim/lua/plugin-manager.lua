-- Packer Installation on first setup

local install_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
local install_plugins = false

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
	print('Installing packer...')
	local packer_url = 'https://github.com/wbthomason/packer.nvim'
	vim.fn.system({'git', 'clone', '--depth', '1', packer_url, install_path})
	print('Done.')

	vim.cmd('packadd packer.nvim')
	install_plugins = true
end

-- Plugin Manager (Where our plugins are installed)

require('packer').startup(function(use)

	-- INSTALL YOUR PLUGINS UNDER THIS LINE --

	use 'wbthomason/packer.nvim' -- Updates Packer


	use { 'ojroques/nvim-hardline', 
	require('hardline').setup {}}  -- Adds Powerline

	use { "catppuccin/nvim", as = "catppuccin" } -- Theme (I use mocha btw)

	use { 'echasnovski/mini.completion', 
	require('mini.completion').setup {}}  -- Completion system

	use 'chaimleib/vim-renpy' -- Vim plugin for Renpy

	use 'glepnir/dashboard-nvim'

	-- Adds file manager and explorer with icons :)

	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
			'nvim-tree/nvim-web-devicons', 
			require('nvim-web-devicons').setup {color_icons = true;	default = true;}
		},
		require("nvim-tree").setup {},
	}

	-- Telescope and its dependencies (Install ripgrep through your distro's package manager)

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		requires = {'nvim-lua/plenary.nvim'},
		}

	use 'nvim-treesitter/nvim-treesitter'

	use 'nvim-telescope/telescope-fzy-native.nvim'
	
	use {'nvim-treesitter/nvim-treesitter'}
	
	-------------------------------------------------------------------------------------------
	
	use 'Ostralyan/scribe.nvim'

    use{"petertriho/nvim-scrollbar",
		require("scrollbar").setup {}}


	if install_plugins then
		require('packer').sync()
	end
end)

if install_plugins then
	return
end


