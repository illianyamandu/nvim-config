return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    opts = {
        ensure_installed = {
            "c",
            "lua",
            "vim",
            "vimdoc",
            "query",
            "markdown",
            "markdown_inline",
            "php",
        },
        highlight = { enable = true },
        indent = { enable = true },
    },
    config = function()
        require("nvim-treesitter.install").compilers = { "zig" }

        local config = require("nvim-treesitter.configs")
        config.setup({
            -- ensure_installed = { "lua", "php", "c", "rust" },
            auto_install = true,
            highlight = { enable = true },
            indent = { enable = true },
        })
    end,
}
