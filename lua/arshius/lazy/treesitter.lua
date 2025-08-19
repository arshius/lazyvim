return {
	{
		"nvim-treesitter/nvim-treesitter",
		config = function()
			require("nvim-treesitter.configs").setup({
				-- A list of parser names, or "all"
				ensure_installed = {
					"vimdoc", "javascript", "typescript", "c", "lua", "rust",
					"jsdoc", "bash", "go", "markdown", "markdown_inline",
					"html", "json", "css", "regex", "yaml", "angular", "zig"
				},
			})
		end,
	},
}
