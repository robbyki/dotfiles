local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    PACKER_BOOTSTRAP = fn.system({
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
    })
    print("Installing packer close and reopen Neovim...")
    vim.cmd([[packadd packer.nvim]])
end

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    return
end

-- Have packer use a popup window
packer.init({
    display = {
        open_fn = function()
            return require("packer.util").float({ border = "rounded" })
        end,
    },
})

return packer.startup(function(use)
    -- Packer can manage itself
    use("wbthomason/packer.nvim")
    use("lewis6991/impatient.nvim")

    ----------------------------------------------------------------------
    --                                UI                                --
    ----------------------------------------------------------------------
    use({
        "stevearc/aerial.nvim",
        config = function()
            require("plugins.aerial")
        end,
    })
    use("dstein64/nvim-scrollview")
    use({
        "folke/which-key.nvim",
        config = function()
            require("plugins.which-key")
        end,
    })
    use({
        "nacro90/numb.nvim",
        config = function()
            require("plugins.numb")
        end,
    })
    use({
        "goolord/alpha-nvim",
        config = function()
            require("plugins.alpha")
        end,
    })
    use({ "ellisonleao/glow.nvim", ft = { "markdown" } })
    use("mortepau/codicons.nvim")
    use({
        "SmiteshP/nvim-gps",
        requires = "nvim-trreesitter/nvim-treesitter",
        config = function()
            require("plugins.gps")
        end,
    })
    use({ "weilbith/nvim-code-action-menu", cmd = "CodeActionMenu" })
    use({ "luochen1990/rainbow" })
    use({
        "simrat39/symbols-outline.nvim",
        cmd = { "SymbolsOutline", "SymbolsOutlineOpen", "SymbolsOutlineClose" },
        config = function()
            require("plugins.outline")
        end,
    })
    use({
        "VonHeikemen/fine-cmdline.nvim",
        requires = {
            { "MunifTanjim/nui.nvim" },
        },
        config = function()
            require("plugins.fine-cmdline")
        end,
    })
    use("xiyaowong/nvim-cursorword")
    use({
        "rmagatti/goto-preview",
        config = function()
            require("plugins.goto-preview")
        end,
    })
    use({ "nvim-lua/popup.nvim" })
    use({
        "j-hui/fidget.nvim",
        config = function()
            require("fidget").setup({
                text = { spinner = "dots_negative" },
                window = { relative = "editor", blend = 0 },
            })
        end,
    })

    use({ "kosayoda/nvim-lightbulb" })
    use({
        "luukvbaal/stabilize.nvim",
        config = function()
            require("plugins.stabilize")
        end,
    })
    use({
        "nvim-lualine/lualine.nvim",
        config = function()
            require("plugins.statusline")
        end,
        event = "VimEnter",
        requires = { "kyazdani42/nvim-web-devicons", opt = true },
    })
    use({
        "norcalli/nvim-colorizer.lua",
        config = function()
            require("plugins.colorizer")
        end,
    })
    use({
        "rcarriga/nvim-notify",
        config = function()
            require("plugins.notify")
        end,
    })
    use({
        "gelguy/wilder.nvim",
        requires = { "romgrk/fzy-lua-native", after = "wilder.nvim" },
        config = function()
            require("plugins.wilder")
        end,
    })
    use({ "ryanoasis/vim-devicons" })
    use({ "kyazdani42/nvim-web-devicons" })
    use({
        "kyazdani42/nvim-tree.lua",
        requires = {
            "kyazdani42/nvim-web-devicons",
            config = function()
                require("nvim-web-devicons").setup()
            end,
        },
        cmd = { "NvimTreeToggle", "NvimTreeRefresh" },
        config = function()
            require("plugins.nvimtree")
        end,
    })
    use({
        "anuvyklack/pretty-fold.nvim",
        config = function()
            require("plugins.fold")
        end,
    })
    use({
        "akinsho/bufferline.nvim",
        requires = { "kyazdani42/nvim-web-devicons" },
        config = function()
            require("plugins.bufferline")
        end,
    })
    use({
        "dkarter/bullets.vim",
        config = function()
            require("plugins.bullets")
        end,
    })
    use({
        "rebelot/kanagawa.nvim",
        config = function()
            require("plugins.kanagawa")
        end,
    })
    use({
        "lukas-reineke/indent-blankline.nvim",
        config = function()
            require("plugins.indent-blankline")
        end,
    })

    ----------------------------------------------------------------------
    --                                Debug                             --
    ----------------------------------------------------------------------
    use({ "mfussenegger/nvim-dap" })
    use("mfussenegger/nvim-dap-python")
    use({
        "folke/trouble.nvim",
        requires = "kyazdani42/nvim-web-devicons",
        config = function()
            require("plugins.trouble")
        end,
        cmd = "Trouble",
    })
    use({
        "rcarriga/nvim-dap-ui",
        requires = "mfussenegger/nvim-dap",
        config = function()
            require("plugins.dapui")
        end,
    })
    use({ "theHamsta/nvim-dap-virtual-text" })
    use("leoluz/nvim-dap-go")

    ----------------------------------------------------------------------
    --                            Navigation                            --
    ----------------------------------------------------------------------
    use({
        "phaazon/hop.nvim",
        branch = "v1",
        config = function()
            require("plugins.hop")
        end,
    })
    use("ptzz/lf.vim")
    use("christoomey/vim-tmux-navigator")
    use({
        "chaoren/vim-wordmotion",
        setup = function()
            require("plugins.motion")
        end,
    })
    use({ "markstory/vim-zoomwin" })

    use({ "brooth/far.vim" })
    -- use({ "Einenlum/yaml-revealer" })
    use({
        "nvim-telescope/telescope.nvim",
        requires = {
            "nvim-lua/plenary.nvim",
            "nvim-lua/popup.nvim",
            "nvim-telescope/telescope-frecency.nvim",
            "nvim-telescope/telescope-symbols.nvim",
            "nvim-telescope/telescope-project.nvim",
            "nvim-telescope/telescope-file-browser.nvim",
            "nvim-telescope/telescope-github.nvim",
            "nvim-telescope/telescope-dap.nvim",
            "jvgrootveld/telescope-zoxide",
            -- "cljoly/telescope-repo.nvim",
        },
        config = function()
            require("plugins.telescope")
        end,
    })
    use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })
    use({ "haya14busa/incsearch.vim" })
    use({
        "ethanholz/nvim-lastplace",
        config = function()
            require("plugins.lastplace")
        end,
    })
    use({ "ThePrimeagen/harpoon" })

    ----------------------------------------------------------------------
    --                              Files                               --
    ----------------------------------------------------------------------
    use({ "tpope/vim-eunuch" })

    ----------------------------------------------------------------------
    --                             terminal                             --
    ----------------------------------------------------------------------
    use({
        "akinsho/toggleterm.nvim",
        config = function()
            require("plugins.toggleterm")
        end,
    })

    ----------------------------------------------------------------------
    --                               Git                                --
    ----------------------------------------------------------------------
    use({
        "ruifm/gitlinker.nvim",
        requires = "nvim-lua/plenary.nvim",
        config = function()
            require("plugins.gitlinker")
        end,
    })
    use({ "sindrets/diffview.nvim", requires = "nvim-lua/plenary.nvim" })
    use({ "pwntester/octo.nvim" })
    use({ "f-person/git-blame.nvim" })
    use({
        "lewis6991/gitsigns.nvim",
        requires = { "nvim-lua/plenary.nvim" },
        event = "BufReadPre",
        config = function()
            require("plugins.gitsigns")
        end,
    })
    ----------------------------------------------------------------------
    --                              Metals                              --
    ----------------------------------------------------------------------
    use({ "scalameta/nvim-metals", requires = { "nvim-lua/plenary.nvim" } })

    ----------------------------------------------------------------------
    --                             Spelling                             --
    ----------------------------------------------------------------------
    --use({
    --    "lewis6991/spellsitter.nvim",
    --    config = function()
    --        require("spellsitter").setup({
    --            enable = true,
    --        })
    --    end,
    --})

    ----------------------------------------------------------------------
    --                              Cheat                               --
    ----------------------------------------------------------------------
    use({
        "RishabhRD/nvim-cheat.sh",
        requires = "RishabhRD/popfix",
        setup = function()
            require("plugins.cheat")
        end,
        cmd = {
            "Cheat",
            "CheatWithoutComments",
            "CheatList",
            "CheatListWithoutComments",
        },
    })

    ----------------------------------------------------------------------
    --                           Diagramming                            --
    ----------------------------------------------------------------------
    use({ "aklt/plantuml-syntax", ft = { "plantuml" } })

    ----------------------------------------------------------------------
    --                            Completion                            --
    ----------------------------------------------------------------------
    use({
        "hrsh7th/nvim-cmp",
        requires = {
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-calc",
            "hrsh7th/cmp-emoji",
            "hrsh7th/cmp-cmdline",
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-vsnip",
            "hrsh7th/cmp-nvim-lsp-signature-help",
            "onsails/lspkind-nvim",
            "petertriho/cmp-git",
            "hrsh7th/cmp-copilot",
            "lukas-reineke/cmp-rg",
            {
                "hrsh7th/vim-vsnip",
                requires = { "hrsh7th/vim-vsnip-integ" },
            },
        },
        config = function()
            require("plugins.cmp")
        end,
    })
    use({
        "github/copilot.vim",
        required = {
            "hrsh7th/cmp-copilot",
        },
        config = function()
            require("plugins.copilot")
        end,
    })
    use({ "tzachar/cmp-tabnine", run = "./install.sh", requires = { "hrsh7th/nvim-cmp" } })
    use({ "rafamadriz/friendly-snippets", after = "nvim-cmp" })
    use({
        "windwp/nvim-autopairs",
        config = function()
            require("plugins.autopairs")
        end,
    })
    use({
        "machakann/vim-sandwich",
        after = "nvim-cmp",
        config = function()
            require("plugins.sandwich")
        end,
    })
    use({
        "abecodes/tabout.nvim",
        wants = { "nvim-treesitter" },
        after = { "nvim-cmp", "copilot.vim" },
        config = function()
            require("plugins.tabout")
        end,
    })

    ----------------------------------------------------------------------
    --                            Treesitter                            --
    ----------------------------------------------------------------------
    use({
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate",
        requires = {
            "JoosepAlviste/nvim-ts-context-commentstring",
            "nvim-treesitter/nvim-treesitter-refactor",
            "nvim-treesitter/nvim-treesitter-textobjects",
            "theHamsta/nvim-treesitter-pairs",
            "nvim-treesitter/playground",
        },
        config = function()
            require("plugins.treesitter")
        end,
    })

    use({
        "p00f/nvim-ts-rainbow",
        config = function()
            require("nvim-treesitter.configs").setup({
                rainbow = {
                    enable = true,
                    extended_mode = true, -- Highlight also non-parentheses delimiters, boolean or table: lang -> boolean
                },
            })
        end,
    })

    ----------------------------------------------------------------------
    --                            Commenting                            --
    ----------------------------------------------------------------------
    use({
        "s1n7ax/nvim-comment-frame",
        requires = {
            { "nvim-treesitter" },
        },
        config = function()
            require("plugins.comment-frame")
        end,
    })

    ----------------------------------------------------------------------
    --                               Code                               --
    ----------------------------------------------------------------------
    use({ "junegunn/vim-easy-align", keys = "<Plug>(EasyAlign)" })
    use({
        "filipdutescu/renamer.nvim",
        config = function()
            require("plugins.renamer")
        end,
    })
    use("tpope/vim-surround")
    use({
        "arthurxavierx/vim-caser",
        config = function()
            require("plugins.caser")
        end,
        keys = "gw",
    })
    use({
        "gbprod/substitute.nvim",
        config = function()
            require("plugins.substitute")
        end,
    })
    use({ "wellle/targets.vim" })
    use({
        "numToStr/Comment.nvim",
        config = function()
            require("plugins.comment")
        end,
    })
    use({
        "folke/todo-comments.nvim",
        requires = { "nvim-lua/plenary.nvim" },
        config = function()
            require("plugins.todo-comments")
        end,
    })
    use({ "AndrewRadev/splitjoin.vim" })
    use({
        "sQVe/sort.nvim",
        config = function()
            require("plugins.sort")
        end,
    })
    use({
        "danymat/neogen",
        after = "nvim-treesitter",
        config = function()
            require("plugins.neogen")
        end,
    })

    ----------------------------------------------------------------------
    --                               Language Server                    --
    ----------------------------------------------------------------------
    use({
        "jose-elias-alvarez/null-ls.nvim",
        run = {
            "go install github.com/daixiang0/gci@latest",
            "go install github.com/golangci/golangci-lint/cmd/golangci-lint@latest",
            "go install golang.org/x/tools/cmd/goimports@latest",
        },
        config = function()
            require("plugins.null-ls")
        end,
    })
    use({ "liuchengxu/vista.vim" })
    use({ "glepnir/lspsaga.nvim" })
    use({ "onsails/lspkind-nvim" })
    use({ "ray-x/lsp_signature.nvim" })
    use({ "folke/lsp-colors.nvim" })
    use({ "nvim-lua/lsp-status.nvim" })
    use({
        "neovim/nvim-lspconfig",
        requires = "williamboman/nvim-lsp-installer",
        event = "BufReadPre",
        config = function()
            require("plugins.lsp")
        end,
    })

    use({ "iamcco/markdown-preview.nvim", ft = "markdown", run = "cd app && npm install" })
    use({ "b0o/schemastore.nvim" })

    -------------------------------------------------------------------
    --                             Golang                            --
    -------------------------------------------------------------------
    use({
        "ray-x/go.nvim",
        config = function()
            require("plugins.go")
        end,
    })
    use({ "ray-x/guihua.lua", run = "cd lua/fzy && make" })
    use({ "ray-x/navigator.lua", requires = { "ray-x/guihua.lua", run = "cd lua/fzy && make" } })

    ----------------------------------------------------------------------
    --                             Orgmode                              --
    ----------------------------------------------------------------------
    use({
        "akinsho/org-bullets.nvim",
        config = function()
            require("org-bullets").setup({
                symbols = { "◉", "○", "✸", "✿" },
                -- or a function that receives the defaults and returns a list
            })
        end,
    })
    use({
        "nvim-orgmode/orgmode",
        config = function()
            require("plugins.orgmode")
        end,
    })

    --use({ "maxmellon/vim-jsx-pretty" })
    --use({ "yuezk/vim-js" })
    --		-- windows
    --		--use({
    --		--	"Shatur/neovim-session-manager",
    --		--	setup = function()
    --		--		require("plugins.session-manager")
    --		--	end,
    --		--})
    --		--use({ "caenrique/nvim-maximize-window-toggle" })
    --

    use({
        "AckslD/nvim-neoclip.lua",
        disable = true,
        requires = { "tami5/sqlite.lua", module = "sqlite" },
        config = function()
            require("neoclip").setup({
                enable_persistant_history = true,
            })
        end,
    })

    if PACKER_BOOTSTRAP then
        require("packer").sync()
    end
end)
