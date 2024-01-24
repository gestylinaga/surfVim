-- ┌─┐┬ ┬┬─┐┌─┐╦  ╦┬┌┬┐ keymaps
-- └─┐│ │├┬┘├┤ ╚╗╔╝││││ aka remaps
-- └─┘└─┘┴└─└   ╚╝ ┴┴ ┴ by gestyLinaga

local keymap = vim.keymap

-- Basics --
-- New File
keymap.set("n", "<leader>nf", "<cmd>ene | startinsert<CR>") -- New File in insert mode
-- Quit all
keymap.set("n", "<leader>qq", "<cmd>qa<CR>") -- quit all buffers

-- Splits
keymap.set("n", "<leader>vs", "<cmd>vs<CR>") -- vertical split
keymap.set("n", "<leader>hs", "<cmd>split<CR>") -- horizontal split
-- Tabs
keymap.set("n", "<C-Home>", "<cmd>tabnew<CR>") -- new tab
keymap.set("n", "<C-End>", "<cmd>tabc<CR>") -- close tab
-- Window focus switching
keymap.set("n", "<leader><Tab>", "<C-w>w") -- space-tab to switch focus
keymap.set("n", "<C-j>", "<C-W>j") -- switch focus down
keymap.set("n", "<C-Down>", "<C-W>j") -- switch focus down
keymap.set("n", "<C-k>", "<C-W>k") -- switch focus up
keymap.set("n", "<C-Up>", "<C-W>k") -- switch focus up
keymap.set("n", "<C-h>", "<C-W>h") -- switch focus left
keymap.set("n", "<C-Left>", "<C-W>h") -- switch focus left
keymap.set("n", "<C-l>", "<C-W>l") -- switch focus right
keymap.set("n", "<C-Right>", "<C-W>l") -- switch focus right

-- For Plugins --
-- Lazy
keymap.set("n", "<leader>lz", "<cmd>Lazy<CR>") -- find files
