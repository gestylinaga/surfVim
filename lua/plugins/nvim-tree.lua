-- Nvim-Tree file explorer from: kyazdani42/nvim-tree.lua
-- for docs:
-- https://github.com/kyazdani42/nvim-tree.lua/blob/master/doc/nvim-tree-lua.txt
return  {
  "kyazdani42/nvim-tree.lua",
  cmd = {
    "NvimTreeToggle",
  },
  keys = {
    {"<leader>tt", ":NvimTreeToggle<CR>", desc = "Nvim-tree toggle"},
    {"<leader>to", ":NvimTreeOpen<CR>", desc = "Nvim-tree focus"},
    {"<leader>tq", ":NvimTreeClose<CR>", desc = "Nvim-tree close"},
  },
  dependencies = {
    "nvim-tree/nvim-web-devicons"
  },
  opts = {
    filters = {
      dotfiles = false
    },
    view = {
      adaptive_size = true,
      width = 50,
      side = "right",
      preserve_window_proportions = true,
      number = true,
      relativenumber = true,
    },
    actions = {
      open_file = {
        quit_on_open = true,
        resize_window = true,
      }
    }
  },
}
