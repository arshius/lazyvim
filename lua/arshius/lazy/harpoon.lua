return {
	{
		"theprimeagen/harpoon",
		branch = "harpoon2",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local harpoon = require("harpoon")
			harpoon:setup()

			vim.keymap.set("n", "<leader>A", function()
				harpoon:list():prepend()
			end)
			vim.keymap.set("n", "<leader>a", function()
				harpoon:list():add()
			end)
			vim.keymap.set("n", "<C-e>", function()
				harpoon.ui:toggle_quick_menu(harpoon:list())
			end)

			vim.keymap.set("n", "<C-Insert>", function()
				harpoon:list():select(1)
			end)
			vim.keymap.set("n", "<C-End>", function()
				harpoon:list():select(2)
			end)
			vim.keymap.set("n", "<C-Down>", function()
				harpoon:list():select(3)
			end)
			vim.keymap.set("n", "<C-PageDown>", function()
				harpoon:list():select(4)
			end)

			vim.keymap.set("n", "<leader><C-Insert>", function()
				harpoon:list():replace_at(1)
			end)
			vim.keymap.set("n", "<leader><C-End>", function()
				harpoon:list():replace_at(2)
			end)
			vim.keymap.set("n", "<leader><C-Down>", function()
				harpoon:list():replace_at(3)
			end)
			vim.keymap.set("n", "<leader><C-PageDown>", function()
				harpoon:list():replace_at(4)
			end)
		end,
	}
}
