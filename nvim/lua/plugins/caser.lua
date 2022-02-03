vim.g.caser_prefix = "gw"

require("which-key").register({
    name = "caser",
    [" "] = "space case",
    ["-"] = "dash-case",
    ["."] = "dot.case",
    ["_"] = "snake_case",
    c = "camelCase",
    k = "kebab-case",
    K = "Title-Kebab-Case",
    m = "MixedCase",
    p = "PascalCase",
    s = "Sentence case",
    t = "Title Case",
    u = "SNAKE_UPPERCASE",
    U = "SNAKE_UPPERCASE",
}, {
    prefix = "<leader>gw",
    mode = "n",
})
