return {
	'nvim-telescope/telescope.nvim', tag = '0.1.5',
	dependencies = { 
        'nvim-lua/plenary.nvim', 
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make'},
        'nvim-tree/nvim-web-devicons',
    },
	config = function()
        local telescope = require("telescope")
		local builtin = require('telescope.builtin')

		require("telescope").setup()
		
telescope.load_extension("fzf")

        local keymap = vim.keymap

        keymap.set('n', '<leader>ff', builtin.find_files, {})
        keymap.set('n', '<leader>fr', builtin.oldfiles, {})
		keymap.set('n', '<leader>fg', builtin.live_grep, {})
		keymap.set('n', '<leader>fs', builtin.grep_string, {})
		keymap.set('n', '<leader>fb', builtin.buffers, {})
		keymap.set('n', '<leader>fh', builtin.help_tags, {})
	end,
}
