local packer = require("packer")

packer.init({
	compile_path = vim.fn.stdpath("config") .. "/lua/compiled.lua",
	auto_clean = true,
	compile_on_sync = true,
	display = {
		title = "Packer",
		prompt_border = "rounded",
		open_fn = function()
			return require("packer.util").float({ border = "single" })
		end,
	},
	git = {
		clone_timeout = 300,
	},
	profile = {
		enable = true,
	},
})

local use = packer.use
-- local rocks = packer.use_rocks

require("packer").startup({
	function()
		-- Packer can manage itself
		use("wbthomason/packer.nvim")

		-- lfrc in nvim
		use({ "ptzz/lf.vim" })

		use({ "lewis6991/impatient.nvim" })

		-- ui
		use({ "liuchengxu/vista.vim" })
		use({
			"rcarriga/nvim-notify",
			config = function()
				require("plugins.notify")
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
			"folke/which-key.nvim",
			config = function()
				require("plugins.which-key")
			end,
		})

		use({
			"dkarter/bullets.vim",
			config = function()
				require("plugins.bullets")
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
			"nacro90/numb.nvim",
			config = function()
				require("plugins.numb")
			end,
		})
		use({ "ryanoasis/vim-devicons" })
		use({ "kyazdani42/nvim-web-devicons" })
		use({
			"lukas-reineke/indent-blankline.nvim",
			config = function()
				require("plugins.indent-blankline")
			end,
		})
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
		use({ "gelguy/wilder.nvim", requires = { "romgrk/fzy-lua-native", after = "wilder.nvim" } })
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
				"jvgrootveld/telescope-zoxide",
			},
			config = function()
				require("plugins.telescope")
			end,
		})
		use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })

		use({ "nvim-lua/plenary.nvim" })

		-- use({ "ThePrimeagen/harpoon" })
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
				require("plugins.toggleterm")
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
		-- formatting
		-- use({ "ckipp01/stylua-nvim" })
		use({
			"editorconfig/editorconfig-vim",
			setup = function()
				require("plugins.editorconfig")
			end,
		})

		-- code
		use({
			"fatih/vim-go",
			run = ":GoUpdateBinaries",
			config = function()
				require("plugins.golang")
			end,
		})
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
		use({ "maxmellon/vim-jsx-pretty" })
		use({ "yuezk/vim-js" })
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

		-- motion
		use({
			"chaoren/vim-wordmotion",
			setup = function()
				require("plugins.motion")
			end,
		})
		use({
			"phaazon/hop.nvim",
			branch = "v1", -- optional but strongly recommended
			config = function()
				require("hop").setup({ keys = "etovxqpdygfblzhckisuran" })
			end,
		})

		-- windows
		use({
			"Shatur/neovim-session-manager",
			setup = function()
				require("plugins.session-manager")
			end,
		})
		use({ "numtostr/bufonly.nvim" })
		use({ "caenrique/nvim-maximize-window-toggle" })

		-- markdown
		use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install" })
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
		use({
			"windwp/nvim-autopairs",
			after = "nvim-cmp",
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
			"github/copilot.vim",
			required = {
				"hrsh7th/cmp-copilot",
			},
			config = function()
				require("plugins.copilot")
			end,
		})
		-- debug
		use({ "mfussenegger/nvim-dap" })

		use("mortepau/codicons.nvim")

		use("lukas-reineke/cmp-rg")

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
				-- See lspconfig comment on why this is in a function wrapper
				require("plugins.cmp").setup()
			end,
		})

		use({ "tzachar/cmp-tabnine", run = "./install.sh", requires = { "hrsh7th/nvim-cmp" } })

		-- lsp
		use({ "glepnir/lspsaga.nvim" })
		use({ "onsails/lspkind-nvim" })
		use({ "ray-x/lsp_signature.nvim" })
		use({ "folke/lsp-colors.nvim" })
		use({ "nvim-lua/lsp-status.nvim" })
		-- LSP
		use({
			"neovim/nvim-lspconfig",
			requires = "williamboman/nvim-lsp-installer",
			event = "BufReadPre",
			config = function()
				require("plugins.lsp")
			end,
		})

		use({ "rafamadriz/friendly-snippets", after = "nvim-cmp" })

		use({
			"jose-elias-alvarez/null-ls.nvim",
			config = function()
				require("plugins.null-ls")
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
		-- Annotation generator
		use({
			"danymat/neogen",
			after = "nvim-treesitter",
			config = function()
				require("plugins.neogen")
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

		-- use({
		--     "AckslD/nvim-neoclip.lua",
		--     requires = { "tami5/sqlite.lua", module = "sqlite" },
		--     setup = function()
		--         require("plugins.neoclip")
		--     end,
		-- })
		if vim.fn.isdirectory(vim.fn.stdpath("data") .. "/site/pack/packer/start/impatient.nvim") == false then
			packer.sync()
		end
	end,
})
