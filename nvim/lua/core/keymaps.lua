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

-- Harpoon (project bookmarks)
-- moved to `lua/plugins/harpoon.lua`; see file for keymaps

-- Telescope (fuzzy finder)
keymap.set("n", "<leader>ft", "<cmd>Telescope<CR>") -- Telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>") -- find files
keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<CR>") -- live grep
keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>") -- recent files
keymap.set("n", "<leader>cs", "<cmd>Telescope colorscheme<cr>") -- theme switcher
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- telescope help
keymap.set("n", "<leader>fc", "<cmd>Telescope commands<CR>") -- lists available commands

-- Nvim-Tree (file explorer)
keymap.set("n", "<leader>tt", "<cmd>NvimTreeToggle<CR>") -- toggle open/close
keymap.set("n", "<leader>to", "<cmd>NvimTreeOpen<CR>") -- open file tree
keymap.set("n", "<leader>tq", "<cmd>NvimTreeClose<CR>") -- close tree

-- Code runner
-- moved to `lua/plugins/code_runner.lua`

-- Markdown-Preview (live .md editing)
keymap.set("n", "<leader>mm", "<cmd>MarkdownPreview<CR>") -- live edit markdown
keymap.set("n", "<leader>mo", "<cmd>MarkdownPreviewToggle<CR>") -- open/toggle preview
keymap.set("n", "<leader>mq", "<cmd>MarkdownPreviewStop<CR>") -- quit/stop preview

-- Glow -- Popup markdown preview (Windows and WSL only)
keymap.set("n", "<leader>gg", "<cmd>Glow<CR>") -- open glow popup

-- UndoTree (undo history tree/branches)
--keymap.set("n", "<C-u>", "<cmd>UndotreeToggle<CR>") -- toggle UndoTree
