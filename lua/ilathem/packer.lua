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

  -- Use treesitter to auto close and auto rename html tag
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
  use 'prichrd/netrw.nvim'

  -- dependency for netrw.nvim
  use 'nvim-tree/nvim-web-devicons'

  -- for jumping around text quicker https://github.com/ggandor/leap.nvim
  use 'ggandor/leap.nvim'

  -- for changing surrounding stuff https://github.com/kylechui/nvim-surroundhttps://github.com/kylechui/nvim-surround
  -- examples...
  --     Old text                    Command         New text
  -- --------------------------------------------------------------------------------
  --     surr*ound_words             ysiw)           (surround_words)
  --     *make strings               ys$"            "make strings"
  --     [delete ar*ound me!]        ds]             delete around me!
  --     remove <b>HTML t*ags</b>    dst             remove HTML tags
  --     'change quot*es'            cs'"            "change quotes"
  --     <b>or tag* types</b>        csth1<CR>       <h1>or tag types</h1>
  --     delete(functi*on calls)     dsf             function calls
  use({
      "kylechui/nvim-surround",
      tag = "*", -- Use for stability; omit to use `main` branch for the latest features
      config = function()
          require("nvim-surround").setup({
              -- Configuration here, or leave empty to use defaults
          })
      end
  })

  -- code formatting
  use({
      "stevearc/conform.nvim",
      config = function()
          require("conform").setup()
      end,
  })

  use 'NvChad/nvim-colorizer.lua'

end)

