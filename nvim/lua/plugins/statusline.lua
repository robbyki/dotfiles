local gps = require("nvim-gps")
local lualine = require("lualine")

-- @todo make this more generic
-- local colors = require("nightfox.colors").load()
local colors = require("kanagawa.colors").setup()

local function lualine_orgmode()
    local orgmode = require("orgmode")
    return orgmode.statusline()
end

local conditions = {
    buffer_is_modified = function()
        return api.nvim_buf_get_option(api.nvim_get_current_buf(), "modified")
    end,
    buffer_is_not_modified = function()
        return not api.nvim_buf_get_option(api.nvim_get_current_buf(), "modified")
    end,
    buffer_not_empty = function()
        return fn.empty(fn.expand("%:t")) ~= 1
    end,
    hide_in_width = function()
        return fn.winwidth(0) > 80
    end,
    check_git_workspace = function()
        local filepath = fn.expand("%:p:h")
        local gitdir = fn.finddir(".git", filepath .. ";")
        return gitdir and #gitdir > 0 and #gitdir < #filepath
    end,
    lsp_status = function()
        local buf_ft = api.nvim_buf_get_option(0, "filetype")
        local clients = lsp.get_active_clients()
        if next(clients) == nil then
            return false
        end
        for _, client in ipairs(clients) do
            local filetypes = client.config.filetypes
            if filetypes and fn.index(filetypes, buf_ft) ~= -1 then
                return true
            end
        end
        return false
    end,
}

local plugins = {
    mode_inactive = {
        function()
            return "INACTIVE"
        end,
        color = "LualineFilenameInactive",
    },
    filename = {
        function()
            if opt.bo.filetype == "help" then
                return "HELP - " .. fn.expand("%:t:r")
            end

            local is_modified = api.nvim_buf_get_option(api.nvim_get_current_buf(), "modified")
            local filename = fn.fnamemodify(fn.expand("%"), ":~:.")
            local fg = colors.fg
            local bg = colors.bg_statusline
            local gui = "NONE"

            if is_modified then
                fg = colors.yellow
                filename = filename .. " "
                gui = "bold"
            end

            cmd(string.format("hi LualineFilename guifg=%s guibg=%s gui=%s", fg, bg, gui))

            return filename
        end,
        color = "LualineFilename",
    },

    diagnostics = {
        "diagnostics",
        sources = { "nvim_lsp" },
        color_error = colors.red,
        color_warn = colors.yellow,
        color_info = colors.cyan,
        color_hint = colors.magenta,
        sections = { "error", "warn", "info", "hint" },
        symbols = { error = " ", warn = " ", info = " ", hint = "H" },
    },

    branch = {
        "branch",
        icon = "",
        condition = conditions.check_git_workspace,
        color = { fg = colors.orange },
    },

    diff = {
        "diff",
        symbols = { added = " ", modified = " ", removed = " " },
        color_added = colors.green,
        color_modified = colors.orange,
        color_removed = colors.red,
        condition = conditions.hide_in_width,
    },
    metals = {
        function()
            return vim.g["metals_status"] or ""
        end,
        cond = function()
            local filetype = vim.bo.filetype
            return filetype == "scala" or filetype == "sbt"
        end,
    },
    lsp_server = {
        function()
            if conditions.lsp_status() then
                return ""
            end
            return ""
        end,
        color = { fg = colors.white },
        -- don't know why this condition doesn't work, but the above does
        -- condition = conditions.lsp_status
    },

    -- Add components to right sections
    filetype = {
        "bo:filetype",
        upper = true,
    },

    encoding = {
        "o:encoding", -- option component same as &encoding in viml
        upper = true,
        condition = conditions.hide_in_width,
        color = { fg = colors.green },
    },
}

-- Config
local config = {
    options = {
        theme = "kanagawa",
        component_separators = "",
        -- component_separators = {left = '', right = ''},
        -- section_separators = {left = '', right = ''},
        section_separators = { left = "", right = "" },
    },
    sections = {
        lualine_a = {
            "mode",
        },
        lualine_b = {},
        lualine_c = {
            plugins.filename,
            { gps.get_location, cond = gps.is_available },
        },
        lualine_x = {
            lualine_orgmode,
            plugins.branch,
            plugins.diff,
            plugins.lsp_server,
            plugins.metals,
            plugins.filetype,
            plugins.encoding,
        },
        lualine_y = {},
        lualine_z = {
            "progress",
            "location",
        },
    },
    inactive_sections = {
        -- these are to remove the defaults
        lualine_a = {
            plugins.mode_inactive,
        },
        lualine_b = {},
        lualine_c = {
            plugins.filename,
        },
        lualine_x = {},
        lualine_y = {},
        lualine_z = {},
    },
    disabled_filetypes = {
        "HELP",
    },
    extensions = {
        "quickfix",
        "nvim-tree",
    },
}

-- display character code under cursor
-- @todo make this look nice, and maybe add unicode support
-- ins_right_color {
--   function()
--     local win = api.nvim_get_current_win()
--     local col = api.nvim_win_get_cursor(win)[2]
--     local char = api.nvim_get_current_line():sub(col+1,col+1)
--     return '['..(string.byte(char, 1, 2) or 'n/a')..']'
--   end,
-- }

-- Now don't forget to initialize lualine
lualine.setup(config)
