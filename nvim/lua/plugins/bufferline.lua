require("bufferline").setup({
  options = {
    view = "multiwindow", -- "multiwindow" | "default"
    numbers = "ordinal", -- "none" | "ordinal" | "buffer_id"
    buffer_close_icon = "",
    modified_icon = "●",
    close_icon = "",
    left_trunc_marker = "",
    right_trunc_marker = "",
    max_name_length = 18,
    tab_size = 18,
    show_buffer_close_icons = true,
    -- can also be a table containing 2 custom separators
    -- [focused and unfocused]. eg: { '|', '|' }
    separator_style = "thin", -- "slant" | "thick" | "thin" | { 'any', 'any' }
    enforce_regular_tabs = false,
    always_show_bufferline = true,
    sort_by = "extension",
  },
})
