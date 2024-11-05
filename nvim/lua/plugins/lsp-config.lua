return {
	-- Installing LSP server on our system - mason + lsp-config
	-- Install mason
	{
		"williamboman/mason.nvim",
		config = true
	},
	{
		"williamboman/mason-lspconfig.nvim",
		opts = {
			ensure_installed = { "lua_ls", "pyright" }
		}
	},
	-- Language servers installed
	-- Ensuring integration with neovim next - nvim-lspconfig
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({})
			lspconfig.pyright.setup({})
			-- description at :h vim.lsp.buf
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition,{}) 
			--  here {} is for empty ops
			vim.keymap.set({'n','v'}, "<leader>ca", vim.lsp.buf.code_action, {}) 
		end

	}
}
