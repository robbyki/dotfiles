require("lightspeed").setup({
    exit_after_idle_msecs = { unlabeled = nil, labeled = nil },
    substitute_chars = {
        [" "] = "␣",
        ["\r"] = "¬",
        ["\t"] = "»",
    },
})
