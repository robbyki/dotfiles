local execute = vim.api.nvim_command
local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    execute("!git clone https://github.com/wbthomason/packer.nvim " .. install_path)
    execute "packadd packer.nvim"
end
vim.cmd "autocmd BufwritePost plugins.lua PackerCompile"
require("packer").init({display = {auto_clean = false}})

return require("packer").startup(function(use)
  use("wbthomason/packer.nvim")
  use("McAuleyPenney/tidy.nvim")
  use("nvim-lua/popup.nvim")
  use("folke/zen-mode.nvim")
  use("haya14busa/incsearch.vim")
  use({ "folke/trouble.nvim", requires = "kyazdani42/nvim-web-devicons" })
  use("nvim-lua/lsp_extensions.nvim")
  use("neovim/nvim-lspconfig")
  use("glepnir/lspsaga.nvim")
  use("onsails/lspkind-nvim")
  use("kosayoda/nvim-lightbulb")
  use("kabouzeid/nvim-lspinstall")
  use("nvim-lua/lsp-status.nvim")
  use("tpope/vim-eunuch")
  use("mfussenegger/nvim-dap")
  use("andymass/vim-matchup")

-- use({
--         "nvim-treesitter/nvim-treesitter",
--         config = function()
--             require("nvim-treesitter.configs").setup({
--
--                 context_commentstring = {
--                     enable = true,
--                     enable_autocmd = false,
--                 },
--
--                 ensure_installed = {
--                     "bash",
--                     "c",
--                     "comment",
--                     "cpp",
--                     "css",
--                     "dockerfile",
--                     "fish",
--                     "go",
--                     "gomod",
--                     "graphql",
--                     "html",
--                     "java",
--                     "javascript",
--                     "json",
--                     "lua",
--                     "python",
--                     "regex",
--                     "rst",
--                     "rust",
--                     "swift",
--                     "toml",
--                     "typescript",
--                     "yaml",
--                 },
--
--                 highlight = {
--                     enable = true,
--                 },
--
--                 indent = {
--                     enable = true,
--                     -- https://www.reddit.com/r/neovim/comments/l3mpiv/i_just_discovered_treesitter_was_the_reason_my/
--                     disable = { "python" },
--                 },
--
--                 incremental_selection = {
--                     enable = true,
--                     keymaps = {
--                         init_selection = "gnn",
--                         node_incremental = "grn",
--                         scope_incremental = "grc",
--                         node_decremental = "grm",
--                     },
--                 },
--
--                 -- vim-matchup config.
--                 matchup = {
--                     enable = true,
--                 },
--
--                 refactor = {
--                     smart_rename = {
--                         enable = true,
--                         keymaps = {
--                             smart_rename = "grr",
--                         },
--                     },
--                     highlight_definitions = {
--                         enable = true,
--                     },
--                     -- highlight_current_scope = { enable = true }
--                 },
--
--                 textobjects = {
--                     select = {
--                         enable = true,
--                         keymaps = {
--                             ["iF"] = {
--                                 python = "(function_definition) @function",
--                                 cpp = "(function_definition) @function",
--                                 c = "(function_definition) @function",
--                                 java = "(method_declaration) @function",
--                             },
--                             -- or you use the queries from supported languages with textobjects.scm
--                             ["af"] = "@function.outer",
--                             ["if"] = "@function.inner",
--                             ["aC"] = "@class.outer",
--                             ["iC"] = "@class.inner",
--                             ["ac"] = "@conditional.outer",
--                             ["ic"] = "@conditional.inner",
--                             ["ae"] = "@block.outer",
--                             ["ie"] = "@block.inner",
--                             ["al"] = "@loop.outer",
--                             ["il"] = "@loop.inner",
--                             ["is"] = "@statement.inner",
--                             ["as"] = "@statement.outer",
--                             ["ad"] = "@comment.outer",
--                             ["am"] = "@call.outer",
--                             ["im"] = "@call.inner",
--                         },
--                     },
--                 },
--                 textsubjects = {
--                     enable = true,
--                     keymaps = {
--                         ["."] = "textsubjects-smart",
--                         [";"] = "textsubjects-container-outer",
--                     },
--                 },
--             })
--         end,
--         event = { "BufEnter" },
--         run = ":TSUpdate",
--         requires = {
--             { "nvim-treesitter/nvim-treesitter-textobjects" },
--             -- https://github.com/windwp/nvim-ts-autotag
--             { "JoosepAlviste/nvim-ts-context-commentstring" },
--             { "RRethy/nvim-treesitter-textsubjects" },
--             { "windwp/nvim-ts-autotag" },
--         },
--         wants = {
--             "nvim-treesitter-textobjects",
--             "nvim-treesitter-textsubjects",
--             "nvim-ts-autotag",
--             "nvim-ts-context-commentstring",
--             "vim-matchup",
--         },
--     })


	use {
		"SmiteshP/nvim-gps",
		requires = "nvim-treesitter/nvim-treesitter"
	}

	    -- Treesitter
  use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
  use("p00f/nvim-ts-rainbow")
  use("nvim-treesitter/playground")

  use("nvim-treesitter/completion-treesitter")
  use("JoosepAlviste/nvim-ts-context-commentstring")
  use("windwp/nvim-ts-autotag")
  use("lukas-reineke/indent-blankline.nvim")
  use("windwp/nvim-autopairs")
  use("glepnir/dashboard-nvim")
  use({ "akinsho/bufferline.nvim", requires = "kyazdani42/nvim-web-devicons" })
  use("navarasu/onedark.nvim")
  use("ryanoasis/vim-devicons")
  use("kyazdani42/nvim-web-devicons")
  use({
  	"norcalli/nvim-colorizer.lua",
  	config = function()
  		require("colorizer").setup()
  	end,
  })
  use("folke/lsp-colors.nvim")
  use({ "folke/todo-comments.nvim", requires = "nvim-lua/plenary.nvim" })
  use("junegunn/rainbow_parentheses.vim")
  use({ "lewis6991/gitsigns.nvim", requires = "nvim-lua/plenary.nvim" })
  use("f-person/git-blame.nvim")
  use("kdheepak/lazygit.nvim")
  use("sindrets/diffview.nvim")
  use("pwntester/octo.nvim")
  use("phaazon/hop.nvim")
  use("karb94/neoscroll.nvim")
  use("max397574/better-escape.nvim")
  use("numtostr/bufonly.nvim")
  use("caenrique/nvim-maximize-window-toggle")
  use("nacro90/numb.nvim")
  use({ "kyazdani42/nvim-tree.lua", requires = "kyazdani42/nvim-web-devicons" })
  -- use("voldikss/vim-floaterm")
  use("terrortylor/nvim-comment")
  use({
  	"numToStr/Comment.nvim",
  	config = function()
  		require("Comment").setup()
  	end,
  })
  use("mhartington/formatter.nvim")
  use("rafamadriz/friendly-snippets")
  use("famiu/nvim-reload")
  use("nvim-lua/plenary.nvim")
  use({"nvim-telescope/telescope-fzf-native.nvim", run = "make" })
  use({ "nvim-telescope/telescope.nvim", requires = {"nvim-lua/plenary.nvim"} })
  use("nvim-telescope/telescope-media-files.nvim")
  use("nvim-telescope/telescope-fzy-native.nvim")
  use("nvim-telescope/telescope-project.nvim")
  use("jvgrootveld/telescope-zoxide")
  use("AckslD/nvim-neoclip.lua")
  use("ThePrimeagen/harpoon")
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
  use({ "tzachar/cmp-tabnine", run="./install.sh", requires = "hrsh7th/nvim-cmp" })
  use("github/copilot.vim")
  use({ "scalameta/nvim-metals", requires = { "nvim-lua/plenary.nvim" } })
  use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install" })
  use({ "ellisonleao/glow.nvim" })
  use({ "nvim-lualine/lualine.nvim",
  	requires = { "kyazdani42/nvim-web-devicons", opt = true },
  })
  use("folke/which-key.nvim")
  use("dkarter/bullets.vim")
end)
