-- ┌─┐┌─┐┌─┐┌┬┐┌─┐┬─┐┌─┐┌┬┐┌─┐┌─┐┌─┐ surfVim
-- │ ┬├┤ └─┐ │ ├┤ ├┬┘├─┤ │ │ │├─┘└─┐ neovim
-- └─┘└─┘└─┘ ┴ └─┘┴└─┴ ┴ ┴ └─┘┴  └─┘ remaps

-- imports basic keymaps (and vim<->lua remap function)
local nnoremap = require("gesteratops.keymap").nnoremap

-- Basics --
-- Splits
nnoremap("<leader>vs", "<cmd>vs<CR>") -- vertical split
nnoremap("<leader>hs", "<cmd>split<CR>") -- horizontal split
-- Tabs
nnoremap("<C-Home>", "<cmd>tabnew<CR>") -- new tab
nnoremap("<C-End>", "<cmd>tabc<CR>") -- close tab
-- Window focus switching
nnoremap("<leader><Tab>", "<C-w>w") -- space-tab to switch focus
nnoremap("<C-j>", "<C-W>j") -- switch focus down
nnoremap("<C-Down>", "<C-W>j") -- switch focus down
nnoremap("<C-k>", "<C-W>k") -- switch focus up
nnoremap("<C-Up>", "<C-W>k") -- switch focus up
nnoremap("<C-h>", "<C-W>h") -- switch focus left
nnoremap("<C-Left>", "<C-W>h") -- switch focus left
nnoremap("<C-l>", "<C-W>l") -- switch focus right
nnoremap("<C-Right>", "<C-W>l") -- switch focus right

-- For Plugins --
-- Harpoon (project bookmarks)
nnoremap("<leader>h", function() require("harpoon.ui").toggle_quick_menu() end, silent ) -- harpoon quick menu
nnoremap("<leader>ht", function() require("harpoon.mark").add_file() end, silent) -- add harpoon bookmark "harpoon this"
nnoremap("<C-u>", function() require("harpoon.ui").nav_file(1) end, silent) -- bookmark 1
nnoremap("<C-i>", function() require("harpoon.ui").nav_file(2) end, silent) -- bookmark 2
nnoremap("<C-o>", function() require("harpoon.ui").nav_file(3) end, silent) -- bookmark 3
nnoremap("<C-p>", function() require("harpoon.ui").nav_file(4) end, silent) -- bookmark 4
nnoremap("<C-y>", function() require("harpoon.ui").nav_file(5) end, silent) -- bookmark 5 "y do you need this many?"

-- Telescope (fuzzy finder)
--nnoremap("<leader>f", "<cmd>Telescope<CR>") -- Telescope
nnoremap("<leader>ff", "<cmd>Telescope find_files<CR>") -- find files
nnoremap("<leader>fg", "<cmd>Telescope live_grep<CR>") -- live grep
nnoremap ("<leader>fr", "<cmd>Telescope oldfiles<cr>") -- recent files
nnoremap ("<leader>cs", "<cmd>Telescope colorscheme<cr>") -- theme switcher
nnoremap ("<leader>fh", "<cmd>Telescope help_tags<cr>") -- telescope help
nnoremap("<leader>fc", "<cmd>Telescope commands<CR>") -- lists available commands

-- Nvim-Tree (file explorer)
nnoremap("<leader>tt", "<cmd>NvimTreeToggle<CR>") -- toggle open/close
nnoremap("<leader>to", "<cmd>NvimTreeOpen<CR>") -- open file tree
nnoremap("<leader>tq", "<cmd>NvimTreeClose<CR>") -- close tree

-- Dashboard (start screen)
nnoremap("<leader>e", "<cmd>DashboardNewFile<CR>") -- new empty file

-- Code runner
nnoremap("<leader>rr", "<cmd>RunCode<CR>") -- code runner

-- Glow (popup md preview) - doesn't work on Windows
nnoremap("<leader>gg", "<cmd>Glow<CR>") -- Markdown Preview using 'glow'

-- Markdown-Preview (live .md editing)
nnoremap("<leader>mm", "<cmd>MarkdownPreview<CR>") -- live edit markdown
nnoremap("<leader>mo", "<cmd>MarkdownPreviewToggle<CR>") -- open/toggle preview
nnoremap("<leader>mq", "<cmd>MarkdownPreviewStop<CR>") -- quit/stop preview

-- UndoTree (undo history tree/branches)
--nnoremap("<C-u>", "<cmd>UndotreeToggle<CR>") -- toggle UndoTree
