local execute = vim.api.nvim_command
local fn = vim.fn
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  execute("!git clone https://github.com/wbthomason/packer.nvim " .. install_path)
  execute "packadd packer.nvim"
end
vim.cmd "autocmd BufwritePost plugins.lua PackerCompile"
require("packer").init { display = { auto_clean = false } }

return require("packer").startup(function(use)
  use "wbthomason/packer.nvim"
  use "McAuleyPenney/tidy.nvim"
  use "nvim-lua/popup.nvim"
  use "folke/zen-mode.nvim"
  use "haya14busa/incsearch.vim"
  -- use { "folke/trouble.nvim", requires = "kyazdani42/nvim-web-devicons" }
  -- Lua
  -- use {
  --   "folke/trouble.nvim",
  --   requires = "kyazdani42/nvim-web-devicons",
  --   config = function()
  --     require("trouble").setup {
  --       -- your configuration comes here
  --       -- or leave it empty to use the default settings
  --       -- refer to the configuration section below
  --     }
  --   end,
  -- }
  use "nvim-lua/lsp_extensions.nvim"
  use "neovim/nvim-lspconfig"
  use "glepnir/lspsaga.nvim"
  use "onsails/lspkind-nvim"
  use "kosayoda/nvim-lightbulb"
  use "kabouzeid/nvim-lspinstall"
  use "nvim-lua/lsp-status.nvim"
  use "tpope/vim-eunuch"
  use "mfussenegger/nvim-dap"
  use "andymass/vim-matchup"

  use {
    "SmiteshP/nvim-gps",
    requires = "nvim-treesitter/nvim-treesitter",
  }

  -- Treesitter
  use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }
  use "p00f/nvim-ts-rainbow"
  use "nvim-treesitter/playground"
  use "nvim-treesitter/completion-treesitter"
  use "JoosepAlviste/nvim-ts-context-commentstring"
  use "windwp/nvim-ts-autotag"

  use { "ckipp01/stylua-nvim" }

  --   use {
  --   "RRethy/vim-illuminate",
  --   config = function()
  --     vim.g.Illuminate_ftblacklist = vim.list_extend(vim.fn.deepcopy(g.special_buffers), { "markdown" })
  --   end,
  -- }

  use {
    "abecodes/tabout.nvim",
    wants = { "nvim-treesitter" },
    after = { "nvim-cmp", "copilot.vim" },
    config = function()
      require("tabout").setup {
        completion = false,
        ignore_beginning = false,
        exclude = {},
        tabouts = {
          { open = "'", close = "'" },
          { open = '"', close = '"' },
          { open = "`", close = "`" },
          { open = "(", close = ")" },
          { open = "[", close = "]" },
          { open = "{", close = "}" },
        },
      }
    end,
  }

  use "lukas-reineke/indent-blankline.nvim"
  -- use "windwp/nvim-autopairs"
  -- PAIRS
  use {
    "windwp/nvim-autopairs",
    after = "nvim-cmp",
    config = function()
      local npairs = require "nvim-autopairs"
      local cmp_autopairs = require "nvim-autopairs.completion.cmp"
      local Rule = require "nvim-autopairs.rule"
      npairs.setup {
        disable_filetype = { "TelescopePrompt", "octo" },
        --ignored_next_char = [[ [%w%%%{%(%[%'%'%.] ]]
        ignored_next_char = "[%w%.%(%{%[]",
      }
      npairs.add_rule(Rule("|", "", "ql"))
      local cmp = require "cmp"
      cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
    end,
  }

  use "glepnir/dashboard-nvim"
  use { "akinsho/bufferline.nvim", requires = "kyazdani42/nvim-web-devicons" }
  use "navarasu/onedark.nvim"
  use "ryanoasis/vim-devicons"
  use "kyazdani42/nvim-web-devicons"
  use {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup()
    end,
  }
  use "folke/lsp-colors.nvim"
  use { "folke/todo-comments.nvim", requires = "nvim-lua/plenary.nvim" }
  use "junegunn/rainbow_parentheses.vim"
  use { "lewis6991/gitsigns.nvim", requires = "nvim-lua/plenary.nvim" }
  use "f-person/git-blame.nvim"
  use "kdheepak/lazygit.nvim"
  use "sindrets/diffview.nvim"
  use "pwntester/octo.nvim"
  use "phaazon/hop.nvim"
  use "karb94/neoscroll.nvim"
  use "max397574/better-escape.nvim"
  use "numtostr/bufonly.nvim"
  use "caenrique/nvim-maximize-window-toggle"
  use "nacro90/numb.nvim"
  use { "kyazdani42/nvim-tree.lua", requires = "kyazdani42/nvim-web-devicons" }
  use "voldikss/vim-floaterm"
  use "terrortylor/nvim-comment"
  use {
    "numToStr/Comment.nvim",
    config = function()
      require("Comment").setup()
    end,
  }
  use "mhartington/formatter.nvim"
  -- SNIPPETS
  use {
    "L3MON4D3/LuaSnip",
    after = "nvim-cmp",
    requires = {
      { "rafamadriz/friendly-snippets" },
    },
    config = function()
      local ls = require "luasnip"
      ls.config.set_config {
        history = true,
        updateevents = "TextChanged,TextChangedI",
      }
      require("luasnip/loaders/from_vscode").lazy_load()
    end,
  }
  use "famiu/nvim-reload"
  use "nvim-lua/plenary.nvim"
  use { "nvim-telescope/telescope-fzf-native.nvim", run = "make" }
  use { "nvim-telescope/telescope.nvim", requires = { "nvim-lua/plenary.nvim" } }
  use "nvim-telescope/telescope-media-files.nvim"
  use "nvim-telescope/telescope-fzy-native.nvim"
  use "nvim-telescope/telescope-project.nvim"
  use "jvgrootveld/telescope-zoxide"
  use "AckslD/nvim-neoclip.lua"
  use "ThePrimeagen/harpoon"
  use {
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
  }
  use { "tzachar/cmp-tabnine", run = "./install.sh", requires = "hrsh7th/nvim-cmp" }
  use "github/copilot.vim"
  -- use {
  --   "github/copilot.vim",
  --   config = function()
  --     vim.g.copilot_no_tab_map = true
  --     vim.g.copilot_assume_mapped = true
  --     vim.g.copilot_tab_fallback = "<Plug>(Tabout)"
  --     vim.g.copilot_filetypes = {
  --       ["*"] = false,
  --       python = true,
  --       lua = true,
  --       go = true,
  --       ql = true,
  --       html = true,
  --       javascript = true,
  --       typescript = true,
  --     }
  --   end,
  -- }
  use { "scalameta/nvim-metals", requires = { "nvim-lua/plenary.nvim" } }
  use { "iamcco/markdown-preview.nvim", run = "cd app && npm install" }
  use { "ellisonleao/glow.nvim" }
  use { "nvim-lualine/lualine.nvim", requires = { "kyazdani42/nvim-web-devicons", opt = true } }
  use "folke/which-key.nvim"
  use "dkarter/bullets.vim"
end)
