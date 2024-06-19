return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		require("bufferline").setup({
			options = {
				diagnostics = "nvim_lsp",
				show_buffer_close_icons = false,
				show_close_icon = false,
			},
		})

		vim.keymap.set("n", "<Tab>", "<cmd>BufferLineCycleNext<cr>", { desc = "Next tab" })
		vim.keymap.set("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<cr>", { desc = "Previous tab" })
		vim.keymap.set("n", "<leader>x", "<cmd>bd<cr>", { desc = "Delete buffer" })
	end,
}
