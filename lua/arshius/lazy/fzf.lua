return {
    {
        "ibhagwan/fzf-lua",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require('fzf-lua').setup({})
			local builtin = require('fzf-lua')
			vim.keymap.set('n', '<leader>lf',  builtin.files, { desc = 'Find Files' })
			vim.keymap.set('n', '<C-l>', builtin.git_files, {})
			vim.keymap.set('n', '<leader>lws', builtin.grep_cword)
			vim.keymap.set('n', '<leader>lWs', builtin.grep_cWORD)
			vim.keymap.set('n', '<leader>ls',  builtin.grep)
            vim.keymap.set('n', '<leader>lls', builtin.live_grep)
            vim.keymap.set('n', '<leader>llss', builtin.live_grep_resume)
        end
    },

    --{
    --    "nvim-tree/nvim-web-devicons",
    --    opts = {},
    --},
}

