-- leader key
vim.g.mapleader = " "

if vim.g.vscode then
	-- vscode
	local vscode = require("vscode")

	vim.keymap.set({ "n", "v" }, "<leader>rn", function()
		vscode.with_insert(function()
			vscode.action("editor.action.rename")
		end)
	end, { desc = "VS Code Rename Symbol" })
else
	-- normal neovim
end
