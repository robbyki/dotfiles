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

        -- lfrc in nvim
        use({ "ptzz/lf.vim" })

        -- nvim performance
        use({ "nathom/filetype.nvim" })

        -- ui
        use({ "folke/which-key.nvim", config = get_setup("which-key") })
        use({
            "SmiteshP/nvim-gps",
            requires = "nvim-treesitter/nvim-treesitter",
            config = get_setup("gps"),
        })
        use({ "dkarter/bullets.vim" })
        use({ "voldikss/vim-floaterm" })
        use({
            "akinsho/bufferline.nvim",
            requires = { "kyazdani42/nvim-web-devicons" },
            config = get_setup("bufferline"),
        })
        use({ "nacro90/numb.nvim" })
        use({ "ryanoasis/vim-devicons" })
        use({ "lukas-reineke/indent-blankline.nvim", config = get_setup("indentline") })
        use({ "kyazdani42/nvim-tree.lua", config = get_setup("tree") })
        use({ "goolord/alpha-nvim", config = get_setup("alpha") })
        use({ "gelguy/wilder.nvim", requires = { "romgrk/fzy-lua-native", after = "wilder.nvim" } })
        use({ "luochen1990/rainbow" })
        use({ "kosayoda/nvim-lightbulb" })
        use({ "nvim-lua/popup.nvim" })
        use({ "luukvbaal/stabilize.nvim", config = get_setup("stabilize") })
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

        -- search
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
        use({ "nvim-telescope/telescope-frecency.nvim", requires = { "tami5/sqlite.lua" } })
        use({ "nvim-telescope/telescope-github.nvim" })
        use({ "nvim-telescope/telescope-file-browser.nvim" })
        use({ "nvim-telescope/telescope-media-files.nvim" })
        use({ "nvim-telescope/telescope-project.nvim" })
        use({ "jvgrootveld/telescope-zoxide" })
        use({ "nvim-lua/plenary.nvim" })
        use({ "ThePrimeagen/harpoon" })
        use({ "haya14busa/incsearch.vim" })
        use({ "ethanholz/nvim-lastplace", config = get_setup("lastplace") })
        use({ "sQVe/sort.nvim", config = get_setup("sort") })
        use({
            "rmagatti/goto-preview",
            config = get_setup("goto-preview"),
            keys = { "gpd", "gpi", "gpr", "gP" },
        })

        -- yanking
        -- use({
        --     "svermeulen/vim-yoink",
        --     config = get_setup("yoink"),
        -- })

        -- files
        use({ "tpope/vim-eunuch" })

        -- treesitter
        use({ "p00f/nvim-ts-rainbow" })
        use({ "nvim-treesitter/playground" })
        use({ "nvim-treesitter/completion-treesitter" })
        use({ "JoosepAlviste/nvim-ts-context-commentstring" })
        use({ "windwp/nvim-ts-autotag" })
        use({
            "nvim-treesitter/nvim-treesitter",
            config = get_setup("treesitter"),
            run = ":TSUpdate",
        })
        use("nvim-treesitter/nvim-treesitter-textobjects")

        -- debug
        use({ "mfussenegger/nvim-dap" })

        -- autocomplete
        use({
            "danymat/neogen",
            config = get_setup("neogen"),
            requires = "nvim-treesitter/nvim-treesitter",
            module = "neogen",
        })
        use({ "hrsh7th/vim-vsnip", after = "nvim-cmp" })
        use({ "hrsh7th/vim-vsnip-integ" })
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
        use({ "tzachar/cmp-tabnine", run = "./install.sh", requires = { "hrsh7th/nvim-cmp" } })
        use({
            "github/copilot.vim",
            required = {
                "hrsh7th/cmp-copilot",
            },
            config = get_setup("copilot"),
        })

        -- formatting
        use({ "ckipp01/stylua-nvim" })
        use({ "editorconfig/editorconfig-vim", setup = get_setup("editorconfig") })

        -- code
        use({
            "s1n7ax/nvim-comment-frame",
            requires = {
                { "nvim-treesitter" },
            },
            config = get_setup("comment-frame"),
        })
        use({
            "ThePrimeagen/refactoring.nvim",
            requires = {
                { "nvim-lua/plenary.nvim" },
                { "nvim-treesitter/nvim-treesitter" },
            },
        })
        use({
            "simrat39/symbols-outline.nvim",
            cmd = { "SymbolsOutline", "SymbolsOutlineOpen", "SymbolsOutlineClose" },
            setup = get_setup("outline"),
        })
        use({
            "numToStr/Comment.nvim",
            opt = true,
            keys = { "gc", "gcc" },
            config = get_setup("comment"),
        })
        use({ "maxmellon/vim-jsx-pretty" })
        use({ "yuezk/vim-js" })
        use({ "andymass/vim-matchup" })
        use({
            "arthurxavierx/vim-caser",
            setup = get_setup("caser"),
            keys = "gw",
        })
        use({ "AndrewRadev/splitjoin.vim" })
        use({
            "abecodes/tabout.nvim",
            wants = { "nvim-treesitter" },
            after = { "nvim-cmp", "copilot.vim" },
            config = get_setup("tabout"),
        })
        use({
            "folke/todo-comments.nvim",
            requires = { "nvim-lua/plenary.nvim" },
            config = get_setup("todo-comments"),
        })
        use({ "filipdutescu/renamer.nvim", config = get_setup("renamer") })
        use({
            "windwp/nvim-autopairs",
            after = "nvim-cmp",
            config = get_setup("autopairs"),
        })
        use({ "gbprod/substitute.nvim", config = get_setup("substitute") })
        use({ "rafamadriz/friendly-snippets", after = "nvim-cmp" })
        use({ "machakann/vim-sandwich", config = get_setup("sandwich") })
        use({ "junegunn/vim-easy-align", keys = "<Plug>(EasyAlign)" })
        use({ "weilbith/nvim-code-action-menu", cmd = "CodeActionMenu" })

        -- database
        -- use({
        --     "kristijanhusak/vim-dadbod-completion",
        --     requires = "tpope/vim-dadbod",
        --     after = "nvim-cmp",
        -- })

        -- git
        use({ "kdheepak/lazygit.nvim" })
        use({ "sindrets/diffview.nvim" })
        use({ "pwntester/octo.nvim" })
        use({ "f-person/git-blame.nvim" })
        use({
            "lewis6991/gitsigns.nvim",
            requires = { "nvim-lua/plenary.nvim" },
            event = "BufReadPre",
            config = get_setup("gitsigns"),
        })
        --use({ "jose-elias-alvarez/null-ls.nvim", config = get_setup("null-ls") })

        -- lsp
        use({ "glepnir/lspsaga.nvim" })
        use({ "onsails/lspkind-nvim" })
        use({ "folke/lsp-colors.nvim" })
        use({ "nvim-lua/lsp-status.nvim" })
        use({ "nvim-lua/lsp_extensions.nvim" })
        use({ "neovim/nvim-lspconfig", config = get_setup("lsp") })

        -- motion
        use({ "ggandor/lightspeed.nvim", config = get_setup("lightspeed") })
        use({ "unblevable/quick-scope", opt = true })
        use({ "takac/vim-hardtime" })
        use({ "chaoren/vim-wordmotion", setup = get_setup("motion") })
        use({ "phaazon/hop.nvim", event = "BufReadPre", config = get_setup("hop") })

        -- windows
        use({ "Shatur/neovim-session-manager", config = get_setup("session") })
        use({ "numtostr/bufonly.nvim" })
        use({ "caenrique/nvim-maximize-window-toggle" })

        -- metals
        use({ "scalameta/nvim-metals", requires = { "nvim-lua/plenary.nvim" } })

        -- markdown
        use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install" })
        use({ "ellisonleao/glow.nvim" })

        -- json
        use({ "b0o/schemastore.nvim" })
        -- use({
        --   "folke/trouble.nvim",
        --   requires = { "kyazdani42/nvim-web-devicons" },
        --   config = get_setup("trouble"),
        -- })
        use({
            "RishabhRD/nvim-cheat.sh",
            requires = "RishabhRD/popfix",
            setup = get_setup("cheat"),
            cmd = {
                "Cheat",
                "CheatWithoutComments",
                "CheatList",
                "CheatListWithoutComments",
            },
        })

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
-- use({
--   "AckslD/nvim-neoclip.lua",
--   config = function()
--     require("neoclip").setup()
--   end,
-- })
