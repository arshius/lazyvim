require("arshius.keymaps")
require("arshius.lazy_init")
print("arshius init.lua loaded successfully")

local augroup = vim.api.nvim_create_augroup
local ArshiusGroup = augroup('Arshius', {})

local autocmd = vim.api.nvim_create_autocmd

autocmd('BufEnter', {
	group = ArshiusGroup,
	callback = function()
		if vim.bo.filetype == "zig" then
			pcall(vim.cmd.colorscheme, "tokyodark")
			print("trigger autocmd zig")
		else
			pcall(vim.cmd.colorscheme, "rose-pine-moon")
			print("trigger autocmd")
		end
	end
})
