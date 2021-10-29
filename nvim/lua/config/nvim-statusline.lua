local M = {}
local ll = require("lualine")
local lsp_status = require("lsp-status")

-- Returns a single character representing the current Vim mode.
--
-- See ':help mode()' for context.
local function mode_single_character()
    local mode_strings = {
        n = "N",
        i = "I",
        v = "V",
        V = "V",
        [""] = "V", -- visual block
        c = "C",
        s = "S",
        S = "S",
        [""] = "S", -- select block
        R = "R",
        r = "P",
        ["!"] = "!",
        t = "T",
    }
    local default_string = "?"
    return mode_strings[vim.fn.mode()] or default_string
end

-- Returns true if the buffer is connected to at least one LSP client
local function is_lsp_active()
    return #vim.lsp.buf_get_clients() > 0
end

M.setup = function()
    local ll_options = {
        section_separators = { left = "", right = "" },
        component_separators = { left = "", right = "" },
        theme = "auto",
        disabled_filetypes = { "packer" },
    }

    local ll_sections = {
        lualine_a = { mode_single_character },
        lualine_b = {
            -- Prefix file name with file icon
            {
                "filetype",
                icon_only = true,
                separator = "",
                padding = { left = 1, right = 0 },
            },
            {
                "filename",
                path = 0,
            },
        },
        lualine_c = {
            {
                "b:gitsigns_head",
                icon = "",
            },
            {
                "b:gitsigns_status",
            },
        },
        lualine_x = {
            -- Display nvim-metals status for Scala files
            {
                function()
                    return vim.g["metals_status"] or ""
                end,
                cond = function()
                    local filetype = vim.bo.filetype
                    return filetype == "scala" or filetype == "sbt"
                end,
            },
            -- Display LSP status
            {
                lsp_status.status_progress,
                cond = is_lsp_active,
            },
            -- Display current function from LSP
            {
                function()
                    return vim.b.lsp_current_function or ""
                end,
                cond = is_lsp_active,
            },
            -- LSP diagnostics
            {
                "diagnostics",
                sources = { "nvim_lsp" },
            },
        },
        lualine_y = {
            {
                "filetype",
                icons_enabled = false,
            },
        },
        lualine_z = {
            -- Display file format for non-unix files
            {
                "fileformat",
                cond = function()
                    return vim.bo.fileformat ~= "unix"
                end,
            },
            "progress",
            "location",
        },
    }

    local ll_inactive_sections = {
        lualine_c = { "filename" },
        lualine_x = { "location" },
    }

    ll.setup({
        options = ll_options,
        sections = ll_sections,
        inactive_sections = ll_inactive_sections,
    })
end

return M
