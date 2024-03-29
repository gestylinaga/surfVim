-- ┌─┐┬ ┬┬─┐┌─┐╦  ╦┬┌┬┐ settings
-- └─┐│ │├┬┘├┤ ╚╗╔╝││││ global settings
-- └─┘└─┘┴└─└   ╚╝ ┴┴ ┴ by gestyLinaga

-- basics --
vim.g.mapleader = ' ' -- leader key: 'space'
vim.opt.guicursor = '' -- no gui cursor

-- sets numbers --
vim.opt.nu = true
vim.opt.relativenumber = true

-- tab behavior --
vim.opt.tabstop = 2 -- number of spaces in tab character
vim.opt.softtabstop = 2 -- number of spaces to insert 
vim.opt.shiftwidth = 2 -- size of an indent
vim.opt.expandtab = true -- inserts spaces instead of tab character when tab hit
vim.opt.smartindent = true -- tab key inserts characters(spaces) for assumed indents

-- / search function --
vim.opt.incsearch = true
vim.opt.hlsearch = false
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- display settings --
vim.opt.wrap = false
vim.opt.scrolloff=10

-- backups --
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false

-- Markdown Preview --
vim.g.mkdp_browser = 'firefox'

-- 80 column line --
vim.opt.colorcolumn = '80'

-- Astro config --
vim.g.astro_typescript = 'enable'
