return {
	"lewis6991/gitsigns.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		require("gitsigns").setup({
			signs = {
				add = { text = "▎" },
				change = { text = "▎" },
				delete = { text = "▁" },
				topdelete = { text = "▔" },
				changedelete = { text = "▎" },
			},
			signcolumn = true, -- mostra os sinais na coluna lateral
			numhl = false, -- pode colorir os números da linha também
			linehl = false,
			watch_gitdir = { interval = 1000 },
			attach_to_untracked = true,
		})

		local keymap = vim.keymap
		keymap.set("n", "<leader>gb", ":Gitsigns toggle_current_line_blame<CR>", { silent = true })
        keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", {})
		keymap.set("n", "<leader>gd", ":Gitsigns diffthis<CR>", {})
	end,
}
