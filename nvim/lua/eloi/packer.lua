-- This file can be loaded by calling `lua require('plugins')` from your init.vim
--vim.keymap.set('n', '<leader>pg', builtin.git_files, {})

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	-- Telescope
	use {
		'nvim-telescope/telescope.nvim',
		tag = '0.1.1',
		requires = {{'nvim-lua/plenary.nvim'}}
	}

	-- Gruvbox coloscheme
	use {
		"morhetz/gruvbox" 
	}

    -- Github colorscheme
    use ({ 'projekt0n/github-nvim-theme', tag = 'v0.0.7' })

    -- Solarized colorscheme
    use 'shaunsingh/solarized.nvim'

	-- Treesitter
	use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	
	-- Harpoon (to quickly jump between 4 files)
	use ('theprimeagen/harpoon')
	
	-- Vim-Fugitive (to check git status)
	use ('tpope/vim-fugitive')

	-- The Foking LSP
	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v1.x',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},             -- Required
			{'williamboman/mason.nvim'},           -- Optional
			{'williamboman/mason-lspconfig.nvim'}, -- Optional

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},         -- Required
			{'hrsh7th/cmp-nvim-lsp'},     -- Required
			{'hrsh7th/cmp-buffer'},       -- Optional
			{'hrsh7th/cmp-path'},         -- Optional
			{'saadparwaiz1/cmp_luasnip'}, -- Optional
			{'hrsh7th/cmp-nvim-lua'},     -- Optional

			-- Snippets
			{'L3MON4D3/LuaSnip'},             -- Required
			{'rafamadriz/friendly-snippets'}, -- Optional
		}

	}

    -- VimTeX
    use 'lervag/vimtex'

    -- LuaLine
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    -- VimTree
    use {
        'nvim-tree/nvim-tree.lua',
        requires = 'nvim-tree/nvim-web-devicons' -- optional, for file icons
        -- tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }

    -- BarBar
    use 'nvim-tree/nvim-web-devicons'
    use {'romgrk/barbar.nvim', requires = 'nvim-web-devicons'}

    -- GCC comment capabilities
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }

    -- GitSigns
    use {
        'lewis6991/gitsigns.nvim',
        -- tag = 'release' -- To use the latest release (do not use this if you run Neovim nightly or dev builds!)
    }

end)

