local status_ok, toggleterm = pcall(require, "toggleterm")
if not status_ok then
    return
end

toggleterm.setup({
    size = function(term)
        if term.direction == "horizontal" then
            return 15
        elseif term.direction == "vertical" then
            return vim.o.columns * 0.4
        end
    end,
    -- open_mapping = [[<C-G>]],
    hide_numbers = true,
    shade_filetypes = {},
    shade_terminals = true,
    shading_factor = 1,
    start_in_insert = true,
    insert_mappings = true,
    persist_size = true,
    direction = "float",
    close_on_exit = true,
    shell = vim.o.shell,
    float_opts = {
        border = "curved",
        width = 120,
        height = 40,
        winblend = 0,
        highlights = {
            border = "Normal",
            background = "Normal",
        },
    },
})

local Terminal = require("toggleterm.terminal").Terminal

local lazygit = Terminal:new({
    cmd = "lazygit",
    hidden = true,
    direction = "float",
    close_on_exit = true,
    dir = "git_dir",
    float_opts = {
        border = "curved",
        width = 200,
        height = 100,
        winblend = 1,
    },
})

local htop = Terminal:new({ cmd = "htop", hidden = true })

local k9s = Terminal:new({
    cmd = "k9s",
    hidden = true,
    direction = "float",
    close_on_exit = true,
    float_opts = {
        border = "curved",
        width = 200,
        height = 100,
    },
    -- highlights = {
    --     border = "Normal",
    --     background = "Normal",
    -- },
})

local broot = Terminal:new({
    cmd = "broot",
    hidden = true,
    direction = "float",
    close_on_exit = true,
    -- highlights = {
    --     border = "Normal",
    --     background = "Normal",
    -- },
})

local lf = Terminal:new({
    cmd = "lf",
    hidden = true,
    direction = "float",
    close_on_exit = true,
    -- highlights = {
    --     border = "Normal",
    --     background = "Normal",
    -- },
})

function _LF_TOGGLE()
    lf:toggle()
end

function _BROOT_TOGGLE()
    broot:toggle()
end

function _LAZYGIT_TOGGLE()
    lazygit:toggle()
end

function _HTOP_TOGGLE()
    htop:toggle()
end

function _K9S_TOGGLE()
    k9s:toggle()
end
