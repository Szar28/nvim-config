return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		{ "mason-org/mason.nvim", opts = {} },
		{ "mason-org/mason-lspconfig.nvim" },
	},
	config = function()
		require("mason-lspconfig").setup({
			ensure_installed = {
				"lua_ls",
				"pyright",
				"ts_ls",
				"clangd",
			},
			automatic_installation = true,
		})

		vim.api.nvim_create_autocmd("LspAttach", {
			group = vim.api.nvim_create_augroup("UserLspAttach", { clear = true }),
			callback = function(event)
				local map = function(keys, fn, desc)
					vim.keymap.set("n", keys, fn, { buffer = event.buf, desc = "LSP: " .. desc })
				end
				map("gd", vim.lsp.buf.definition, "Definition")
				map("gr", vim.lsp.buf.references, "References")
				map("gI", vim.lsp.buf.implementation, "Implementation")
				map("K", vim.lsp.buf.hover, "Hover")
				map("<leader>rn", vim.lsp.buf.rename, "Rename")
				map("<leader>ca", vim.lsp.buf.code_action, "Code action")
			end,
		})
	end,
}
