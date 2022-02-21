require("toggleterm").setup({
    size = function(term)
        if term.direction == "horizontal" then
            return 15
        elseif term.direction == "vertical" then
            return vim.o.columns * 0.4
        end
    end,
    open_mapping = [[<c-t>]],
    open_mapping = [[<c-t>]],
    hide_numbers = true,
    shade_filetypes = {},
    shade_terminals = true,
    -- shading_factor = 1,
    direction = "float",
    -- shell = 'flatpak-spawn --host --env=TERM="$TERM" zsh',
    float_opts = {
        border = "curved",
        height = 10,
        width = 100,
    },
    winblend = 20,
})
