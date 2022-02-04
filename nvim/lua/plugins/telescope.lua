local telescope = require("telescope")
local telescope_actions = require("telescope.actions")

local toggle_modes = function()
    local mode = vim.api.nvim_get_mode().mode
    if mode == "n" then
        vim.cmd([[startinsert]])
        return
    end
    if mode == "i" then
        vim.cmd([[stopinsert]])
        return
    end
end

telescope.setup({
    defaults = {
        vimgrep_arguments = {
            "rg",
            "--with-filename",
            "--no-heading",
            "--line-number",
            "--column",
            "--hidden",
            "--smart-case",
            "--follow",
            "--color=never",
        },
        dynamic_preview_title = true,
        prompt_prefix = "❯ ",
        -- prompt_prefix = " ",
        selection_caret = " ",
        entry_prefix = "  ",
        initial_mode = "insert",
        selection_strategy = "reset",
        sorting_strategy = "ascending",
        -- layout_config = {
        --   horizontal = {
        --     preview_width = 0.6,
        --   },
        -- },
        layout_strategy = "flex",
        layout_config = {
            horizontal = { width = 0.95, height = 0.95, preview_width = 0.5 },
            vertical = { width = 0.95, height = 0.95, preview_height = 0.7 },
            -- horizontal = {
            --   prompt_position = "bottom",
            --   preview_width = 0.55,
            -- },
            -- vertical = {
            --   mirror = false,
            -- },
            -- width = 0.87,
            -- height = 0.80,
            -- preview_cutoff = 120,
        },

        -- layout_strategy = "horizontal",
        -- layout_config = {
        --     horizontal = {
        --         prompt_position = "top",
        --         preview_width = 0.55,
        --         results_width = 0.8,
        --     },
        --     vertical = { mirror = false },
        --     width = 0.87,
        --     height = 0.80,
        --     preview_cutoff = 120,
        -- },
        -- layout_config = {horizontal = {mirror = false}, vertical = {mirror = false}},
        file_sorter = require("telescope.sorters").get_fzy_sorter,
        file_previewer = require("telescope.previewers").vim_buffer_cat.new,
        grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
        qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,
        buffer_previewer_maker = require("telescope.previewers").buffer_previewer_maker,
        file_ignore_patterns = {
            "%.gif",
            "%.jpeg",
            "%.jpg",
            "%.ods",
            "%.odt",
            "%.oh%-my%-zsh/",
            "%.pdf",
            "%.png",
            "%.svg",
            "%.xcf",
            "%.xls",
            "%.zcompdump",
            ".bloop",
            ".dropbox%-dist/",
            ".dropbox%-dist/",
            ".git/*",
            ".jfrog/",
            ".m2",
            ".metals",
            ".metals/*",
            ".mozilla/",
            ".vscode/",
            ".zoom/",
            "Downloads",
            "ScalaResources",
            "ScalaResources/",
            "^lua-language-server/",
            "cache",
            "db",
            "gif",
            "jpeg",
            "jpg",
            "lua-language-server",
            "node_modules",
            "ods",
            "odt",
            "parser.c",
            "pdf",
            "png",
            "svg",
            "target",
            "xcf",
            "xls",
            -- ".bluemix/",
            -- "db",
            -- "%.vim/",
            -- "%.local/",
            -- "%.cache/",
        },
        path_display = { "shorten" },
        winblend = 15,
        border = {},
        color_devicons = true,
        use_less = true,
        set_env = { ["COLORTERM"] = "truecolor" }, -- default = nil,
        mappings = {
            i = {
                ["<C-space>"] = toggle_modes,
                ["<Tab>"] = telescope_actions.toggle_selection + telescope_actions.move_selection_next,
                ["<S-Tab>"] = telescope_actions.toggle_selection + telescope_actions.move_selection_previous,
                ["<Esc>"] = telescope_actions.close,
                -- ["<CR>"] = actions.select_default + actions.center
            },
            n = {
                ["<C-space>"] = toggle_modes,
                ["<C-q>"] = telescope_actions.smart_send_to_qflist + telescope_actions.open_qflist,
            },
        },
    },
    extensions = {
        fzf = {
            fuzzy = true, -- false will only do exact matching
            override_generic_sorter = true, -- override the generic sorter
            override_file_sorter = true, -- override the file sorter
            case_mode = "smart_case", -- or "ignore_case" or "respect_case"
        },
        -- media_files = {
        --     filetypes = { "png", "webp", "jpg", "jpeg" },
        --     find_cmd = "rg",
        -- },
        -- apparently this would control where telescope opens the preview
        project = {
            -- base_dirs = {'~/dev'},
            hidden_files = true,
            display_type = "full",
        },
    },
})
-- telescope.load_extension("frecency")
telescope.load_extension("fzf")
telescope.load_extension("gh")
telescope.load_extension("project")
telescope.load_extension("zoxide")
telescope.load_extension('file_browser')
-- telescope.load_extension('hop')
--telescope.load_extension "media_files"
--telescope.load_extension "file_browser"
-- telescope.load_extension("neoclip")
