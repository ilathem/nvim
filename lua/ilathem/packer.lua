-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- install the fuzzy finder from https://github.com/nvim-telescope/telescope.nvim
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.4',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use({
	  'rebelot/kanagawa.nvim',
	  config = function()
		vim.cmd('colorscheme kanagawa-wave')
	  end
  })


  use({ 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'} })

  use 'nvim-lua/plenary.nvim'

  use 'ThePrimeagen/harpoon'

  use 'mbbill/undotree'

  use({
	  "Pocco81/auto-save.nvim",
	  config = function()
		  require("auto-save").setup { }
	  end,
  })

  use 'tpope/vim-fugitive'

  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v3.x',
	  requires = {
		  --- Uncomment these if you want to manage LSP servers from neovim
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'L3MON4D3/LuaSnip'},
	  }
  }

  use 'eandrju/cellular-automaton.nvim'

  use 'windwp/nvim-ts-autotag'

  use {"ellisonleao/glow.nvim", config = function() require("glow").setup() end}

  use "airblade/vim-gitgutter"

  use "andymass/vim-matchup"

  use {
      'nmac427/guess-indent.nvim',
      config = function() require('guess-indent').setup {} end,
  }

  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }

  use {
    "lukas-reineke/indent-blankline.nvim",
    config = function()
      require("ibl").setup()
    end
  }

  use "jose-elias-alvarez/null-ls.nvim"

  use 'myusuf3/numbers.vim'

end)
