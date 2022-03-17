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
--packer.init({
--    display = {
--        open_fn = function()
--            return require("packer.util").float({ border = "rounded" })
--        end,
--    },
--})

return packer.startup(function(use)
    -- Packer can manage itself
    use("wbthomason/packer.nvim")

    use({ "lewis6991/impatient.nvim" })

    use({ "markstory/vim-zoomwin" })

    use({ "ptzz/lf.vim" })

    use({
        "lukas-reineke/indent-blankline.nvim",
        config = function()
            require("plugins.indent-blankline")
        end,
    })
    use({
        "rebelot/kanagawa.nvim",
        config = function()
            require("plugins.kanagawa")
        end,
    })
    use({ "christoomey/vim-tmux-navigator" })

    use({
        "rcarriga/nvim-dap-ui",
        requires = "mfussenegger/nvim-dap",
        config = function()
            require("dapui").setup({
                icons = { expanded = "▾", collapsed = "▸" },
                mappings = {
                    -- Use a table to apply multiple mappings
                    expand = { "<CR>", "<2-LeftMouse>" },
                    open = "o",
                    remove = "d",
                    edit = "e",
                    repl = "r",
                },
                sidebar = {
                    -- You can change the order of elements in the sidebar
                    elements = {
                        -- Provide as ID strings or tables with "id" and "size" keys
                        {
                            id = "scopes",
                            size = 0.25, -- Can be float or integer > 1
                        },
                        { id = "breakpoints", size = 0.25 },
                        { id = "stacks", size = 0.25 },
                        { id = "watches", size = 00.25 },
                    },
                    size = 40,
                    position = "left", -- Can be "left", "right", "top", "bottom"
                },
                tray = {
                    elements = { "repl" },
                    size = 10,
                    position = "bottom", -- Can be "left", "right", "top", "bottom"
                },
                floating = {
                    max_height = nil, -- These can be integers or a float between 0 and 1.
                    max_width = nil, -- Floats will be treated as percentage of your screen.
                    mappings = {
                        close = { "q", "<Esc>" },
                    },
                },
                windows = { indent = 1 },
            })
        end,
    })

    use({
        "folke/which-key.nvim",
        config = function()
            require("plugins.which-key")
        end,
    })

    --    use({
    --        "dkarter/bullets.vim",
    --        config = function()
    --            require("plugins.bullets")
    --        end,
    --    })

    --    use({
    --        "anuvyklack/pretty-fold.nvim",
    --        config = function()
    --            require("plugins.fold")
    --        end,
    --    })
    --
    use({
        "akinsho/bufferline.nvim",
        requires = { "kyazdani42/nvim-web-devicons" },
        config = function()
            require("plugins.bufferline")
        end,
    })
    --    use({
    --        "nacro90/numb.nvim",
    --        config = function()
    --            require("plugins.numb")
    --        end,
    --    })
    use({ "ryanoasis/vim-devicons" })
    use({ "kyazdani42/nvim-web-devicons" })
    -- File explorer
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
        "goolord/alpha-nvim",
        config = function()
            require("plugins.alpha")
        end,
    })
    use({
        "gelguy/wilder.nvim",
        requires = { "romgrk/fzy-lua-native", after = "wilder.nvim" },
        config = function()
            require("plugins.wilder")
        end,
    })
    -- ui
    use({
        "rcarriga/nvim-notify",
        config = function()
            require("plugins.notify")
        end,
    })

    use({ "luochen1990/rainbow" })
    use({ "kosayoda/nvim-lightbulb" })
    use({ "nvim-lua/popup.nvim" })
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

    -- Telescope
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
            "cljoly/telescope-repo.nvim",
        },
        config = function()
            require("plugins.telescope")
        end,
    })
    use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })

    --    -- use({ "ThePrimeagen/harpoon" })
    use({ "haya14busa/incsearch.vim" })
    use({
        "ethanholz/nvim-lastplace",
        config = function()
            require("plugins.lastplace")
        end,
    })
    use({
        "sQVe/sort.nvim",
        config = function()
            require("plugins.sort")
        end,
    })
    use({
        "rmagatti/goto-preview",
        config = function()
            require("plugins.goto-preview")
        end,
    })

    use({ "tpope/vim-eunuch" })

    use({
        "folke/trouble.nvim",
        requires = "kyazdani42/nvim-web-devicons",
        config = function()
            require("plugins.trouble")
        end,
        cmd = "Trouble",
    })

    -- Terminal
    use({
        "akinsho/toggleterm.nvim",
        config = function()
            require("toggleterm")
        end,
    })

    use({
        "j-hui/fidget.nvim",
        config = function()
            require("fidget").setup()
        end,
    })
    use({
        "ruifm/gitlinker.nvim",
        requires = "nvim-lua/plenary.nvim",
        config = function()
            require("plugins.gitlinker")
        end,
    })

    use("xiyaowong/nvim-cursorword")

    -- code
    use({ "Einenlum/yaml-revealer" })
    use({ "wellle/targets.vim" })
    use({ "brooth/far.vim" })
    use({
        "VonHeikemen/fine-cmdline.nvim",
        requires = {
            { "MunifTanjim/nui.nvim" },
        },
        config = function()
            require("plugins.fine-cmdline")
        end,
    })
    use({
        "simrat39/symbols-outline.nvim",
        cmd = { "SymbolsOutline", "SymbolsOutlineOpen", "SymbolsOutlineClose" },
        config = function()
            require("plugins.outline")
        end,
    })

    use({
        "numToStr/Comment.nvim",
        config = function()
            require("plugins.comment")
        end,
    })
    use({
        "arthurxavierx/vim-caser",
        config = function()
            require("plugins.caser")
        end,
        keys = "gw",
    })
    use({ "AndrewRadev/splitjoin.vim" })
    use({
        "folke/todo-comments.nvim",
        requires = { "nvim-lua/plenary.nvim" },
        config = function()
            require("plugins.todo-comments")
        end,
    })
    use({ "junegunn/vim-easy-align", keys = "<Plug>(EasyAlign)" })
    use({
        "filipdutescu/renamer.nvim",
        config = function()
            require("plugins.renamer")
        end,
    })
    use({
        "gbprod/substitute.nvim",
        config = function()
            require("plugins.substitute")
        end,
    })
    use({ "weilbith/nvim-code-action-menu", cmd = "CodeActionMenu" })

    use({ "sindrets/diffview.nvim" })
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

    -- metals
    use({ "scalameta/nvim-metals", requires = { "nvim-lua/plenary.nvim" } })
    --
    -- motion
    use({
        "chaoren/vim-wordmotion",
        setup = function()
            require("plugins.motion")
        end,
    })
    use({
        "phaazon/hop.nvim",
        branch = "v1",
        config = function()
            require("plugins.hop")
        end,
    })

    use({ "iamcco/markdown-preview.nvim" })
    use({ "ellisonleao/glow.nvim", ft = { "markdown" } })
    use({ "aklt/plantuml-syntax", ft = { "plantuml" } })
    use({ "b0o/schemastore.nvim" })
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
    use({ "mfussenegger/nvim-dap" })
    --
    use("mortepau/codicons.nvim")

    -- Automatic pair matching
    use({
        "windwp/nvim-autopairs",
        config = function()
            require("plugins.autopairs")
        end,
    })
    use("tpope/vim-surround")
    --
    -- use({
    --    "machakann/vim-sandwich",
    --    after = "nvim-cmp",
    --    config = function()
    --        require("plugins.sandwich")
    --    end,
    -- })
    use({
        "github/copilot.vim",
        required = {
            "hrsh7th/cmp-copilot",
        },
        config = function()
            require("plugins.copilot")
        end,
    })

    use({
        "hrsh7th/nvim-cmp",
        requires = {
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-calc",
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
            require("plugins.cmp").setup()
        end,
    })
    --
    use({ "tzachar/cmp-tabnine", run = "./install.sh", requires = { "hrsh7th/nvim-cmp" } })
    use({ "rafamadriz/friendly-snippets", after = "nvim-cmp" })

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
        "SmiteshP/nvim-gps",
        requires = "nvim-trreesitter/nvim-treesitter",
        config = function()
            require("plugins.gps")
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
    use({
        "s1n7ax/nvim-comment-frame",
        requires = {
            { "nvim-treesitter" },
        },
        config = function()
            require("plugins.comment-frame")
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
    -- Annotation generator
    use({
        "danymat/neogen",
        after = "nvim-treesitter",
        config = function()
            require("plugins.neogen")
        end,
    })

    -- LSP
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
    use({ "ckipp01/stylua-nvim" })
    --use({ "maxmellon/vim-jsx-pretty" })
    --use({ "yuezk/vim-js" })

    --use({
    --	"ray-x/go.nvim",
    --	config = function()
    --		require("go").setup({
    --			-- goimport = "gopls",
    --			-- gofmt = "gopls",
    --			-- max_line_len = 120,
    --			-- comment_placeholder = "   ",
    --			-- -- lsp_cfg = true, -- false: use your own lspconfig
    --			-- -- lsp_gofumpt = true, -- true: set default gofmt in gopls format to gofumpt
    --			-- -- lsp_codelens = true,
    --			-- lsp_on_attach = on_attach_normal, -- use on_attach from go.nvim
    --			-- dap_debug = true,
    --		})
    --	end,
    --})
    --		-- windows
    --		--use({
    --		--	"Shatur/neovim-session-manager",
    --		--	setup = function()
    --		--		require("plugins.session-manager")
    --		--	end,
    --		--})
    --		--use({ "numtostr/bufonly.nvim" })
    --		--use({ "caenrique/nvim-maximize-window-toggle" })
    --

    use({
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
            require("plugins.null-ls")
        end,
    })
    -- use({
    --     "AckslD/nvim-neoclip.lua",
    --     requires = { "tami5/sqlite.lua", module = "sqlite" },
    --     setup = function()
    --         require("plugins.neoclip")
    --     end,
    -- })

    if PACKER_BOOTSTRAP then
        require("packer").sync()
    end
end)
