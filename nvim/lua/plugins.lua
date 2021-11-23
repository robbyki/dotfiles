local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
    execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
    execute 'packadd packer.nvim'
end

vim.cmd 'autocmd BufwritePost plugins.lua PackerCompile'

require('packer').init({display = {auto_clean = false}})

return require("packer").startup(function(use)

  -- packe itself
  use 'wbthomason/packer.nvim'

  use 'folke/zen-mode.nvim'

  use 'haya14busa/incsearch.vim'

  -- LSP
  use 'nvim-lua/lsp_extensions.nvim'
  use 'neovim/nvim-lspconfig'
  use 'glepnir/lspsaga.nvim'
  use 'onsails/lspkind-nvim'
  use 'kosayoda/nvim-lightbulb'
  use 'kabouzeid/nvim-lspinstall'
  use 'nvim-lua/lsp-status.nvim'
  -- use({
  --     "jose-elias-alvarez/null-ls.nvim",
  --     requires = {
  --         { "nvim-lua/plenary.nvim" },
  --         { "neovim/nvim-lspconfig" },
  --     },
  -- })
 
  use 'nvim-lua/popup.nvim'

  use 'tpope/vim-eunuch'

  -- Show Diagnostics
  use({ 'folke/trouble.nvim', requires = { 'kyazdani42/nvim-web-devicons' } })

  -- Debugging Protocol
  use 'mfussenegger/nvim-dap'

  -- Navigation
  use 'andymass/vim-matchup'

  -- Treesitter
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
  use 'p00f/nvim-ts-rainbow'
  use 'nvim-treesitter/playground'
  use 'nvim-treesitter/completion-treesitter'
  use 'JoosepAlviste/nvim-ts-context-commentstring'
  use 'windwp/nvim-ts-autotag'
  
  -- Coding
  use 'lukas-reineke/indent-blankline.nvim'
  use 'windwp/nvim-autopairs'
  use 'github/copilot.vim'

  -- Dashboard
  use 'glepnir/dashboard-nvim'

  -- Cosmetics
  use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}
  use 'navarasu/onedark.nvim'
  use 'kyazdani42/nvim-web-devicons'
  use 'ryanoasis/vim-devicons'
  use 'norcalli/nvim-colorizer.lua'
  use 'junegunn/rainbow_parentheses.vim'
  -- use({ 'romgrk/barbar.nvim', requires = {'kyazdani42/nvim-web-devicons'} })

  -- Git
  use({
      'lewis6991/gitsigns.nvim',
      requires = { "nvim-lua/plenary.nvim" },
  })
  use 'f-person/git-blame.nvim'
  use 'kdheepak/lazygit.nvim'
  use 'sindrets/diffview.nvim'
  use 'pwntester/octo.nvim'

  -- Syntax wow that was cool
  -- Movements
  use 'phaazon/hop.nvim'
  use 'karb94/neoscroll.nvim'
  use 'max397574/better-escape.nvim'
  use 'numtostr/bufonly.nvim'
  use 'caenrique/nvim-maximize-window-toggle'
  -- Peeking
  use 'nacro90/numb.nvim'

  -- File Explorer
  use { 'kyazdani42/nvim-tree.lua', requires = 'kyazdani42/nvim-web-devicons' }

  -- Terminal
  use 'voldikss/vim-floaterm'

  -- Commenting
  use 'terrortylor/nvim-comment'

  use 'famiu/nvim-reload'
  use 'nvim-lua/plenary.nvim'

  -- Finding Things 
  use {
  'nvim-telescope/telescope.nvim',
  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use 'nvim-telescope/telescope-media-files.nvim'
  use 'nvim-telescope/telescope-fzy-native.nvim'
  use 'nvim-telescope/telescope-project.nvim'
  use 'ThePrimeagen/harpoon'

  -- Completions
  use({
      "hrsh7th/nvim-cmp",
      requires = {
          { "hrsh7th/cmp-buffer" },
          { "hrsh7th/cmp-calc" },
          { "hrsh7th/cmp-nvim-lsp" },
          { "hrsh7th/cmp-nvim-lua" },
          { "hrsh7th/cmp-path" },
          { "hrsh7th/cmp-vsnip" },
          { "hrsh7th/vim-vsnip" },
      },
  })
  -- TabNine
  use {'tzachar/cmp-tabnine', run='./install.sh', requires = 'hrsh7th/nvim-cmp'}
  
  -- Language Specific
  use({ "scalameta/nvim-metals", requires = { "nvim-lua/plenary.nvim" } })
  use({'iamcco/markdown-preview.nvim', run = 'cd app && npm install'})
  use { 'ellisonleao/glow.nvim' }

  -- Statusline
  use({
      "nvim-lualine/lualine.nvim",
      requires = {
          "kyazdani42/nvim-web-devicons", opt = true
      },
  })

  -- Keymappings
  use 'folke/which-key.nvim'
  use 'dkarter/bullets.vim'
  -- use 'haya14busa/incsearch.vim'
  -- use 'haya14busa/incsearch-easymotion.vim'
  -- use 'haya14busa/incsearch-fuzzy.vim'

  --use({ "kevinhwang91/nvim-bqf" })
  --use({ "liuchengxu/vista.vim" })
  --use({ "machakann/vim-sandwich" })
  --use({ "ckipp01/stylua-nvim" })
  --use({ "sheerun/vim-polyglot" })
  --use({ "tpope/vim-fugitive" })
  --use({ "tpope/vim-vinegar" })
  --use({ "onsails/lspkind-nvim" })
  --use({ "wlangstroth/vim-racket" })
--  use({ "karb94/neoscroll.nvim" })
--  Close buffer
--  use 'moll/vim-bbye'

end)
