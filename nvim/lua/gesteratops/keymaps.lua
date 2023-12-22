-- ┌─┐┌─┐┌─┐┌┬┐┌─┐┬─┐┌─┐┌┬┐┌─┐┌─┐┌─┐ surfVim
-- │ ┬├┤ └─┐ │ ├┤ ├┬┘├─┤ │ │ │├─┘└─┐ neovim
-- └─┘└─┘└─┘ ┴ └─┘┴└─┴ ┴ ┴ └─┘┴  └─┘ keymaps
vim.g.mapleader = " "

local keymap = vim.keymap
--
-- Basics --
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
-- Harpoon (project bookmarks)
keymap.set("n", "<leader>h", function() require("harpoon.ui").toggle_quick_menu() end, silent ) -- harpoon quick menu
keymap.set("n", "<leader>ht", function() require("harpoon.mark").add_file() end, silent) -- add harpoon bookmark "harpoon this"
keymap.set("n", "<C-u>", function() require("harpoon.ui").nav_file(1) end, silent) -- bookmark 1
keymap.set("n", "<C-i>", function() require("harpoon.ui").nav_file(2) end, silent) -- bookmark 2
keymap.set("n", "<C-o>", function() require("harpoon.ui").nav_file(3) end, silent) -- bookmark 3
keymap.set("n", "<C-p>", function() require("harpoon.ui").nav_file(4) end, silent) -- bookmark 4
keymap.set("n", "<C-y>", function() require("harpoon.ui").nav_file(5) end, silent) -- bookmark 5 "y do you need this many?"

-- Telescope (fuzzy finder)
--keymap.set("<leader>f", "<cmd>Telescope<CR>") -- Telescope
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

-- Dashboard (start screen)
keymap.set("n", "<leader>e", "<cmd>DashboardNewFile<CR>") -- new empty file

-- Code runner
keymap.set("n", "<leader>rr", "<cmd>RunCode<CR>") -- code runner

-- Markdown-Preview (live .md editing)
keymap.set("n", "<leader>mm", "<cmd>MarkdownPreview<CR>") -- live edit markdown
keymap.set("n", "<leader>mo", "<cmd>MarkdownPreviewToggle<CR>") -- open/toggle preview
keymap.set("n", "<leader>mq", "<cmd>MarkdownPreviewStop<CR>") -- quit/stop preview

-- UndoTree (undo history tree/branches)
--keymap.set("n", "<C-u>", "<cmd>UndotreeToggle<CR>") -- toggle UndoTree
