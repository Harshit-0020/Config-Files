return {
	'nvim-telescope/telescope.nvim', tag = '0.1.8',
	dependencies = { 
		'nvim-lua/plenary.nvim',
	"nvim-telescope/telescope-file-browser.nvim",
	"nvim-telescope/telescope-ui-select.nvim"
},
	config = function()
		local builtin = require('telescope.builtin')
		require("telescope").load_extension("file_browser")
		require("telescope").load_extension("ui-select")
		vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
		vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
		vim.keymap.set('n', '<space>fb', builtin.buffers, { desc = 'Telescope buffers' })
		vim.keymap.set('n', '<space>fh', builtin.help_tags, { desc = 'Telescope help tags' })
		vim.keymap.set("n", "<leader>fb", ":Telescope file_browser path=%:p:h select_buffer=true<CR>")
	end
}
