return {
  "goolord/alpha-nvim",
  lazy = false,
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")
    -- Set header
    dashboard.section.header.val = {
    "                                                                                                    ",
    "                                                                                                    ",
    "    __      __                                                                                      ",
    "    |  \\    /  \\                                                            |  \\                    ",
    "     \\$$\\  /  $$    ______     ______ ____      ______     _______      ____| $$   __    __         ",
    "      \\$$\\/  $$    |      \\   |      \\    \\    |      \\   |       \\    /      $$  |  \\  |  \\        ",
    "       \\$$  $$      \\$$$$$$\\  | $$$$$$\\$$$$\\    \\$$$$$$\\  | $$$$$$$\\  |  $$$$$$$  | $$  | $$        ",
    "        \\$$$$      /      $$  | $$ | $$ | $$   /      $$  | $$  | $$  | $$  | $$  | $$  | $$        ",
    "        | $$      |  $$$$$$$  | $$ | $$ | $$  |  $$$$$$$  | $$  | $$  | $$__| $$  | $$__/ $$        ",
    "        | $$       \\$$    $$  | $$ | $$ | $$   \\$$    $$  | $$  | $$   \\$$    $$   \\$$    $$        ",
    "         \\$$        \\$$$$$$$   \\$$  \\$$  \\$$    \\$$$$$$$   \\$$   \\$$    \\$$$$$$$    \\$$$$$$         ",
    "                                                                                                    ",
    "                                                                                                    ",
    "                                                                                                    ",
    }

    -- Set footer
    local lazy_stats = require("lazy").stats() -- Get Lazy.nvim stats
    dashboard.section.footer.val = {
      "Existem duas formas de fazer uma tarefa, o meu jeito e o jeito errado.",
      " ",
      "                                  - YAMANDÚ, Illian",
      " ",
      "             Plugins loaded: " .. lazy_stats.loaded .. " / " .. lazy_stats.count,
    }

    -- Send config to alpha
    alpha.setup(dashboard.opts)

    -- Disable folding on alpha buffer
    vim.cmd([[
      autocmd FileType alpha setlocal nofoldenable
    ]])
  end,
}
