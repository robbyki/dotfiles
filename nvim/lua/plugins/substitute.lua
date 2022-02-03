require("substitute").setup({
    on_substitute = function(_)
        vim.fn["yoink#startUndoRepeatSwap"]()
    end,
})
