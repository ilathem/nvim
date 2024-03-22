-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- for file navigation
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.4',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- color scheme
  use({
	  'rebelot/kanagawa.nvim',
	  config = function()
		vim.cmd('colorscheme kanagawa-wave')
	  end
  })


  -- better syntax highlighting
  use({ 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'} })

  -- telescope dependency
  use 'nvim-lua/plenary.nvim'

  -- fast file switching
  use 'ThePrimeagen/harpoon'

  -- <leader>u 
  use 'mbbill/undotree'

  -- auto save
  use({
	  "Pocco81/auto-save.nvim",
	  config = function()
		  require("auto-save").setup { }
	  end,
  })

  -- git 
  use 'tpope/vim-fugitive'

  -- lsp support
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

  -- <leader>mr for fun animation
  use 'eandrju/cellular-automaton.nvim'

  use 'windwp/nvim-ts-autotag'

  -- markdown preview
  use {"ellisonleao/glow.nvim", config = function() require("glow").setup() end}

  -- show git stuff in the gutter
  use "airblade/vim-gitgutter"

  -- better % (works on words in addition to just characters)
  use "andymass/vim-matchup"

  -- autmatically detect indent level based on file
  use {
      'nmac427/guess-indent.nvim',
      config = function() require('guess-indent').setup {} end,
  }

  -- generate comments
  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }

  -- indentation guides
  use {
    "lukas-reineke/indent-blankline.nvim",
    config = function()
      require("ibl").setup()
    end
  }

  -- language server
  use "jose-elias-alvarez/null-ls.nvim"

  -- autmatically toggle line numbers
  use 'myusuf3/numbers.vim'

  -- html code generation
  use 'mattn/emmet-vim'

  -- prettier netrw
  -- use 'prichrd/netrw.nvim'

  -- dependency for netrw.nvim
  use 'nvim-tree/nvim-web-devicons'

  -- for jumping around text quicker https://github.com/ggandor/leap.nvim
  use 'ggandor/leap.nvim'
end)
