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

end)
