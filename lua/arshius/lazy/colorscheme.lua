function ColorSchemes(color)
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)

	--vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
	--vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
	
	print("changed color scheme")
end

return {	
	{
		"rose-pine/neovim",
		name = "rose-pine",
		config = function()
			require("rose-pine").setup({
				highlight_groups = {
					Normal = { bg = "none" },
					NormalFloat = { bg = "none" },
					TelescopeBorder = { fg = "highlight_high", bg = "none" },
					TelescopeNormal = { bg = "none" },
					TelescopePromptNormal = { bg = "base" },
					TelescopeResultsNormal = { fg = "subtle", bg = "none" },
					TelescopeSelection = { fg = "text", bg = "base" },
					TelescopeSelectionCaret = { fg = "rose", bg = "rose" },
				},
				--	disable_background = true,
			})
			vim.cmd('colorscheme rose-pine')
			--ColorSchemes()
		end
	},
}


