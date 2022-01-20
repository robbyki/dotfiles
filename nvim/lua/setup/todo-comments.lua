require("todo-comments").setup {
    keywords = {
        TODO = { icon = " ", color = "error" },
    },
    highlight = {
        keyword = "bg",
        pattern = [[.*<(KEYWORDS)\s*]],
    },
    search = {
        pattern = [[\b(KEYWORDS)]],
    },
}
