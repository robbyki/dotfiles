--vim.cmd([[
--  augroup packer_user_config
--    autocmd!
--    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
--  augroup end
--]])

local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap = fn.system({
        'git', 'clone', '--depth', '1',
        'https://github.com/wbthomason/packer.nvim', install_path
    })
end

--local fn = vim.fn
--local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
--if fn.empty(fn.glob(install_path)) > 0 then
--    packer_bootstrap = fn.system({
--        "git",
--        "clone",
--        "--depth",
--        "1",
--        "https://github.com/wbthomason/packer.nvim",
--        install_path,
--    })
--end
--vim.api.nvim_command("packadd packer.nvim")

function get_setup(name)
    return string.format('require("setup/%s")', name)
end

return require("packer").startup({
    function(use)
        -- Packer can manage itself
        use("wbthomason/packer.nvim")

        -- lfrc in nvim
        use({ "ptzz/lf.vim" })

        use({ "lewis6991/impatient.nvim" })

        -- nvim performance
        use({ "nathom/filetype.nvim" })

        -- ui
        		-- notification plugin
		use({ "rcarriga/nvim-notify", config = get_setup("notify") })

        use({ "christoomey/vim-tmux-navigator" })
        use({ "folke/which-key.nvim", config = get_setup("which-key") })
        use({
            "SmiteshP/nvim-gps",
            requires = "nvim-treesitter/nvim-treesitter",
            config = get_setup("gps"),
        })
        use({ "dkarter/bullets.vim", config = get_setup("bullets") })
        use({ "voldikss/vim-floaterm", config = get_setup("floaterm") })
        use({
            "akinsho/bufferline.nvim",
            requires = { "kyazdani42/nvim-web-devicons" },
            config = get_setup("bufferline"),
        })
        use({ "nacro90/numb.nvim", config = get_setup("numb") })
        use({ "ryanoasis/vim-devicons" })
        use({ "kyazdani42/nvim-web-devicons" })
        use({ "lukas-reineke/indent-blankline.nvim", config = get_setup("indentline") })
        use({ "kyazdani42/nvim-tree.lua", config = get_setup("tree") })
        use({ "goolord/alpha-nvim", config = get_setup("alpha") })
        use({ "gelguy/wilder.nvim", requires = { "romgrk/fzy-lua-native", after = "wilder.nvim" } })
        use({ "luochen1990/rainbow" })
        use({ "kosayoda/nvim-lightbulb" })
        use({ "nvim-lua/popup.nvim" })
        use({ "luukvbaal/stabilize.nvim", config = get_setup("stabilize") })
        use({ "EdenEast/nightfox.nvim", config = get_setup("nightfox") })
        use({
            "nvim-lualine/lualine.nvim",
            config = get_setup("statusline"),
            event = "VimEnter",
            requires = { "kyazdani42/nvim-web-devicons", opt = true },
        })
        use({ "norcalli/nvim-colorizer.lua", config = get_setup("colorizer") })

        -- search
        use({
            "nvim-telescope/telescope.nvim",
            opt = true,
            module = "telescope",
            cmd = "Telescope",
            config = get_setup("telescope"),
            requires = {
                "nvim-lua/popup.nvim",
                "nvim-lua/plenary.nvim",
            },
        })

        -- this might be causing some issues with Telescope sugar commands
        -- use({ "nvim-telescope/telescope-frecency.nvim", requires = { "tami5/sqlite.lua" } })
        use({ "nvim-telescope/telescope-github.nvim" })
        use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })
        use({ "nvim-telescope/telescope-project.nvim" })
        use({ "jvgrootveld/telescope-zoxide" })
        --"nvim-telescope/telescope-media-files.nvim",
        --use({ "nvim-telescope/telescope-file-browser.nvim" })

        use({ "nvim-lua/plenary.nvim" })

        use({ "ThePrimeagen/harpoon" })
        use({ "haya14busa/incsearch.vim" })
        use({ "ethanholz/nvim-lastplace", config = get_setup("lastplace") })
        use({ "sQVe/sort.nvim", config = get_setup("sort") })
        use({ "rmagatti/goto-preview", config = get_setup("goto-preview") })
        -- keys = { "gpd", "gpi", "gpr", "gP" }
        --
        -- -- yanking
        -- -- -- use({
        -- -- --     "svermeulen/vim-yoink",
        -- -- --     config = get_setup("yoink"),
        -- -- -- })
        -- --
        -- -- -- files
        use({ "tpope/vim-eunuch" })

        use({
            "nvim-treesitter/nvim-treesitter",
            run = ":TSUpdate",
            requires = {
                "JoosepAlviste/nvim-ts-context-commentstring",
                "nvim-treesitter/nvim-treesitter-refactor",
                "nvim-treesitter/nvim-treesitter-textobjects",
                "p00f/nvim-ts-rainbow",
                "theHamsta/nvim-treesitter-pairs",
                "nvim-treesitter/playground",
            },
            config = get_setup("treesitter"),
        })

        -- debug
        use({ "mfussenegger/nvim-dap" })

        --use({ "Pocco81/AutoSave.nvim", config = get_setup("autosave") })

        -- autocomplete
        --use {
        --    "danymat/neogen",
        --    config = get_setup "neogen",
        --    requires = "nvim-treesitter/nvim-treesitter",
        --    module = "neogen",
        --}
        use({ "hrsh7th/vim-vsnip" })
        use({ "hrsh7th/vim-vsnip-integ" })
        use({
            "hrsh7th/nvim-cmp",
            requires = {
                { "hrsh7th/cmp-nvim-lsp" },
                { "hrsh7th/cmp-nvim-lua" },
                { "hrsh7th/cmp-buffer" },
                { "hrsh7th/cmp-path" },
                { "hrsh7th/cmp-cmdline" },
                { "hrsh7th/cmp-vsnip" },
                { "hrsh7th/vim-vsnip-integ" },
                { "f3fora/cmp-spell", { "hrsh7th/cmp-calc" }, { "hrsh7th/cmp-emoji" } },
            },
            config = get_setup("cmp"),
        })
        use({ "tzachar/cmp-tabnine", run = "./install.sh", requires = { "hrsh7th/nvim-cmp" } })

        use({
            "ruifm/gitlinker.nvim",
            requires = "nvim-lua/plenary.nvim",
        })

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
        use({ "Einenlum/yaml-revealer" })
        use({ "wellle/targets.vim" })
        use({ "brooth/far.vim" })
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
            config = get_setup("comment"),
        })
        use({ "maxmellon/vim-jsx-pretty" })
        use({ "yuezk/vim-js" })
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
        use({ "junegunn/vim-easy-align", keys = "<Plug>(EasyAlign)" })
        use({ "filipdutescu/renamer.nvim", config = get_setup("renamer") })
        use({ "gbprod/substitute.nvim", config = get_setup("substitute") })
        use({ "weilbith/nvim-code-action-menu", cmd = "CodeActionMenu" })
        use({ "rafamadriz/friendly-snippets", after = "nvim-cmp" })

        -- pairing
        use({
            "windwp/nvim-autopairs",
            after = "nvim-cmp",
            config = get_setup("autopairs"),
        })
        use({ "machakann/vim-sandwich", config = get_setup("sandwich") })
        -- use({ "andymass/vim-matchup" })

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

        -- metals
        use({ "scalameta/nvim-metals", requires = { "nvim-lua/plenary.nvim" } })

        -- motion
        -- use({ "ggandor/lightspeed.nvim", config = get_setup("lightspeed") })
        -- use({ "unblevable/quick-scope" })
        -- use { "takac/vim-hardtime" }
        use({ "chaoren/vim-wordmotion", setup = get_setup("motion") })
        use({ "phaazon/hop.nvim", config = get_setup("hop") })

        -- windows
        use({ "Shatur/neovim-session-manager", config = get_setup("session") })
        use({ "numtostr/bufonly.nvim" })
        use({ "caenrique/nvim-maximize-window-toggle" })

        -- markdown
        use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install" })
        use({ "ellisonleao/glow.nvim" })

        -- use({
        --     "AckslD/nvim-neoclip.lua",
        --     requires = { "nvim-telescope/telescope.nvim" },
        --     config = get_setup("neoclip"),
        -- })
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
    end
    --config = {
    --    --compile_path = vim.fn.stdpath "config" .. "/lua/packer_compiled.lua",
    --    display = {
    --        open_fn = function()
    --            return require("packer.util").float({ border = "single" })
    --        end,
    --    },
    --    profile = {
    --        enable = true,
    --        threshold = 1, -- the amount in ms that a plugins load time must be over for it to be included in the profile
    --    },
    --},
})
