-- leader key
vim.g.mapleader = " "

if vim.g.vscode then
	-- vscode

	vim.keymap.set(
		{ "n", "v" },
		"<leader>f",
		"<cmd>lua vim.lsp.buf.format({ async = true })<CR>",
		{ desc = "Format" }
	)
else
	-- normal neovim
end
