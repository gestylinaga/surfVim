-- Nvim-Tree file explorer
return  {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  cmd = {
    "NvimTreeToggle",
  },
  keys = {
    {"<leader>tt", ":NvimTreeToggle<CR>", desc = "Nvim-tree toggle"},
    {"<leader>to", ":NvimTreeOpen<CR>", desc = "Nvim-tree focus"},
    {"<leader>tq", ":NvimTreeClose<CR>", desc = "Nvim-tree close"},
  },
  config = function()
    require("nvim-tree").setup({
      filters = {
        dotfiles = false
      },
      view = {
        adaptive_size = true,
        width = 30,
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
    })
  end
}
