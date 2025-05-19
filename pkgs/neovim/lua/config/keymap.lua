-- leader key
vim.g.mapleader = " "

local visualStudioCode = require("vscode")
if vim.g.vscode then
	-- vscode

	vim.keymap.set({ "n", "v" }, "<leader>rn", function()
		visualStudioCode.with_insert(function()
			visualStudioCode.action("editor.action.rename")
		end)
	end, { desc = "VS Code Rename Symbol" })
else
	-- normal neovim
end
