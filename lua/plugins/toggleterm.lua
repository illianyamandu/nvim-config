return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup({
			size = 15, -- altura se horizontal, largura se vertical
			open_mapping = [[<C-\>]], -- atalho para abrir/fechar terminal
			shade_terminals = true,
			shading_factor = 2,
			direction = "horizontal", -- opções: 'vertical' | 'horizontal' | 'float'
	  float_opts = {
		  border = "curved",
	  },
  })  end,
}
