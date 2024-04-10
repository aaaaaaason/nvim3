local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "
vim.wo.relativenumber = true
vim.o.termguicolors = true

vim.g.netrw_keepdir = 0
vim.g.netrw_banner = 0
vim.g.netrw_liststyle = 3
vim.g.netrw_preview = 1
vim.g.loaded_netrwPlugin = 1
vim.g.loaded_netrw = 1

local opt = vim.opt
opt.compatible = false
opt.hlsearch = true
opt.incsearch = true
opt.tabstop = 4
opt.softtabstop = 4
opt.expandtab = true
opt.shiftwidth = 4
opt.autoindent = true
opt.swapfile = false
opt.cursorline = true
opt.mouse = "a"
opt.clipboard = "unnamedplus"
opt.splitbelow = true
opt.splitright = true

vim.keymap.set({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", { silent = true, noremap = true })
vim.keymap.set("n", "[q", vim.cmd.cprev, { silent = true, noremap = true, desc = "Prev quickfix item" })
vim.keymap.set("n", "]q", vim.cmd.cnext, { silent = true, noremap = true, desc = "Next quickfix item" })
vim.keymap.set({ "i", "x", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { silent = true, noremap = true })
vim.keymap.set("n", "<leader>q", "<cmd>qa!<cr>", { silent = true, noremap = true, desc = "quit" })
vim.keymap.set("t", "<esc><esc>", "<c-\\><c-n>", { silent = true, noremap = true, desc = "enter normal mode" })

require("lazy").setup("plugins")
