-- ┌─┐┬ ┬┬─┐┌─┐╦  ╦┬┌┬┐ by gestyLinaga
-- └─┐│ │├┬┘├┤ ╚╗╔╝││││ init.lua
-- └─┘└─┘┴└─└   ╚╝ ┴┴ ┴ plugins managed by lazy.nvim

-- lazy.nvim plugin manager bootstrap
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
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

-- "Space" key as leader
vim.g.mapleader = " "

-- disables default netrw file explorer
vim.g.loaded = 1
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- launches lazy.nvim
require("lazy").setup("plugins", {
  change_detection = {
    enabled = true,
    notify = false,
  },
})

-- Modules not automatically loaded by lazy
require("core.keymaps")
require("core.settings")
require("core.autocmds")
