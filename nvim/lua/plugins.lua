vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  })
end
vim.api.nvim_command("packadd packer.nvim")

function get_setup(name)
  return string.format('require("setup/%s")', name)
end

return require("packer").startup({
  function(use)
    -- Packer can manage itself
    use("wbthomason/packer.nvim")
    use({ "takac/vim-hardtime" })
    use({ "ptzz/lf.vim" })
    use({ "nathom/filetype.nvim", config = get_setup("filetype") })
    use({ "EdenEast/nightfox.nvim", config = get_setup("nightfox") })
    use({ "kyazdani42/nvim-web-devicons" })
    use({
      "nvim-lualine/lualine.nvim",
      config = get_setup("statusline"),
      event = "VimEnter",
      requires = { "kyazdani42/nvim-web-devicons", opt = true },
    })
    use({
      "norcalli/nvim-colorizer.lua",
      event = "BufReadPre",
      config = get_setup("colorizer"),
    })
    use({ "nvim-lua/popup.nvim" })
    use({ "haya14busa/incsearch.vim" })
    use({ "nvim-lua/lsp_extensions.nvim" })
    use({ "glepnir/lspsaga.nvim" })
    use({ "onsails/lspkind-nvim" })
    use({ "kosayoda/nvim-lightbulb" })
    use({ "nvim-lua/lsp-status.nvim" })
    use({ "wfxr/minimap.vim" })
    use({ "tpope/vim-eunuch" })
    use({ "mfussenegger/nvim-dap" })
    use({ "andymass/vim-matchup" })
    use({ "yuezk/vim-js" })
    use({ "maxmellon/vim-jsx-pretty" })

    -- Treesitter
    -- use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }
    use("nvim-treesitter/playground")
    use("nvim-treesitter/completion-treesitter")
    use("JoosepAlviste/nvim-ts-context-commentstring")
    use("windwp/nvim-ts-autotag")
    use({
      "nvim-treesitter/nvim-treesitter",
      config = get_setup("treesitter"),
      run = ":TSUpdate",
    })
    use("nvim-treesitter/nvim-treesitter-textobjects")

    use({
      "windwp/nvim-autopairs",
      after = "nvim-cmp",
      config = get_setup("autopairs"),
    })
    use({
      "hrsh7th/nvim-cmp",
      requires = {
        { "hrsh7th/cmp-nvim-lsp" },
        { "hrsh7th/cmp-nvim-lua" },
        { "hrsh7th/cmp-buffer" },
        { "hrsh7th/cmp-path" },
        { "hrsh7th/cmp-cmdline" },
        { "hrsh7th/vim-vsnip" },
        { "hrsh7th/cmp-vsnip" },
        { "hrsh7th/vim-vsnip-integ" },
        { "f3fora/cmp-spell", { "hrsh7th/cmp-calc" }, { "hrsh7th/cmp-emoji" } },
      },
      config = get_setup("cmp"),
    })
    use({ "kyazdani42/nvim-tree.lua", config = get_setup("tree") })
    use({
      "lewis6991/gitsigns.nvim",
      requires = { "nvim-lua/plenary.nvim" },
      event = "BufReadPre",
      config = get_setup("gitsigns"),
    })
    use("p00f/nvim-ts-rainbow")
    --use({ "jose-elias-alvarez/null-ls.nvim", config = get_setup("null-ls") })
    use({ "neovim/nvim-lspconfig", config = get_setup("lsp") })
    use({
      "numToStr/Comment.nvim",
      opt = true,
      keys = { "gc", "gcc" },
      config = get_setup("comment"),
    })
    use({
      "phaazon/hop.nvim",
      event = "BufReadPre",
      config = get_setup("hop"),
    })
    use({ "Shatur/neovim-session-manager", config = get_setup("session") })
    use({ "filipdutescu/renamer.nvim", config = get_setup("renamer") })
    use({ "luukvbaal/stabilize.nvim", config = get_setup("stabilize") })
    use({
      "simrat39/symbols-outline.nvim",
      cmd = { "SymbolsOutline" },
      setup = get_setup("outline"),
    })
    use({ "ckipp01/stylua-nvim" })
    use({ "lukas-reineke/indent-blankline.nvim" })
    -- use({ "glepnir/dashboard-nvim", config = get_setup("dashboard") })
    use({ "goolord/alpha-nvim", config = get_setup("alpha") })
    use({ "ryanoasis/vim-devicons" })
    use({ "folke/lsp-colors.nvim" })
    use({ "junegunn/rainbow_parentheses.vim" })
    use({ "f-person/git-blame.nvim" })
    use({ "kdheepak/lazygit.nvim" })
    use({ "sindrets/diffview.nvim" })
    use({ "pwntester/octo.nvim" })
    use({ "karb94/neoscroll.nvim", config = get_setup("neoscroll") })
    use({ "numtostr/bufonly.nvim" })
    use({ "caenrique/nvim-maximize-window-toggle" })
    use({ "nacro90/numb.nvim" })
    use({ "voldikss/vim-floaterm" })
    use({ "akinsho/bufferline.nvim", requires = { "kyazdani42/nvim-web-devicons" } })
    use({
      "folke/todo-comments.nvim",
      requires = { "nvim-lua/plenary.nvim" },
      config = get_setup("todo-comments"),
    })
    use({
      "nvim-telescope/telescope.nvim",
      module = "telescope",
      cmd = "Telescope",
      requires = {
        { "nvim-lua/popup.nvim" },
        { "nvim-lua/plenary.nvim" },
        { "nvim-telescope/telescope-fzf-native.nvim", run = "make" },
      },
      config = get_setup("telescope"),
    })
    use({ "nvim-telescope/telescope-file-browser.nvim" })
    use({ "nvim-telescope/telescope-media-files.nvim" })
    use({ "nvim-telescope/telescope-project.nvim" })
    use({ "jvgrootveld/telescope-zoxide" })
    use({ "nvim-lua/plenary.nvim" })
    -- use({
    --   "AckslD/nvim-neoclip.lua",
    --   config = function()
    --     require("neoclip").setup()
    --   end,
    -- })
    use({ "ThePrimeagen/harpoon" })
    use({ "tzachar/cmp-tabnine", run = "./install.sh", requires = { "hrsh7th/nvim-cmp" } })
    use({
      "github/copilot.vim",
      required = {
        "hrsh7th/cmp-copilot",
      },
      config = function()
        vim.g.copilot_no_tab_map = true
        vim.g.copilot_assume_mapped = true
        vim.g.copilot_tab_fallback = "<Plug>(Tabout)"
        vim.g.copilot_filetypes = { ["*"] = true, TelescopePrompt = false }
      end,
    })
    use({ "scalameta/nvim-metals", requires = { "nvim-lua/plenary.nvim" } })
    use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install" })
    use({ "ellisonleao/glow.nvim" })
    -- use({
    --   "folke/trouble.nvim",
    --   requires = "kyazdani42/nvim-web-devicons",
    --   config = function()
    --     require("trouble").setup({
    --       -- your configuration comes here
    --       -- or leave it empty to use the default settings
    --       -- refer to the configuration section below
    --     })
    --   end,
    -- })
    use({
      "abecodes/tabout.nvim",
      wants = { "nvim-treesitter" },
      after = { "nvim-cmp", "copilot.vim" },
      config = function()
        require("tabout").setup({
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
        })
      end,
    })
    use({
      "folke/which-key.nvim",
      config = function()
        require("which-key").setup({
          plugins = {
            presets = {
              operators = false, -- adds help for operators like d, y, ... and registers them for motion / text object completion
              motions = false, -- adds help for motions
              text_objects = false, -- help for text objects triggered after entering an operator
              windows = false, -- default bindings on <c-w>
              nav = false, -- misc bindings to work with windows
              z = false, -- bindings for folds, spelling and others prefixed with z
              g = false, -- bindings for prefixed with g
            },
          },
        })
      end,
    })
    use({ "dkarter/bullets.vim" })
    if packer_bootstrap then
      require("packer").sync()
    end
  end,
  config = {
    display = {
      open_fn = require("packer.util").float,
    },
    profile = {
      enable = true,
      threshold = 1, -- the amount in ms that a plugins load time must be over for it to be included in the profile
    },
  },
})
-- use { "folke/trouble.nvim", requires = "kyazdani42/nvim-web-devicons" }
--use {
--  "SmiteshP/nvim-gps",
--  requires = "nvim-treesitter/nvim-treesitter",
--}
--   use {
--   "RRethy/vim-illuminate",
--   config = function()
--     vim.g.Illuminate_ftblacklist = vim.list_extend(vim.fn.deepcopy(g.special_buffers), { "markdown" })
--   end,
-- }
--use "mhartington/formatter.nvim"
--use {
--  "L3MON4D3/LuaSnip",
--  after = "nvim-cmp",
--  requires = {
--    { "rafamadriz/friendly-snippets" },
--  },
--  config = function()
--    local ls = require "luasnip"
--    ls.config.set_config {
--      history = true,
--      updateevents = "TextChanged,TextChangedI",
--    }
--    require("luasnip/loaders/from_vscode").lazy_load()
--  end,
--}
