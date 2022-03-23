-- following options are the default
-- each of these are documented in `:help nvim-tree.OPTION_NAME`
vim.g.nvim_tree_icons = {
    default = "",
    symlink = "",
    git = {
        unstaged = "M",
        staged = "S",
        unmerged = "",
        renamed = "➜",
        deleted = "D",
        untracked = "?", -- U
        ignored = "◌",
    },
    --[[ git = {
		unstaged = "!",
		staged = "✓",
		unmerged = "»",
		renamed = "➜",
		deleted = "✘",
		untracked = "?",
		ignored = "◌",
	}, ]]
    folder = {
        arrow_open = "",
        arrow_closed = "",
        default = "",
        open = "",
        empty = "",
        empty_open = "",
        symlink = "",
        symlink_open = "",
    },
}

local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
    return
end

local config_status_ok, nvim_tree_config = pcall(require, "nvim-tree.config")
if not config_status_ok then
    return
end

local tree_cb = nvim_tree_config.nvim_tree_callback

nvim_tree.setup({
    disable_netrw = true,
    hijack_netrw = true,
    open_on_setup = false,
    ignore_ft_on_setup = {
        "startify",
        "dashboard",
        "alpha",
    },
    auto_close = true,
    open_on_tab = false,
    hijack_cursor = false,
    update_cwd = true,
    update_to_buf_dir = {
        enable = true,
        auto_open = true,
    },
    diagnostics = {
        enable = true,
        icons = {
            hint = "",
            info = "",
            warning = "",
            error = "",
        },
    },
    update_focused_file = {
        enable = true,
        update_cwd = true,
        ignore_list = {},
    },
    system_open = {
        cmd = nil,
        args = {},
    },
    filters = {
        dotfiles = false,
        custom = {},
    },
    git = {
        enable = true,
        ignore = true,
        timeout = 500,
    },
    view = {
        width = 30,
        height = 30,
        hide_root_folder = false,
        side = "right",
        auto_resize = true,
        mappings = {
            custom_only = false,
            list = {
                { key = { "l", "<CR>", "o" }, cb = tree_cb("edit") },
                { key = "h", cb = tree_cb("close_node") },
                { key = "v", cb = tree_cb("vsplit") },
            },
        },
        number = false,
        relativenumber = false,
    },
    trash = {
        cmd = "trash",
        require_confirm = true,
    },
    quit_on_open = 0,
    git_hl = 1,
    disable_window_picker = 0,
    root_folder_modifier = ":t",
    show_icons = {
        git = 1,
        folders = 1,
        files = 1,
        folder_arrows = 1,
        tree_width = 30,
    },
})
-- local nvim_tree = require("nvim-tree")
--
-- nvim_tree.setup({
--     -- disables netrw completely
--     disable_netrw = true,
--     -- hijack netrw window on startup
--     hijack_netrw = true,
--     -- open the tree when running this setup function
--     open_on_setup = false,
--     -- will not open on setup if the filetype is in this list
--     ignore_ft_on_setup = {},
--     -- closes neovim automatically when the tree is the last **WINDOW** in the view
--     auto_close = false,
--     -- opens the tree when changing/opening a new tab if the tree wasn't previously opened
--     open_on_tab = true,
--     -- hijacks new directory buffers when they are opened.
--     update_to_buf_dir = {
--         -- enable the feature
--         enable = true,
--         -- allow to open the tree if it was previously closed
--         auto_open = true,
--     },
--
--     -- hijack the cursor in the tree to put it at the start of the filename
--     hijack_cursor = false,
--     -- updates the root directory of the tree on `DirChanged` (when your run `:cd` usually)
--     update_cwd = false,
--     -- show lsp diagnostics in the signcolumn
--     diagnostics = {
--         enable = false,
--         icons = {
--             hint = "",
--             info = "",
--             warning = "",
--             error = "",
--         },
--     },
--
--     -- update the focused file on `BufEnter`, un-collapses the folders recursively until it finds the file
--     update_focused_file = {
--         -- enables the feature
--         enable = true,
--         -- update the root directory of the tree to the one of the folder containing the file if the file is not under the current root directory
--         -- only relevant when `update_focused_file.enable` is true
--         update_cwd = true,
--         -- list of buffer names / filetypes that will not update the cwd if the file isn't found under the current root directory
--         -- only relevant when `update_focused_file.update_cwd` is true and `update_focused_file.enable` is true
--         ignore_list = {},
--     },
--
--     -- configuration options for the system open command (`s` in the tree by default)
--     system_open = {
--         -- the command to run this, leaving nil should work in most cases
--         cmd = nil,
--         -- the command arguments as a list
--         args = {},
--     },
--
--     view = {
--         -- width of the window, can be either a number (columns) or a string in `%`, for left or right side placement
--         width = 30,
--         -- height of the window, can be either a number (columns) or a string in `%`, for top or bottom side placement
--         height = 30,
--         -- side of the tree, can be one of 'left' | 'right' | 'top' | 'bottom'
--         side = "left",
--         -- if true the tree will resize itself after opening a file
--         auto_resize = true,
--     },
-- })
--
-- -- vim.api.nvim_set_keymap('n', '<c-n>', ':NvimTreeToggle<cr>', { noremap = true, silent = true })
