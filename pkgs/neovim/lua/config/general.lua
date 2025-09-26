vim.opt.clipboard = "unnamedplus"

vim.opt.number = true
vim.opt.relativenumber = true

-- Insert に入ったら relativenumber を OFF
vim.api.nvim_create_autocmd("InsertEnter", {
	callback = function()
		vim.opt.relativenumber = false
	end,
})

-- Insert を抜けたら relativenumber を ON
vim.api.nvim_create_autocmd("InsertLeave", {
	callback = function()
		vim.opt.relativenumber = true
	end,
})
