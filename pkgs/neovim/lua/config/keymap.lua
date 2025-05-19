-- leader key
vim.g.mapleader = " "

local vscode = require("vscode")
if vim.g.vscode then
	-- vscode

	vim.keymap.set({ "n", "v" }, "<leader>rn", function()
		vscode.with_insert(function()
			vscode.action("editor.action.rename")
		end)
	end, { desc = "VS Code Rename Symbol" })
else
	-- normal neovim
end
