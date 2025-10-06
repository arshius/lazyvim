return {
	'stevearc/conform.nvim',
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				go = { "gofmt" },
				javascript = { "prettierd" },
				typescript = { "prettierd" },
	--			elixir = { "mix" }
			}
		})
	end
}

